// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;

import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.google.i18n.phonenumbers:
//            PhoneNumberUtil, MetadataManager, NumberParseException, PhoneNumberMatch

final class PhoneNumberMatcher
    implements Iterator
{
    static interface NumberGroupingChecker
    {

        public abstract boolean checkGroups(PhoneNumberUtil phonenumberutil, Phonenumber.PhoneNumber phonenumber, StringBuilder stringbuilder, String as[]);
    }

    private static final class State extends Enum
    {

        private static final State $VALUES[];
        public static final State DONE;
        public static final State NOT_READY;
        public static final State READY;

        public static State valueOf(String s)
        {
            return (State)Enum.valueOf(com/google/i18n/phonenumbers/PhoneNumberMatcher$State, s);
        }

        public static State[] values()
        {
            return (State[])$VALUES.clone();
        }

        static 
        {
            NOT_READY = new State("NOT_READY", 0);
            READY = new State("READY", 1);
            DONE = new State("DONE", 2);
            State astate[] = new State[3];
            astate[0] = NOT_READY;
            astate[1] = READY;
            astate[2] = DONE;
            $VALUES = astate;
        }

        private State(String s, int i)
        {
            super(s, i);
        }
    }


    private static final Pattern INNER_MATCHES[];
    private static final Pattern LEAD_CLASS;
    private static final Pattern MATCHING_BRACKETS;
    private static final Pattern PATTERN;
    private static final Pattern PUB_PAGES = Pattern.compile("\\d{1,5}-+\\d{1,5}\\s{0,4}\\(\\d{1,4}");
    private static final Pattern SLASH_SEPARATED_DATES = Pattern.compile("(?:(?:[0-3]?\\d/[01]?\\d)|(?:[01]?\\d/[0-3]?\\d))/(?:[12]\\d)?\\d{2}");
    private static final Pattern TIME_STAMPS = Pattern.compile("[12]\\d{3}[-/]?[01]\\d[-/]?[0-3]\\d +[0-2]\\d$");
    private static final Pattern TIME_STAMPS_SUFFIX = Pattern.compile(":[0-5]\\d");
    private PhoneNumberMatch lastMatch;
    private final PhoneNumberUtil.Leniency leniency;
    private long maxTries;
    private final PhoneNumberUtil phoneUtil;
    private final String preferredRegion;
    private int searchIndex;
    private State state;
    private final CharSequence text;

    PhoneNumberMatcher(PhoneNumberUtil phonenumberutil, CharSequence charsequence, String s, PhoneNumberUtil.Leniency leniency1, long l)
    {
        state = State.NOT_READY;
        lastMatch = null;
        searchIndex = 0;
        if (phonenumberutil == null || leniency1 == null)
        {
            throw new NullPointerException();
        }
        if (l < 0L)
        {
            throw new IllegalArgumentException();
        }
        phoneUtil = phonenumberutil;
        if (charsequence == null)
        {
            charsequence = "";
        }
        text = charsequence;
        preferredRegion = s;
        leniency = leniency1;
        maxTries = l;
    }

    static boolean allNumberGroupsAreExactlyPresent(PhoneNumberUtil phonenumberutil, Phonenumber.PhoneNumber phonenumber, StringBuilder stringbuilder, String as[])
    {
        String as1[] = PhoneNumberUtil.NON_DIGITS_PATTERN.split(stringbuilder.toString());
        int i;
        if (phonenumber.hasExtension())
        {
            i = -2 + as1.length;
        } else
        {
            i = -1 + as1.length;
        }
        if (as1.length != 1 && !as1[i].contains(phonenumberutil.getNationalSignificantNumber(phonenumber)))
        {
            for (int j = -1 + as.length; j > 0 && i >= 0; i--)
            {
                if (!as1[i].equals(as[j]))
                {
                    return false;
                }
                j--;
            }

            if (i < 0 || !as1[i].endsWith(as[0]))
            {
                return false;
            }
        }
        return true;
    }

    static boolean allNumberGroupsRemainGrouped(PhoneNumberUtil phonenumberutil, Phonenumber.PhoneNumber phonenumber, StringBuilder stringbuilder, String as[])
    {
        Phonenumber.PhoneNumber.CountryCodeSource countrycodesource = phonenumber.getCountryCodeSource();
        Phonenumber.PhoneNumber.CountryCodeSource countrycodesource1 = Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY;
        int i = 0;
        if (countrycodesource != countrycodesource1)
        {
            String s1 = Integer.toString(phonenumber.getCountryCode());
            i = stringbuilder.indexOf(s1) + s1.length();
        }
        for (int j = 0; j < as.length; j++)
        {
            int k = stringbuilder.indexOf(as[j], i);
            if (k < 0)
            {
                return false;
            }
            i = k + as[j].length();
            if (j == 0 && i < stringbuilder.length() && phonenumberutil.getNddPrefixForRegion(phonenumberutil.getRegionCodeForCountryCode(phonenumber.getCountryCode()), true) != null && Character.isDigit(stringbuilder.charAt(i)))
            {
                String s = phonenumberutil.getNationalSignificantNumber(phonenumber);
                return stringbuilder.substring(i - as[j].length()).startsWith(s);
            }
        }

        return stringbuilder.substring(i).contains(phonenumber.getExtension());
    }

    static boolean checkNumberGroupingIsValid(Phonenumber.PhoneNumber phonenumber, String s, PhoneNumberUtil phonenumberutil, NumberGroupingChecker numbergroupingchecker)
    {
label0:
        {
            StringBuilder stringbuilder = PhoneNumberUtil.normalizeDigits(s, true);
            if (numbergroupingchecker.checkGroups(phonenumberutil, phonenumber, stringbuilder, getNationalNumberGroups(phonenumberutil, phonenumber, null)))
            {
                return true;
            }
            Phonemetadata.PhoneMetadata phonemetadata = MetadataManager.getAlternateFormatsForCountry(phonenumber.getCountryCode());
            if (phonemetadata == null)
            {
                break label0;
            }
            Iterator iterator = phonemetadata.numberFormats().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
            } while (!numbergroupingchecker.checkGroups(phonenumberutil, phonenumber, stringbuilder, getNationalNumberGroups(phonenumberutil, phonenumber, (Phonemetadata.NumberFormat)iterator.next())));
            return true;
        }
        return false;
    }

    static boolean containsMoreThanOneSlashInNationalNumber(Phonenumber.PhoneNumber phonenumber, String s)
    {
        int i = s.indexOf('/');
        int j;
        if (i >= 0)
        {
            if ((j = s.indexOf('/', i + 1)) >= 0)
            {
                boolean flag;
                if (phonenumber.getCountryCodeSource() == Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN || phonenumber.getCountryCodeSource() == Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITHOUT_PLUS_SIGN)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (flag && PhoneNumberUtil.normalizeDigitsOnly(s.substring(0, i)).equals(Integer.toString(phonenumber.getCountryCode())))
                {
                    return s.substring(j + 1).contains("/");
                } else
                {
                    return true;
                }
            }
        }
        return false;
    }

    static boolean containsOnlyValidXChars(Phonenumber.PhoneNumber phonenumber, String s, PhoneNumberUtil phonenumberutil)
    {
        int i = 0;
_L7:
        if (i >= -1 + s.length()) goto _L2; else goto _L1
_L1:
        char c1;
        char c = s.charAt(i);
        if (c != 'x' && c != 'X')
        {
            continue; /* Loop/switch isn't completed */
        }
        c1 = s.charAt(i + 1);
        if (c1 != 'x' && c1 != 'X') goto _L4; else goto _L3
_L3:
        i++;
        if (phonenumberutil.isNumberMatch(phonenumber, s.substring(i)) == PhoneNumberUtil.MatchType.NSN_MATCH)
        {
            continue; /* Loop/switch isn't completed */
        }
_L6:
        return false;
_L4:
        if (!PhoneNumberUtil.normalizeDigitsOnly(s.substring(i)).equals(phonenumber.getExtension())) goto _L6; else goto _L5
_L5:
        i++;
          goto _L7
_L2:
        return true;
    }

    private PhoneNumberMatch extractInnerMatch(String s, int i)
    {
        Pattern apattern[];
        int j;
        int k;
        apattern = INNER_MATCHES;
        j = apattern.length;
        k = 0;
_L10:
        if (k >= j) goto _L2; else goto _L1
_L1:
        Matcher matcher;
        boolean flag;
        matcher = apattern[k].matcher(s);
        flag = true;
_L9:
        if (!matcher.find() || maxTries <= 0L)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (!flag) goto _L4; else goto _L3
_L3:
        PhoneNumberMatch phonenumbermatch = parseAndVerify(trimAfterFirstMatch(PhoneNumberUtil.UNWANTED_END_CHAR_PATTERN, s.substring(0, matcher.start())).toString(), i);
        if (phonenumbermatch == null) goto _L6; else goto _L5
_L5:
        return phonenumbermatch;
_L6:
        maxTries = maxTries - 1L;
        flag = false;
_L4:
        phonenumbermatch = parseAndVerify(trimAfterFirstMatch(PhoneNumberUtil.UNWANTED_END_CHAR_PATTERN, matcher.group(1)).toString(), i + matcher.start(1));
        if (phonenumbermatch != null) goto _L5; else goto _L7
_L7:
        maxTries = maxTries - 1L;
        if (true) goto _L9; else goto _L8
_L8:
        k++;
          goto _L10
_L2:
        return null;
    }

    private PhoneNumberMatch extractMatch(CharSequence charsequence, int i)
    {
        boolean flag;
        PhoneNumberMatch phonenumbermatch;
        flag = SLASH_SEPARATED_DATES.matcher(charsequence).find();
        phonenumbermatch = null;
        if (!flag) goto _L2; else goto _L1
_L1:
        return phonenumbermatch;
_L2:
        boolean flag1;
        if (!TIME_STAMPS.matcher(charsequence).find())
        {
            break; /* Loop/switch isn't completed */
        }
        String s1 = text.toString().substring(i + charsequence.length());
        flag1 = TIME_STAMPS_SUFFIX.matcher(s1).lookingAt();
        phonenumbermatch = null;
        if (flag1) goto _L1; else goto _L3
_L3:
        String s = charsequence.toString();
        phonenumbermatch = parseAndVerify(s, i);
        if (phonenumbermatch == null)
        {
            return extractInnerMatch(s, i);
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    private PhoneNumberMatch find(int i)
    {
        for (Matcher matcher = PATTERN.matcher(text); maxTries > 0L && matcher.find(i); maxTries = maxTries - 1L)
        {
            int j = matcher.start();
            CharSequence charsequence = text.subSequence(j, matcher.end());
            CharSequence charsequence1 = trimAfterFirstMatch(PhoneNumberUtil.SECOND_NUMBER_START_PATTERN, charsequence);
            PhoneNumberMatch phonenumbermatch = extractMatch(charsequence1, j);
            if (phonenumbermatch != null)
            {
                return phonenumbermatch;
            }
            i = j + charsequence1.length();
        }

        return null;
    }

    private static String[] getNationalNumberGroups(PhoneNumberUtil phonenumberutil, Phonenumber.PhoneNumber phonenumber, Phonemetadata.NumberFormat numberformat)
    {
        if (numberformat == null)
        {
            String s = phonenumberutil.format(phonenumber, PhoneNumberUtil.PhoneNumberFormat.RFC3966);
            int i = s.indexOf(';');
            if (i < 0)
            {
                i = s.length();
            }
            return s.substring(1 + s.indexOf('-'), i).split("-");
        } else
        {
            return phonenumberutil.formatNsnUsingPattern(phonenumberutil.getNationalSignificantNumber(phonenumber), numberformat, PhoneNumberUtil.PhoneNumberFormat.RFC3966).split("-");
        }
    }

    private static boolean isInvalidPunctuationSymbol(char c)
    {
        return c == '%' || Character.getType(c) == 26;
    }

    static boolean isLatinLetter(char c)
    {
        Character.UnicodeBlock unicodeblock;
        if (Character.isLetter(c) || Character.getType(c) == 6)
        {
            if ((unicodeblock = Character.UnicodeBlock.of(c)).equals(Character.UnicodeBlock.BASIC_LATIN) || unicodeblock.equals(Character.UnicodeBlock.LATIN_1_SUPPLEMENT) || unicodeblock.equals(Character.UnicodeBlock.LATIN_EXTENDED_A) || unicodeblock.equals(Character.UnicodeBlock.LATIN_EXTENDED_ADDITIONAL) || unicodeblock.equals(Character.UnicodeBlock.LATIN_EXTENDED_B) || unicodeblock.equals(Character.UnicodeBlock.COMBINING_DIACRITICAL_MARKS))
            {
                return true;
            }
        }
        return false;
    }

    static boolean isNationalPrefixPresentIfRequired(Phonenumber.PhoneNumber phonenumber, PhoneNumberUtil phonenumberutil)
    {
        Phonemetadata.PhoneMetadata phonemetadata;
        if (phonenumber.getCountryCodeSource() == Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY)
        {
            if ((phonemetadata = phonenumberutil.getMetadataForRegion(phonenumberutil.getRegionCodeForCountryCode(phonenumber.getCountryCode()))) != null)
            {
                String s = phonenumberutil.getNationalSignificantNumber(phonenumber);
                Phonemetadata.NumberFormat numberformat = phonenumberutil.chooseFormattingPatternForNumber(phonemetadata.numberFormats(), s);
                if (numberformat != null && numberformat.getNationalPrefixFormattingRule().length() > 0 && !numberformat.isNationalPrefixOptionalWhenFormatting() && !PhoneNumberUtil.formattingRuleHasFirstGroupOnly(numberformat.getNationalPrefixFormattingRule()))
                {
                    return phonenumberutil.maybeStripNationalPrefixAndCarrierCode(new StringBuilder(PhoneNumberUtil.normalizeDigitsOnly(phonenumber.getRawInput())), phonemetadata, null);
                }
            }
        }
        return true;
    }

    private static String limit(int i, int j)
    {
        if (i < 0 || j <= 0 || j < i)
        {
            throw new IllegalArgumentException();
        } else
        {
            return (new StringBuilder(25)).append("{").append(i).append(",").append(j).append("}").toString();
        }
    }

    private PhoneNumberMatch parseAndVerify(String s, int i)
    {
        if (!MATCHING_BRACKETS.matcher(s).matches())
        {
            break MISSING_BLOCK_LABEL_267;
        }
        if (PUB_PAGES.matcher(s).find())
        {
            return null;
        }
        if (leniency.compareTo(PhoneNumberUtil.Leniency.VALID) < 0)
        {
            break MISSING_BLOCK_LABEL_139;
        }
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_88;
        }
        if (!LEAD_CLASS.matcher(s).lookingAt())
        {
            char c1 = text.charAt(i - 1);
            if (isInvalidPunctuationSymbol(c1) || isLatinLetter(c1))
            {
                break MISSING_BLOCK_LABEL_267;
            }
        }
        int j = i + s.length();
        if (j < text.length())
        {
            char c = text.charAt(j);
            if (isInvalidPunctuationSymbol(c) || isLatinLetter(c))
            {
                break MISSING_BLOCK_LABEL_267;
            }
        }
        Phonenumber.PhoneNumber phonenumber;
        phonenumber = phoneUtil.parseAndKeepRawInput(s, preferredRegion);
        if (!phoneUtil.getRegionCodeForCountryCode(phonenumber.getCountryCode()).equals("IL") || phoneUtil.getNationalSignificantNumber(phonenumber).length() != 4)
        {
            break MISSING_BLOCK_LABEL_215;
        }
        if (i == 0)
        {
            break MISSING_BLOCK_LABEL_267;
        }
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_215;
        }
        if (text.charAt(i - 1) != '*')
        {
            break MISSING_BLOCK_LABEL_267;
        }
        PhoneNumberMatch phonenumbermatch;
        if (!leniency.verify(phonenumber, s, phoneUtil))
        {
            break MISSING_BLOCK_LABEL_267;
        }
        phonenumber.clearCountryCodeSource();
        phonenumber.clearRawInput();
        phonenumber.clearPreferredDomesticCarrierCode();
        phonenumbermatch = new PhoneNumberMatch(i, s, phonenumber);
        return phonenumbermatch;
        NumberParseException numberparseexception;
        numberparseexception;
        return null;
    }

    private static CharSequence trimAfterFirstMatch(Pattern pattern, CharSequence charsequence)
    {
        Matcher matcher = pattern.matcher(charsequence);
        if (matcher.find())
        {
            charsequence = charsequence.subSequence(0, matcher.start());
        }
        return charsequence;
    }

    public boolean hasNext()
    {
        if (state == State.NOT_READY)
        {
            lastMatch = find(searchIndex);
            if (lastMatch == null)
            {
                state = State.DONE;
            } else
            {
                searchIndex = lastMatch.end();
                state = State.READY;
            }
        }
        return state == State.READY;
    }

    public PhoneNumberMatch next()
    {
        if (!hasNext())
        {
            throw new NoSuchElementException();
        } else
        {
            PhoneNumberMatch phonenumbermatch = lastMatch;
            lastMatch = null;
            state = State.NOT_READY;
            return phonenumbermatch;
        }
    }

    public volatile Object next()
    {
        return next();
    }

    public void remove()
    {
        throw new UnsupportedOperationException();
    }

    static 
    {
        Pattern apattern[] = new Pattern[6];
        apattern[0] = Pattern.compile("/+(.*)");
        apattern[1] = Pattern.compile("(\\([^(]*)");
        apattern[2] = Pattern.compile("(?:\\p{Z}-|-\\p{Z})\\p{Z}*(.+)");
        apattern[3] = Pattern.compile("[\u2012-\u2015\uFF0D]\\p{Z}*(.+)");
        apattern[4] = Pattern.compile("\\.+\\p{Z}*([^.]+)");
        apattern[5] = Pattern.compile("\\p{Z}+(\\P{Z}+)");
        INNER_MATCHES = apattern;
        String s = String.valueOf(String.valueOf("(\\[\uFF08\uFF3B"));
        String s1 = String.valueOf(String.valueOf(")\\]\uFF09\uFF3D"));
        String s2 = (new StringBuilder(3 + s.length() + s1.length())).append("[^").append(s).append(s1).append("]").toString();
        String s3 = limit(0, 3);
        String s4 = String.valueOf(String.valueOf("(\\[\uFF08\uFF3B"));
        String s5 = String.valueOf(String.valueOf(s2));
        String s6 = String.valueOf(String.valueOf(")\\]\uFF09\uFF3D"));
        String s7 = String.valueOf(String.valueOf(s2));
        String s8 = String.valueOf(String.valueOf("(\\[\uFF08\uFF3B"));
        String s9 = String.valueOf(String.valueOf(s2));
        String s10 = String.valueOf(String.valueOf(")\\]\uFF09\uFF3D"));
        String s11 = String.valueOf(String.valueOf(s3));
        String s12 = String.valueOf(String.valueOf(s2));
        MATCHING_BRACKETS = Pattern.compile((new StringBuilder(26 + s4.length() + s5.length() + s6.length() + s7.length() + s8.length() + s9.length() + s10.length() + s11.length() + s12.length())).append("(?:[").append(s4).append("])?").append("(?:").append(s5).append("+").append("[").append(s6).append("])?").append(s7).append("+").append("(?:[").append(s8).append("]").append(s9).append("+[").append(s10).append("])").append(s11).append(s12).append("*").toString());
        String s13 = limit(0, 2);
        String s14 = limit(0, 4);
        String s15 = limit(0, 20);
        String s16 = String.valueOf("[-x\u2010-\u2015\u2212\u30FC\uFF0D-\uFF0F \240\255\u200B\u2060\u3000()\uFF08\uFF09\uFF3B\uFF3D.\\[\\]/~\u2053\u223C\uFF5E]");
        String s17 = String.valueOf(s14);
        String s18;
        String s19;
        String s20;
        String s21;
        String s22;
        String s23;
        String s24;
        String s25;
        String s26;
        String s27;
        String s28;
        String s29;
        String s30;
        String s31;
        String s32;
        String s33;
        if (s17.length() != 0)
        {
            s18 = s16.concat(s17);
        } else
        {
            s18 = new String(s16);
        }
        s19 = String.valueOf(limit(1, 20));
        if (s19.length() != 0)
        {
            s20 = "\\p{Nd}".concat(s19);
        } else
        {
            s20 = new String("\\p{Nd}");
        }
        s21 = String.valueOf("(\\[\uFF08\uFF3B");
        s22 = String.valueOf("+\uFF0B");
        if (s22.length() != 0)
        {
            s23 = s21.concat(s22);
        } else
        {
            s23 = new String(s21);
        }
        s24 = String.valueOf(String.valueOf(s23));
        s25 = (new StringBuilder(2 + s24.length())).append("[").append(s24).append("]").toString();
        LEAD_CLASS = Pattern.compile(s25);
        s26 = String.valueOf(String.valueOf(s25));
        s27 = String.valueOf(String.valueOf(s18));
        s28 = String.valueOf(String.valueOf(s13));
        s29 = String.valueOf(String.valueOf(s20));
        s30 = String.valueOf(String.valueOf(s18));
        s31 = String.valueOf(String.valueOf(s20));
        s32 = String.valueOf(String.valueOf(s15));
        s33 = String.valueOf(String.valueOf(PhoneNumberUtil.EXTN_PATTERNS_FOR_MATCHING));
        PATTERN = Pattern.compile((new StringBuilder(13 + s26.length() + s27.length() + s28.length() + s29.length() + s30.length() + s31.length() + s32.length() + s33.length())).append("(?:").append(s26).append(s27).append(")").append(s28).append(s29).append("(?:").append(s30).append(s31).append(")").append(s32).append("(?:").append(s33).append(")?").toString(), 66);
    }
}
