// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.google.i18n.phonenumbers:
//            RegexCache, CountryCodeToRegionCodeMap, NumberParseException, AsYouTypeFormatter, 
//            MetadataLoader, PhoneNumberMatcher

public class PhoneNumberUtil
{
    public static abstract class Leniency extends Enum
    {

        private static final Leniency $VALUES[];
        public static final Leniency EXACT_GROUPING;
        public static final Leniency POSSIBLE;
        public static final Leniency STRICT_GROUPING;
        public static final Leniency VALID;

        public static Leniency valueOf(String s)
        {
            return (Leniency)Enum.valueOf(com/google/i18n/phonenumbers/PhoneNumberUtil$Leniency, s);
        }

        public static Leniency[] values()
        {
            return (Leniency[])$VALUES.clone();
        }

        abstract boolean verify(Phonenumber.PhoneNumber phonenumber, String s, PhoneNumberUtil phonenumberutil);

        static 
        {
            POSSIBLE = new Leniency("POSSIBLE", 0) {

                boolean verify(Phonenumber.PhoneNumber phonenumber, String s, PhoneNumberUtil phonenumberutil)
                {
                    return phonenumberutil.isPossibleNumber(phonenumber);
                }

            };
            VALID = new Leniency("VALID", 1) {

                boolean verify(Phonenumber.PhoneNumber phonenumber, String s, PhoneNumberUtil phonenumberutil)
                {
                    if (!phonenumberutil.isValidNumber(phonenumber) || !PhoneNumberMatcher.containsOnlyValidXChars(phonenumber, s, phonenumberutil))
                    {
                        return false;
                    } else
                    {
                        return PhoneNumberMatcher.isNationalPrefixPresentIfRequired(phonenumber, phonenumberutil);
                    }
                }

            };
            STRICT_GROUPING = new Leniency("STRICT_GROUPING", 2) {

                boolean verify(Phonenumber.PhoneNumber phonenumber, String s, PhoneNumberUtil phonenumberutil)
                {
                    if (!phonenumberutil.isValidNumber(phonenumber) || !PhoneNumberMatcher.containsOnlyValidXChars(phonenumber, s, phonenumberutil) || PhoneNumberMatcher.containsMoreThanOneSlashInNationalNumber(phonenumber, s) || !PhoneNumberMatcher.isNationalPrefixPresentIfRequired(phonenumber, phonenumberutil))
                    {
                        return false;
                    } else
                    {
                        return PhoneNumberMatcher.checkNumberGroupingIsValid(phonenumber, s, phonenumberutil, new PhoneNumberMatcher.NumberGroupingChecker() {

                            final Leniency._cls3 this$0;

                            public boolean checkGroups(PhoneNumberUtil phonenumberutil, Phonenumber.PhoneNumber phonenumber, StringBuilder stringbuilder, String as[])
                            {
                                return PhoneNumberMatcher.allNumberGroupsRemainGrouped(phonenumberutil, phonenumber, stringbuilder, as);
                            }

            
            {
                this$0 = Leniency._cls3.this;
                super();
            }
                        });
                    }
                }

            };
            EXACT_GROUPING = new Leniency("EXACT_GROUPING", 3) {

                boolean verify(Phonenumber.PhoneNumber phonenumber, String s, PhoneNumberUtil phonenumberutil)
                {
                    if (!phonenumberutil.isValidNumber(phonenumber) || !PhoneNumberMatcher.containsOnlyValidXChars(phonenumber, s, phonenumberutil) || PhoneNumberMatcher.containsMoreThanOneSlashInNationalNumber(phonenumber, s) || !PhoneNumberMatcher.isNationalPrefixPresentIfRequired(phonenumber, phonenumberutil))
                    {
                        return false;
                    } else
                    {
                        return PhoneNumberMatcher.checkNumberGroupingIsValid(phonenumber, s, phonenumberutil, new PhoneNumberMatcher.NumberGroupingChecker() {

                            final Leniency._cls4 this$0;

                            public boolean checkGroups(PhoneNumberUtil phonenumberutil, Phonenumber.PhoneNumber phonenumber, StringBuilder stringbuilder, String as[])
                            {
                                return PhoneNumberMatcher.allNumberGroupsAreExactlyPresent(phonenumberutil, phonenumber, stringbuilder, as);
                            }

            
            {
                this$0 = Leniency._cls4.this;
                super();
            }
                        });
                    }
                }

            };
            Leniency aleniency[] = new Leniency[4];
            aleniency[0] = POSSIBLE;
            aleniency[1] = VALID;
            aleniency[2] = STRICT_GROUPING;
            aleniency[3] = EXACT_GROUPING;
            $VALUES = aleniency;
        }

        private Leniency(String s, int i)
        {
            super(s, i);
        }

    }

    public static final class MatchType extends Enum
    {

        private static final MatchType $VALUES[];
        public static final MatchType EXACT_MATCH;
        public static final MatchType NOT_A_NUMBER;
        public static final MatchType NO_MATCH;
        public static final MatchType NSN_MATCH;
        public static final MatchType SHORT_NSN_MATCH;

        public static MatchType valueOf(String s)
        {
            return (MatchType)Enum.valueOf(com/google/i18n/phonenumbers/PhoneNumberUtil$MatchType, s);
        }

        public static MatchType[] values()
        {
            return (MatchType[])$VALUES.clone();
        }

        static 
        {
            NOT_A_NUMBER = new MatchType("NOT_A_NUMBER", 0);
            NO_MATCH = new MatchType("NO_MATCH", 1);
            SHORT_NSN_MATCH = new MatchType("SHORT_NSN_MATCH", 2);
            NSN_MATCH = new MatchType("NSN_MATCH", 3);
            EXACT_MATCH = new MatchType("EXACT_MATCH", 4);
            MatchType amatchtype[] = new MatchType[5];
            amatchtype[0] = NOT_A_NUMBER;
            amatchtype[1] = NO_MATCH;
            amatchtype[2] = SHORT_NSN_MATCH;
            amatchtype[3] = NSN_MATCH;
            amatchtype[4] = EXACT_MATCH;
            $VALUES = amatchtype;
        }

        private MatchType(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class PhoneNumberFormat extends Enum
    {

        private static final PhoneNumberFormat $VALUES[];
        public static final PhoneNumberFormat E164;
        public static final PhoneNumberFormat INTERNATIONAL;
        public static final PhoneNumberFormat NATIONAL;
        public static final PhoneNumberFormat RFC3966;

        public static PhoneNumberFormat valueOf(String s)
        {
            return (PhoneNumberFormat)Enum.valueOf(com/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat, s);
        }

        public static PhoneNumberFormat[] values()
        {
            return (PhoneNumberFormat[])$VALUES.clone();
        }

        static 
        {
            E164 = new PhoneNumberFormat("E164", 0);
            INTERNATIONAL = new PhoneNumberFormat("INTERNATIONAL", 1);
            NATIONAL = new PhoneNumberFormat("NATIONAL", 2);
            RFC3966 = new PhoneNumberFormat("RFC3966", 3);
            PhoneNumberFormat aphonenumberformat[] = new PhoneNumberFormat[4];
            aphonenumberformat[0] = E164;
            aphonenumberformat[1] = INTERNATIONAL;
            aphonenumberformat[2] = NATIONAL;
            aphonenumberformat[3] = RFC3966;
            $VALUES = aphonenumberformat;
        }

        private PhoneNumberFormat(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class PhoneNumberType extends Enum
    {

        private static final PhoneNumberType $VALUES[];
        public static final PhoneNumberType FIXED_LINE;
        public static final PhoneNumberType FIXED_LINE_OR_MOBILE;
        public static final PhoneNumberType MOBILE;
        public static final PhoneNumberType PAGER;
        public static final PhoneNumberType PERSONAL_NUMBER;
        public static final PhoneNumberType PREMIUM_RATE;
        public static final PhoneNumberType SHARED_COST;
        public static final PhoneNumberType TOLL_FREE;
        public static final PhoneNumberType UAN;
        public static final PhoneNumberType UNKNOWN;
        public static final PhoneNumberType VOICEMAIL;
        public static final PhoneNumberType VOIP;

        public static PhoneNumberType valueOf(String s)
        {
            return (PhoneNumberType)Enum.valueOf(com/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType, s);
        }

        public static PhoneNumberType[] values()
        {
            return (PhoneNumberType[])$VALUES.clone();
        }

        static 
        {
            FIXED_LINE = new PhoneNumberType("FIXED_LINE", 0);
            MOBILE = new PhoneNumberType("MOBILE", 1);
            FIXED_LINE_OR_MOBILE = new PhoneNumberType("FIXED_LINE_OR_MOBILE", 2);
            TOLL_FREE = new PhoneNumberType("TOLL_FREE", 3);
            PREMIUM_RATE = new PhoneNumberType("PREMIUM_RATE", 4);
            SHARED_COST = new PhoneNumberType("SHARED_COST", 5);
            VOIP = new PhoneNumberType("VOIP", 6);
            PERSONAL_NUMBER = new PhoneNumberType("PERSONAL_NUMBER", 7);
            PAGER = new PhoneNumberType("PAGER", 8);
            UAN = new PhoneNumberType("UAN", 9);
            VOICEMAIL = new PhoneNumberType("VOICEMAIL", 10);
            UNKNOWN = new PhoneNumberType("UNKNOWN", 11);
            PhoneNumberType aphonenumbertype[] = new PhoneNumberType[12];
            aphonenumbertype[0] = FIXED_LINE;
            aphonenumbertype[1] = MOBILE;
            aphonenumbertype[2] = FIXED_LINE_OR_MOBILE;
            aphonenumbertype[3] = TOLL_FREE;
            aphonenumbertype[4] = PREMIUM_RATE;
            aphonenumbertype[5] = SHARED_COST;
            aphonenumbertype[6] = VOIP;
            aphonenumbertype[7] = PERSONAL_NUMBER;
            aphonenumbertype[8] = PAGER;
            aphonenumbertype[9] = UAN;
            aphonenumbertype[10] = VOICEMAIL;
            aphonenumbertype[11] = UNKNOWN;
            $VALUES = aphonenumbertype;
        }

        private PhoneNumberType(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class ValidationResult extends Enum
    {

        private static final ValidationResult $VALUES[];
        public static final ValidationResult INVALID_COUNTRY_CODE;
        public static final ValidationResult IS_POSSIBLE;
        public static final ValidationResult TOO_LONG;
        public static final ValidationResult TOO_SHORT;

        public static ValidationResult valueOf(String s)
        {
            return (ValidationResult)Enum.valueOf(com/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult, s);
        }

        public static ValidationResult[] values()
        {
            return (ValidationResult[])$VALUES.clone();
        }

        static 
        {
            IS_POSSIBLE = new ValidationResult("IS_POSSIBLE", 0);
            INVALID_COUNTRY_CODE = new ValidationResult("INVALID_COUNTRY_CODE", 1);
            TOO_SHORT = new ValidationResult("TOO_SHORT", 2);
            TOO_LONG = new ValidationResult("TOO_LONG", 3);
            ValidationResult avalidationresult[] = new ValidationResult[4];
            avalidationresult[0] = IS_POSSIBLE;
            avalidationresult[1] = INVALID_COUNTRY_CODE;
            avalidationresult[2] = TOO_SHORT;
            avalidationresult[3] = TOO_LONG;
            $VALUES = avalidationresult;
        }

        private ValidationResult(String s, int i)
        {
            super(s, i);
        }
    }


    private static final Map ALL_PLUS_NUMBER_GROUPING_SYMBOLS;
    private static final Map ALPHA_MAPPINGS;
    private static final Map ALPHA_PHONE_MAPPINGS;
    private static final Pattern CAPTURING_DIGIT_PATTERN = Pattern.compile("(\\p{Nd})");
    private static final String CAPTURING_EXTN_DIGITS = "(\\p{Nd}{1,7})";
    private static final Pattern CC_PATTERN = Pattern.compile("\\$CC");
    private static final String COLOMBIA_MOBILE_TO_FIXED_LINE_PREFIX = "3";
    private static final String DEFAULT_EXTN_PREFIX = " ext. ";
    static final MetadataLoader DEFAULT_METADATA_LOADER = new MetadataLoader() {

        public InputStream loadMetadata(String s11)
        {
            return com/google/i18n/phonenumbers/PhoneNumberUtil.getResourceAsStream(s11);
        }

    };
    private static final Map DIALLABLE_CHAR_MAPPINGS;
    private static final String DIGITS = "\\p{Nd}";
    private static final Pattern EXTN_PATTERN;
    static final String EXTN_PATTERNS_FOR_MATCHING = createExtnPattern("x\uFF58#\uFF03~\uFF5E");
    private static final String EXTN_PATTERNS_FOR_PARSING;
    private static final Pattern FG_PATTERN = Pattern.compile("\\$FG");
    private static final Pattern FIRST_GROUP_ONLY_PREFIX_PATTERN = Pattern.compile("\\(?\\$1\\)?");
    private static final Pattern FIRST_GROUP_PATTERN = Pattern.compile("(\\$\\d)");
    private static final int MAX_INPUT_STRING_LENGTH = 250;
    static final int MAX_LENGTH_COUNTRY_CODE = 3;
    static final int MAX_LENGTH_FOR_NSN = 17;
    private static final String META_DATA_FILE_PREFIX = "/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto";
    private static final int MIN_LENGTH_FOR_NSN = 2;
    private static final Map MOBILE_TOKEN_MAPPINGS;
    private static final int NANPA_COUNTRY_CODE = 1;
    static final Pattern NON_DIGITS_PATTERN = Pattern.compile("(\\D+)");
    private static final Pattern NP_PATTERN = Pattern.compile("\\$NP");
    static final String PLUS_CHARS = "+\uFF0B";
    static final Pattern PLUS_CHARS_PATTERN = Pattern.compile("[+\uFF0B]+");
    static final char PLUS_SIGN = 43;
    static final int REGEX_FLAGS = 66;
    public static final String REGION_CODE_FOR_NON_GEO_ENTITY = "001";
    private static final String RFC3966_EXTN_PREFIX = ";ext=";
    private static final String RFC3966_ISDN_SUBADDRESS = ";isub=";
    private static final String RFC3966_PHONE_CONTEXT = ";phone-context=";
    private static final String RFC3966_PREFIX = "tel:";
    private static final String SECOND_NUMBER_START = "[\\\\/] *x";
    static final Pattern SECOND_NUMBER_START_PATTERN = Pattern.compile("[\\\\/] *x");
    private static final Pattern SEPARATOR_PATTERN = Pattern.compile("[-x\u2010-\u2015\u2212\u30FC\uFF0D-\uFF0F \240\255\u200B\u2060\u3000()\uFF08\uFF09\uFF3B\uFF3D.\\[\\]/~\u2053\u223C\uFF5E]+");
    private static final char STAR_SIGN = 42;
    private static final Pattern UNIQUE_INTERNATIONAL_PREFIX = Pattern.compile("[\\d]+(?:[~\u2053\u223C\uFF5E][\\d]+)?");
    private static final String UNKNOWN_REGION = "ZZ";
    private static final String UNWANTED_END_CHARS = "[[\\P{N}&&\\P{L}]&&[^#]]+$";
    static final Pattern UNWANTED_END_CHAR_PATTERN = Pattern.compile("[[\\P{N}&&\\P{L}]&&[^#]]+$");
    private static final String VALID_ALPHA;
    private static final Pattern VALID_ALPHA_PHONE_PATTERN = Pattern.compile("(?:.*?[A-Za-z]){3}.*");
    private static final String VALID_PHONE_NUMBER;
    private static final Pattern VALID_PHONE_NUMBER_PATTERN;
    static final String VALID_PUNCTUATION = "-x\u2010-\u2015\u2212\u30FC\uFF0D-\uFF0F \240\255\u200B\u2060\u3000()\uFF08\uFF09\uFF3B\uFF3D.\\[\\]/~\u2053\u223C\uFF5E";
    private static final String VALID_START_CHAR = "[+\uFF0B\\p{Nd}]";
    private static final Pattern VALID_START_CHAR_PATTERN = Pattern.compile("[+\uFF0B\\p{Nd}]");
    private static PhoneNumberUtil instance = null;
    private static final Logger logger = Logger.getLogger(com/google/i18n/phonenumbers/PhoneNumberUtil.getName());
    private final Map countryCallingCodeToRegionCodeMap;
    private final Map countryCodeToNonGeographicalMetadataMap = Collections.synchronizedMap(new HashMap());
    private final Set countryCodesForNonGeographicalRegion = new HashSet();
    private final String currentFilePrefix;
    private final MetadataLoader metadataLoader;
    private final Set nanpaRegions = new HashSet(35);
    private final RegexCache regexCache = new RegexCache(100);
    private final Map regionToMetadataMap = Collections.synchronizedMap(new HashMap());
    private final Set supportedRegions = new HashSet(320);

    PhoneNumberUtil(String s, MetadataLoader metadataloader, Map map)
    {
        currentFilePrefix = s;
        metadataLoader = metadataloader;
        countryCallingCodeToRegionCodeMap = map;
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            List list = (List)entry.getValue();
            if (list.size() == 1 && "001".equals(list.get(0)))
            {
                countryCodesForNonGeographicalRegion.add(entry.getKey());
            } else
            {
                supportedRegions.addAll(list);
            }
        }

        if (supportedRegions.remove("001"))
        {
            logger.log(Level.WARNING, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))");
        }
        nanpaRegions.addAll((Collection)map.get(Integer.valueOf(1)));
    }

    private void buildNationalNumberForParsing(String s, StringBuilder stringbuilder)
    {
        int i = s.indexOf(";phone-context=");
        if (i > 0)
        {
            int k = i + ";phone-context=".length();
            int i1;
            if (s.charAt(k) == '+')
            {
                int j1 = s.indexOf(';', k);
                int j;
                int l;
                if (j1 > 0)
                {
                    stringbuilder.append(s.substring(k, j1));
                } else
                {
                    stringbuilder.append(s.substring(k));
                }
            }
            l = s.indexOf("tel:");
            if (l >= 0)
            {
                i1 = l + "tel:".length();
            } else
            {
                i1 = 0;
            }
            stringbuilder.append(s.substring(i1, i));
        } else
        {
            stringbuilder.append(extractPossibleNumber(s));
        }
        j = stringbuilder.indexOf(";isub=");
        if (j > 0)
        {
            stringbuilder.delete(j, stringbuilder.length());
        }
    }

    private boolean checkRegionForParsing(String s, String s1)
    {
        return isValidRegionCode(s1) || s != null && s.length() != 0 && PLUS_CHARS_PATTERN.matcher(s).lookingAt();
    }

    public static String convertAlphaCharactersInNumber(String s)
    {
        return normalizeHelper(s, ALPHA_PHONE_MAPPINGS, false);
    }

    private static String createExtnPattern(String s)
    {
        String s1 = String.valueOf(String.valueOf(";ext=(\\p{Nd}{1,7})|[ \240\\t,]*(?:e?xt(?:ensi(?:o\u0301?|\363))?n?|\uFF45?\uFF58\uFF54\uFF4E?|["));
        String s2 = String.valueOf(String.valueOf(s));
        String s3 = String.valueOf(String.valueOf("(\\p{Nd}{1,7})"));
        String s4 = String.valueOf(String.valueOf("\\p{Nd}"));
        return (new StringBuilder(48 + s1.length() + s2.length() + s3.length() + s4.length())).append(s1).append(s2).append("]|int|anexo|\uFF49\uFF4E\uFF54)").append("[:\\.\uFF0E]?[ \240\\t,-]*").append(s3).append("#?|").append("[- ]+(").append(s4).append("{1,5})#").toString();
    }

    public static PhoneNumberUtil createInstance(MetadataLoader metadataloader)
    {
        if (metadataloader == null)
        {
            throw new IllegalArgumentException("metadataLoader could not be null.");
        } else
        {
            return new PhoneNumberUtil("/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto", metadataloader, CountryCodeToRegionCodeMap.getCountryCodeToRegionCodeMap());
        }
    }

    static String extractPossibleNumber(String s)
    {
        Matcher matcher = VALID_START_CHAR_PATTERN.matcher(s);
        if (matcher.find())
        {
            String s1 = s.substring(matcher.start());
            Matcher matcher1 = UNWANTED_END_CHAR_PATTERN.matcher(s1);
            if (matcher1.find())
            {
                s1 = s1.substring(0, matcher1.start());
                Logger logger1 = logger;
                Level level = Level.FINER;
                String s2 = String.valueOf(s1);
                Matcher matcher2;
                String s3;
                if (s2.length() != 0)
                {
                    s3 = "Stripped trailing characters: ".concat(s2);
                } else
                {
                    s3 = new String("Stripped trailing characters: ");
                }
                logger1.log(level, s3);
            }
            matcher2 = SECOND_NUMBER_START_PATTERN.matcher(s1);
            if (matcher2.find())
            {
                s1 = s1.substring(0, matcher2.start());
            }
            return s1;
        } else
        {
            return "";
        }
    }

    private String formatNsn(String s, Phonemetadata.PhoneMetadata phonemetadata, PhoneNumberFormat phonenumberformat)
    {
        return formatNsn(s, phonemetadata, phonenumberformat, null);
    }

    private String formatNsn(String s, Phonemetadata.PhoneMetadata phonemetadata, PhoneNumberFormat phonenumberformat, String s1)
    {
        List list;
        Phonemetadata.NumberFormat numberformat;
        if (phonemetadata.intlNumberFormats().size() == 0 || phonenumberformat == PhoneNumberFormat.NATIONAL)
        {
            list = phonemetadata.numberFormats();
        } else
        {
            list = phonemetadata.intlNumberFormats();
        }
        numberformat = chooseFormattingPatternForNumber(list, s);
        if (numberformat == null)
        {
            return s;
        } else
        {
            return formatNsnUsingPattern(s, numberformat, phonenumberformat, s1);
        }
    }

    private String formatNsnUsingPattern(String s, Phonemetadata.NumberFormat numberformat, PhoneNumberFormat phonenumberformat, String s1)
    {
        String s2 = numberformat.getFormat();
        Matcher matcher = regexCache.getPatternForRegex(numberformat.getPattern()).matcher(s);
        String s4;
        if (phonenumberformat == PhoneNumberFormat.NATIONAL && s1 != null && s1.length() > 0 && numberformat.getDomesticCarrierCodeFormattingRule().length() > 0)
        {
            String s5 = numberformat.getDomesticCarrierCodeFormattingRule();
            String s6 = CC_PATTERN.matcher(s5).replaceFirst(s1);
            s4 = matcher.replaceAll(FIRST_GROUP_PATTERN.matcher(s2).replaceFirst(s6));
        } else
        {
            String s3 = numberformat.getNationalPrefixFormattingRule();
            if (phonenumberformat == PhoneNumberFormat.NATIONAL && s3 != null && s3.length() > 0)
            {
                s4 = matcher.replaceAll(FIRST_GROUP_PATTERN.matcher(s2).replaceFirst(s3));
            } else
            {
                s4 = matcher.replaceAll(s2);
            }
        }
        if (phonenumberformat == PhoneNumberFormat.RFC3966)
        {
            Matcher matcher1 = SEPARATOR_PATTERN.matcher(s4);
            if (matcher1.lookingAt())
            {
                s4 = matcher1.replaceFirst("");
            }
            s4 = matcher1.reset(s4).replaceAll("-");
        }
        return s4;
    }

    static boolean formattingRuleHasFirstGroupOnly(String s)
    {
        return s.length() == 0 || FIRST_GROUP_ONLY_PREFIX_PATTERN.matcher(s).matches();
    }

    private int getCountryCodeForValidRegion(String s)
    {
        Phonemetadata.PhoneMetadata phonemetadata = getMetadataForRegion(s);
        if (phonemetadata == null)
        {
            String s1 = String.valueOf(s);
            String s2;
            if (s1.length() != 0)
            {
                s2 = "Invalid region code: ".concat(s1);
            } else
            {
                s2 = new String("Invalid region code: ");
            }
            throw new IllegalArgumentException(s2);
        } else
        {
            return phonemetadata.getCountryCode();
        }
    }

    public static String getCountryMobileToken(int i)
    {
        if (MOBILE_TOKEN_MAPPINGS.containsKey(Integer.valueOf(i)))
        {
            return (String)MOBILE_TOKEN_MAPPINGS.get(Integer.valueOf(i));
        } else
        {
            return "";
        }
    }

    public static PhoneNumberUtil getInstance()
    {
        com/google/i18n/phonenumbers/PhoneNumberUtil;
        JVM INSTR monitorenter ;
        PhoneNumberUtil phonenumberutil;
        if (instance == null)
        {
            setInstance(createInstance(DEFAULT_METADATA_LOADER));
        }
        phonenumberutil = instance;
        com/google/i18n/phonenumbers/PhoneNumberUtil;
        JVM INSTR monitorexit ;
        return phonenumberutil;
        Exception exception;
        exception;
        throw exception;
    }

    private Phonemetadata.PhoneMetadata getMetadataForRegionOrCallingCode(int i, String s)
    {
        if ("001".equals(s))
        {
            return getMetadataForNonGeographicalRegion(i);
        } else
        {
            return getMetadataForRegion(s);
        }
    }

    private PhoneNumberType getNumberTypeHelper(String s, Phonemetadata.PhoneMetadata phonemetadata)
    {
        if (!isNumberMatchingDesc(s, phonemetadata.getGeneralDesc()))
        {
            return PhoneNumberType.UNKNOWN;
        }
        if (isNumberMatchingDesc(s, phonemetadata.getPremiumRate()))
        {
            return PhoneNumberType.PREMIUM_RATE;
        }
        if (isNumberMatchingDesc(s, phonemetadata.getTollFree()))
        {
            return PhoneNumberType.TOLL_FREE;
        }
        if (isNumberMatchingDesc(s, phonemetadata.getSharedCost()))
        {
            return PhoneNumberType.SHARED_COST;
        }
        if (isNumberMatchingDesc(s, phonemetadata.getVoip()))
        {
            return PhoneNumberType.VOIP;
        }
        if (isNumberMatchingDesc(s, phonemetadata.getPersonalNumber()))
        {
            return PhoneNumberType.PERSONAL_NUMBER;
        }
        if (isNumberMatchingDesc(s, phonemetadata.getPager()))
        {
            return PhoneNumberType.PAGER;
        }
        if (isNumberMatchingDesc(s, phonemetadata.getUan()))
        {
            return PhoneNumberType.UAN;
        }
        if (isNumberMatchingDesc(s, phonemetadata.getVoicemail()))
        {
            return PhoneNumberType.VOICEMAIL;
        }
        if (isNumberMatchingDesc(s, phonemetadata.getFixedLine()))
        {
            if (phonemetadata.isSameMobileAndFixedLinePattern())
            {
                return PhoneNumberType.FIXED_LINE_OR_MOBILE;
            }
            if (isNumberMatchingDesc(s, phonemetadata.getMobile()))
            {
                return PhoneNumberType.FIXED_LINE_OR_MOBILE;
            } else
            {
                return PhoneNumberType.FIXED_LINE;
            }
        }
        if (!phonemetadata.isSameMobileAndFixedLinePattern() && isNumberMatchingDesc(s, phonemetadata.getMobile()))
        {
            return PhoneNumberType.MOBILE;
        } else
        {
            return PhoneNumberType.UNKNOWN;
        }
    }

    private String getRegionCodeForNumberFromRegionList(Phonenumber.PhoneNumber phonenumber, List list)
    {
label0:
        {
            String s = getNationalSignificantNumber(phonenumber);
            Iterator iterator = list.iterator();
            String s1;
            Phonemetadata.PhoneMetadata phonemetadata;
label1:
            do
            {
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label0;
                    }
                    s1 = (String)iterator.next();
                    phonemetadata = getMetadataForRegion(s1);
                    if (!phonemetadata.hasLeadingDigits())
                    {
                        continue label1;
                    }
                } while (!regexCache.getPatternForRegex(phonemetadata.getLeadingDigits()).matcher(s).lookingAt());
                return s1;
            } while (getNumberTypeHelper(s, phonemetadata) == PhoneNumberType.UNKNOWN);
            return s1;
        }
        return null;
    }

    private boolean hasFormattingPatternForNumber(Phonenumber.PhoneNumber phonenumber)
    {
        int i = phonenumber.getCountryCode();
        Phonemetadata.PhoneMetadata phonemetadata = getMetadataForRegionOrCallingCode(i, getRegionCodeForCountryCode(i));
        String s;
        if (phonemetadata != null)
        {
            if (chooseFormattingPatternForNumber(phonemetadata.numberFormats(), s = getNationalSignificantNumber(phonenumber)) != null)
            {
                return true;
            }
        }
        return false;
    }

    private boolean hasUnexpectedItalianLeadingZero(Phonenumber.PhoneNumber phonenumber)
    {
        return phonenumber.isItalianLeadingZero() && !isLeadingZeroPossible(phonenumber.getCountryCode());
    }

    private boolean hasValidCountryCallingCode(int i)
    {
        return countryCallingCodeToRegionCodeMap.containsKey(Integer.valueOf(i));
    }

    private boolean isNationalNumberSuffixOfTheOther(Phonenumber.PhoneNumber phonenumber, Phonenumber.PhoneNumber phonenumber1)
    {
        String s = String.valueOf(phonenumber.getNationalNumber());
        String s1 = String.valueOf(phonenumber1.getNationalNumber());
        return s.endsWith(s1) || s1.endsWith(s);
    }

    private boolean isShorterThanPossibleNormalNumber(Phonemetadata.PhoneMetadata phonemetadata, String s)
    {
        return testNumberLengthAgainstPattern(regexCache.getPatternForRegex(phonemetadata.getGeneralDesc().getPossibleNumberPattern()), s) == ValidationResult.TOO_SHORT;
    }

    private boolean isValidRegionCode(String s)
    {
        return s != null && supportedRegions.contains(s);
    }

    static boolean isViablePhoneNumber(String s)
    {
        if (s.length() < 2)
        {
            return false;
        } else
        {
            return VALID_PHONE_NUMBER_PATTERN.matcher(s).matches();
        }
    }

    private static Phonemetadata.PhoneMetadataCollection loadMetadataAndCloseInput(ObjectInputStream objectinputstream)
    {
        Phonemetadata.PhoneMetadataCollection phonemetadatacollection = new Phonemetadata.PhoneMetadataCollection();
        phonemetadatacollection.readExternal(objectinputstream);
        objectinputstream.close();
        return phonemetadatacollection;
        IOException ioexception3;
        ioexception3;
        logger.log(Level.WARNING, "error closing input stream (ignored)", ioexception3);
        return phonemetadatacollection;
        Exception exception3;
        exception3;
        return phonemetadatacollection;
        IOException ioexception1;
        ioexception1;
        logger.log(Level.WARNING, "error reading input (ignored)", ioexception1);
        objectinputstream.close();
        return phonemetadatacollection;
        IOException ioexception2;
        ioexception2;
        logger.log(Level.WARNING, "error closing input stream (ignored)", ioexception2);
        return phonemetadatacollection;
        Exception exception2;
        exception2;
        return phonemetadatacollection;
        Exception exception;
        exception;
        objectinputstream.close();
        return phonemetadatacollection;
        IOException ioexception;
        ioexception;
        logger.log(Level.WARNING, "error closing input stream (ignored)", ioexception);
        return phonemetadatacollection;
        Exception exception1;
        exception1;
        return phonemetadatacollection;
    }

    private void maybeAppendFormattedExtension(Phonenumber.PhoneNumber phonenumber, Phonemetadata.PhoneMetadata phonemetadata, PhoneNumberFormat phonenumberformat, StringBuilder stringbuilder)
    {
label0:
        {
            if (phonenumber.hasExtension() && phonenumber.getExtension().length() > 0)
            {
                if (phonenumberformat != PhoneNumberFormat.RFC3966)
                {
                    break label0;
                }
                stringbuilder.append(";ext=").append(phonenumber.getExtension());
            }
            return;
        }
        if (phonemetadata.hasPreferredExtnPrefix())
        {
            stringbuilder.append(phonemetadata.getPreferredExtnPrefix()).append(phonenumber.getExtension());
            return;
        } else
        {
            stringbuilder.append(" ext. ").append(phonenumber.getExtension());
            return;
        }
    }

    static String normalize(String s)
    {
        if (VALID_ALPHA_PHONE_PATTERN.matcher(s).matches())
        {
            return normalizeHelper(s, ALPHA_PHONE_MAPPINGS, true);
        } else
        {
            return normalizeDigitsOnly(s);
        }
    }

    static void normalize(StringBuilder stringbuilder)
    {
        String s = normalize(stringbuilder.toString());
        stringbuilder.replace(0, stringbuilder.length(), s);
    }

    static String normalizeDiallableCharsOnly(String s)
    {
        return normalizeHelper(s, DIALLABLE_CHAR_MAPPINGS, true);
    }

    static StringBuilder normalizeDigits(String s, boolean flag)
    {
        StringBuilder stringbuilder = new StringBuilder(s.length());
        char ac[] = s.toCharArray();
        int i = ac.length;
        int j = 0;
        while (j < i) 
        {
            char c = ac[j];
            int k = Character.digit(c, 10);
            if (k != -1)
            {
                stringbuilder.append(k);
            } else
            if (flag)
            {
                stringbuilder.append(c);
            }
            j++;
        }
        return stringbuilder;
    }

    public static String normalizeDigitsOnly(String s)
    {
        return normalizeDigits(s, false).toString();
    }

    private static String normalizeHelper(String s, Map map, boolean flag)
    {
        StringBuilder stringbuilder = new StringBuilder(s.length());
        int i = 0;
        while (i < s.length()) 
        {
            char c = s.charAt(i);
            Character character = (Character)map.get(Character.valueOf(Character.toUpperCase(c)));
            if (character != null)
            {
                stringbuilder.append(character);
            } else
            if (!flag)
            {
                stringbuilder.append(c);
            }
            i++;
        }
        return stringbuilder.toString();
    }

    private void parseHelper(String s, String s1, boolean flag, boolean flag1, Phonenumber.PhoneNumber phonenumber)
        throws NumberParseException
    {
        StringBuilder stringbuilder;
        Phonemetadata.PhoneMetadata phonemetadata;
        StringBuilder stringbuilder1;
        if (s == null)
        {
            throw new NumberParseException(NumberParseException.ErrorType.NOT_A_NUMBER, "The phone number supplied was null.");
        }
        if (s.length() > 250)
        {
            throw new NumberParseException(NumberParseException.ErrorType.TOO_LONG, "The string supplied was too long to parse.");
        }
        stringbuilder = new StringBuilder();
        buildNationalNumberForParsing(s, stringbuilder);
        if (!isViablePhoneNumber(stringbuilder.toString()))
        {
            throw new NumberParseException(NumberParseException.ErrorType.NOT_A_NUMBER, "The string supplied did not seem to be a phone number.");
        }
        if (flag1 && !checkRegionForParsing(stringbuilder.toString(), s1))
        {
            throw new NumberParseException(NumberParseException.ErrorType.INVALID_COUNTRY_CODE, "Missing or invalid default region.");
        }
        if (flag)
        {
            phonenumber.setRawInput(s);
        }
        String s2 = maybeStripExtension(stringbuilder);
        if (s2.length() > 0)
        {
            phonenumber.setExtension(s2);
        }
        phonemetadata = getMetadataForRegion(s1);
        stringbuilder1 = new StringBuilder();
        int k = maybeExtractCountryCode(stringbuilder.toString(), phonemetadata, stringbuilder1, flag, phonenumber);
        int i = k;
_L1:
        NumberParseException numberparseexception;
        Matcher matcher;
        if (i != 0)
        {
            String s3 = getRegionCodeForCountryCode(i);
            if (!s3.equals(s1))
            {
                phonemetadata = getMetadataForRegionOrCallingCode(i, s3);
            }
        } else
        {
            normalize(stringbuilder);
            stringbuilder1.append(stringbuilder);
            if (s1 != null)
            {
                phonenumber.setCountryCode(phonemetadata.getCountryCode());
            } else
            if (flag)
            {
                phonenumber.clearCountryCodeSource();
            }
        }
        if (stringbuilder1.length() < 2)
        {
            throw new NumberParseException(NumberParseException.ErrorType.TOO_SHORT_NSN, "The string supplied is too short to be a phone number.");
        }
        break MISSING_BLOCK_LABEL_381;
        numberparseexception;
        matcher = PLUS_CHARS_PATTERN.matcher(stringbuilder.toString());
        if (numberparseexception.getErrorType() == NumberParseException.ErrorType.INVALID_COUNTRY_CODE && matcher.lookingAt())
        {
            i = maybeExtractCountryCode(stringbuilder.substring(matcher.end()), phonemetadata, stringbuilder1, flag, phonenumber);
            if (i == 0)
            {
                throw new NumberParseException(NumberParseException.ErrorType.INVALID_COUNTRY_CODE, "Could not interpret numbers after plus-sign.");
            }
        } else
        {
            throw new NumberParseException(numberparseexception.getErrorType(), numberparseexception.getMessage());
        }
          goto _L1
        if (phonemetadata != null)
        {
            StringBuilder stringbuilder2 = new StringBuilder();
            StringBuilder stringbuilder3 = new StringBuilder(stringbuilder1);
            maybeStripNationalPrefixAndCarrierCode(stringbuilder3, phonemetadata, stringbuilder2);
            if (!isShorterThanPossibleNormalNumber(phonemetadata, stringbuilder3.toString()))
            {
                stringbuilder1 = stringbuilder3;
                if (flag)
                {
                    phonenumber.setPreferredDomesticCarrierCode(stringbuilder2.toString());
                }
            }
        }
        int j = stringbuilder1.length();
        if (j < 2)
        {
            throw new NumberParseException(NumberParseException.ErrorType.TOO_SHORT_NSN, "The string supplied is too short to be a phone number.");
        }
        if (j > 17)
        {
            throw new NumberParseException(NumberParseException.ErrorType.TOO_LONG, "The string supplied is too long to be a phone number.");
        } else
        {
            setItalianLeadingZerosForPhoneNumber(stringbuilder1.toString(), phonenumber);
            phonenumber.setNationalNumber(Long.parseLong(stringbuilder1.toString()));
            return;
        }
    }

    private boolean parsePrefixAsIdd(Pattern pattern, StringBuilder stringbuilder)
    {
        int i;
label0:
        {
            Matcher matcher = pattern.matcher(stringbuilder);
            if (matcher.lookingAt())
            {
                i = matcher.end();
                Matcher matcher1 = CAPTURING_DIGIT_PATTERN.matcher(stringbuilder.substring(i));
                if (!matcher1.find() || !normalizeDigitsOnly(matcher1.group(1)).equals("0"))
                {
                    break label0;
                }
            }
            return false;
        }
        stringbuilder.delete(0, i);
        return true;
    }

    private void prefixNumberWithCountryCallingCode(int i, PhoneNumberFormat phonenumberformat, StringBuilder stringbuilder)
    {
        static class _cls3
        {

            static final int $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberFormat[];
            static final int $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType[];
            static final int $SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource[];

            static 
            {
                $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType = new int[PhoneNumberType.values().length];
                try
                {
                    $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType[PhoneNumberType.PREMIUM_RATE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType[PhoneNumberType.TOLL_FREE.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType[PhoneNumberType.MOBILE.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType[PhoneNumberType.FIXED_LINE.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType[PhoneNumberType.FIXED_LINE_OR_MOBILE.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType[PhoneNumberType.SHARED_COST.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType[PhoneNumberType.VOIP.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType[PhoneNumberType.PERSONAL_NUMBER.ordinal()] = 8;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType[PhoneNumberType.PAGER.ordinal()] = 9;
                }
                catch (NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType[PhoneNumberType.UAN.ordinal()] = 10;
                }
                catch (NoSuchFieldError nosuchfielderror9) { }
                try
                {
                    $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType[PhoneNumberType.VOICEMAIL.ordinal()] = 11;
                }
                catch (NoSuchFieldError nosuchfielderror10) { }
                $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberFormat = new int[PhoneNumberFormat.values().length];
                try
                {
                    $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberFormat[PhoneNumberFormat.E164.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror11) { }
                try
                {
                    $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberFormat[PhoneNumberFormat.INTERNATIONAL.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror12) { }
                try
                {
                    $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberFormat[PhoneNumberFormat.RFC3966.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror13) { }
                try
                {
                    $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberFormat[PhoneNumberFormat.NATIONAL.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror14) { }
                $SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource = new int[Phonenumber.PhoneNumber.CountryCodeSource.values().length];
                try
                {
                    $SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource[Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror15) { }
                try
                {
                    $SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource[Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_IDD.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror16) { }
                try
                {
                    $SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource[Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITHOUT_PLUS_SIGN.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror17) { }
                try
                {
                    $SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource[Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror18)
                {
                    return;
                }
            }
        }

        switch (_cls3..SwitchMap.com.google.i18n.phonenumbers.PhoneNumberUtil.PhoneNumberFormat[phonenumberformat.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            stringbuilder.insert(0, i).insert(0, '+');
            return;

        case 2: // '\002'
            stringbuilder.insert(0, " ").insert(0, i).insert(0, '+');
            return;

        case 3: // '\003'
            stringbuilder.insert(0, "-").insert(0, i).insert(0, '+').insert(0, "tel:");
            break;
        }
    }

    private boolean rawInputContainsNationalPrefix(String s, String s1, String s2)
    {
        String s3 = normalizeDigitsOnly(s);
        boolean flag = s3.startsWith(s1);
        boolean flag1 = false;
        if (flag)
        {
            boolean flag2;
            try
            {
                flag2 = isValidNumber(parse(s3.substring(s1.length()), s2));
            }
            catch (NumberParseException numberparseexception)
            {
                return false;
            }
            flag1 = flag2;
        }
        return flag1;
    }

    static void setInstance(PhoneNumberUtil phonenumberutil)
    {
        com/google/i18n/phonenumbers/PhoneNumberUtil;
        JVM INSTR monitorenter ;
        instance = phonenumberutil;
        com/google/i18n/phonenumbers/PhoneNumberUtil;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static void setItalianLeadingZerosForPhoneNumber(String s, Phonenumber.PhoneNumber phonenumber)
    {
        if (s.length() > 1 && s.charAt(0) == '0')
        {
            phonenumber.setItalianLeadingZero(true);
            int i;
            for (i = 1; i < -1 + s.length() && s.charAt(i) == '0'; i++) { }
            if (i != 1)
            {
                phonenumber.setNumberOfLeadingZeros(i);
            }
        }
    }

    private ValidationResult testNumberLengthAgainstPattern(Pattern pattern, String s)
    {
        Matcher matcher = pattern.matcher(s);
        if (matcher.matches())
        {
            return ValidationResult.IS_POSSIBLE;
        }
        if (matcher.lookingAt())
        {
            return ValidationResult.TOO_LONG;
        } else
        {
            return ValidationResult.TOO_SHORT;
        }
    }

    boolean canBeInternationallyDialled(Phonenumber.PhoneNumber phonenumber)
    {
        for (Phonemetadata.PhoneMetadata phonemetadata = getMetadataForRegion(getRegionCodeForNumber(phonenumber)); phonemetadata == null || !isNumberMatchingDesc(getNationalSignificantNumber(phonenumber), phonemetadata.getNoInternationalDialling());)
        {
            return true;
        }

        return false;
    }

    Phonemetadata.NumberFormat chooseFormattingPatternForNumber(List list, String s)
    {
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            Phonemetadata.NumberFormat numberformat = (Phonemetadata.NumberFormat)iterator.next();
            int i = numberformat.leadingDigitsPatternSize();
            if ((i == 0 || regexCache.getPatternForRegex(numberformat.getLeadingDigitsPattern(i - 1)).matcher(s).lookingAt()) && regexCache.getPatternForRegex(numberformat.getPattern()).matcher(s).matches())
            {
                return numberformat;
            }
        }

        return null;
    }

    int extractCountryCode(StringBuilder stringbuilder, StringBuilder stringbuilder1)
    {
        if (stringbuilder.length() == 0 || stringbuilder.charAt(0) == '0')
        {
            return 0;
        }
        int i = stringbuilder.length();
        for (int j = 1; j <= 3 && j <= i; j++)
        {
            int k = Integer.parseInt(stringbuilder.substring(0, j));
            if (countryCallingCodeToRegionCodeMap.containsKey(Integer.valueOf(k)))
            {
                stringbuilder1.append(stringbuilder.substring(j));
                return k;
            }
        }

        return 0;
    }

    public Iterable findNumbers(CharSequence charsequence, String s)
    {
        return findNumbers(charsequence, s, Leniency.VALID, 0x7fffffffffffffffL);
    }

    public Iterable findNumbers(final CharSequence text, final String defaultRegion, final Leniency leniency, final long maxTries)
    {
        return new Iterable() {

            final PhoneNumberUtil this$0;
            final String val$defaultRegion;
            final Leniency val$leniency;
            final long val$maxTries;
            final CharSequence val$text;

            public Iterator iterator()
            {
                return new PhoneNumberMatcher(PhoneNumberUtil.this, text, defaultRegion, leniency, maxTries);
            }

            
            {
                this$0 = PhoneNumberUtil.this;
                text = charsequence;
                defaultRegion = s;
                leniency = leniency1;
                maxTries = l;
                super();
            }
        };
    }

    public String format(Phonenumber.PhoneNumber phonenumber, PhoneNumberFormat phonenumberformat)
    {
        if (phonenumber.getNationalNumber() == 0L && phonenumber.hasRawInput())
        {
            String s = phonenumber.getRawInput();
            if (s.length() > 0)
            {
                return s;
            }
        }
        StringBuilder stringbuilder = new StringBuilder(20);
        format(phonenumber, phonenumberformat, stringbuilder);
        return stringbuilder.toString();
    }

    public void format(Phonenumber.PhoneNumber phonenumber, PhoneNumberFormat phonenumberformat, StringBuilder stringbuilder)
    {
        stringbuilder.setLength(0);
        int i = phonenumber.getCountryCode();
        String s = getNationalSignificantNumber(phonenumber);
        if (phonenumberformat == PhoneNumberFormat.E164)
        {
            stringbuilder.append(s);
            prefixNumberWithCountryCallingCode(i, PhoneNumberFormat.E164, stringbuilder);
            return;
        }
        if (!hasValidCountryCallingCode(i))
        {
            stringbuilder.append(s);
            return;
        } else
        {
            Phonemetadata.PhoneMetadata phonemetadata = getMetadataForRegionOrCallingCode(i, getRegionCodeForCountryCode(i));
            stringbuilder.append(formatNsn(s, phonemetadata, phonenumberformat));
            maybeAppendFormattedExtension(phonenumber, phonemetadata, phonenumberformat, stringbuilder);
            prefixNumberWithCountryCallingCode(i, phonenumberformat, stringbuilder);
            return;
        }
    }

    public String formatByPattern(Phonenumber.PhoneNumber phonenumber, PhoneNumberFormat phonenumberformat, List list)
    {
        int i = phonenumber.getCountryCode();
        String s = getNationalSignificantNumber(phonenumber);
        if (!hasValidCountryCallingCode(i))
        {
            return s;
        }
        Phonemetadata.PhoneMetadata phonemetadata = getMetadataForRegionOrCallingCode(i, getRegionCodeForCountryCode(i));
        StringBuilder stringbuilder = new StringBuilder(20);
        Phonemetadata.NumberFormat numberformat = chooseFormattingPatternForNumber(list, s);
        if (numberformat == null)
        {
            stringbuilder.append(s);
        } else
        {
            Phonemetadata.NumberFormat numberformat1 = new Phonemetadata.NumberFormat();
            numberformat1.mergeFrom(numberformat);
            String s1 = numberformat.getNationalPrefixFormattingRule();
            if (s1.length() > 0)
            {
                String s2 = phonemetadata.getNationalPrefix();
                if (s2.length() > 0)
                {
                    String s3 = NP_PATTERN.matcher(s1).replaceFirst(s2);
                    numberformat1.setNationalPrefixFormattingRule(FG_PATTERN.matcher(s3).replaceFirst("\\$1"));
                } else
                {
                    numberformat1.clearNationalPrefixFormattingRule();
                }
            }
            stringbuilder.append(formatNsnUsingPattern(s, numberformat1, phonenumberformat));
        }
        maybeAppendFormattedExtension(phonenumber, phonemetadata, phonenumberformat, stringbuilder);
        prefixNumberWithCountryCallingCode(i, phonenumberformat, stringbuilder);
        return stringbuilder.toString();
    }

    public String formatInOriginalFormat(Phonenumber.PhoneNumber phonenumber, String s)
    {
        if (!phonenumber.hasRawInput() || !hasUnexpectedItalianLeadingZero(phonenumber) && hasFormattingPatternForNumber(phonenumber)) goto _L2; else goto _L1
_L1:
        String s1 = phonenumber.getRawInput();
_L4:
        return s1;
_L2:
        {
            if (!phonenumber.hasCountryCodeSource())
            {
                return format(phonenumber, PhoneNumberFormat.NATIONAL);
            }
            switch (_cls3..SwitchMap.com.google.i18n.phonenumbers.Phonenumber.PhoneNumber.CountryCodeSource[phonenumber.getCountryCodeSource().ordinal()])
            {
            default:
                String s3 = getRegionCodeForCountryCode(phonenumber.getCountryCode());
                String s4 = getNddPrefixForRegion(s3, true);
                String s5 = format(phonenumber, PhoneNumberFormat.NATIONAL);
                String s2;
                if (s4 == null || s4.length() == 0)
                {
                    s1 = s5;
                } else
                if (rawInputContainsNationalPrefix(phonenumber.getRawInput(), s4, s3))
                {
                    s1 = s5;
                } else
                {
                    Phonemetadata.PhoneMetadata phonemetadata = getMetadataForRegion(s3);
                    String s6 = getNationalSignificantNumber(phonenumber);
                    Phonemetadata.NumberFormat numberformat = chooseFormattingPatternForNumber(phonemetadata.numberFormats(), s6);
                    if (numberformat == null)
                    {
                        s1 = s5;
                    } else
                    {
                        String s7 = numberformat.getNationalPrefixFormattingRule();
                        int i = s7.indexOf("$1");
                        if (i <= 0)
                        {
                            s1 = s5;
                        } else
                        if (normalizeDigitsOnly(s7.substring(0, i)).length() == 0)
                        {
                            s1 = s5;
                        } else
                        {
                            Phonemetadata.NumberFormat numberformat1 = new Phonemetadata.NumberFormat();
                            numberformat1.mergeFrom(numberformat);
                            numberformat1.clearNationalPrefixFormattingRule();
                            ArrayList arraylist = new ArrayList(1);
                            arraylist.add(numberformat1);
                            s1 = formatByPattern(phonenumber, PhoneNumberFormat.NATIONAL, arraylist);
                        }
                    }
                }
                break;

            case 1: // '\001'
                break; /* Loop/switch isn't completed */

            case 2: // '\002'
                break MISSING_BLOCK_LABEL_177;

            case 3: // '\003'
                break MISSING_BLOCK_LABEL_187;
            }
        }
        s2 = phonenumber.getRawInput();
        if (s1 != null && s2.length() > 0 && !normalizeDiallableCharsOnly(s1).equals(normalizeDiallableCharsOnly(s2)))
        {
            return s2;
        }
        if (true) goto _L4; else goto _L3
_L3:
        s1 = format(phonenumber, PhoneNumberFormat.INTERNATIONAL);
        break MISSING_BLOCK_LABEL_129;
        s1 = formatOutOfCountryCallingNumber(phonenumber, s);
        break MISSING_BLOCK_LABEL_129;
        s1 = format(phonenumber, PhoneNumberFormat.INTERNATIONAL).substring(1);
        break MISSING_BLOCK_LABEL_129;
    }

    public String formatNationalNumberWithCarrierCode(Phonenumber.PhoneNumber phonenumber, String s)
    {
        int i = phonenumber.getCountryCode();
        String s1 = getNationalSignificantNumber(phonenumber);
        if (!hasValidCountryCallingCode(i))
        {
            return s1;
        } else
        {
            Phonemetadata.PhoneMetadata phonemetadata = getMetadataForRegionOrCallingCode(i, getRegionCodeForCountryCode(i));
            StringBuilder stringbuilder = new StringBuilder(20);
            stringbuilder.append(formatNsn(s1, phonemetadata, PhoneNumberFormat.NATIONAL, s));
            maybeAppendFormattedExtension(phonenumber, phonemetadata, PhoneNumberFormat.NATIONAL, stringbuilder);
            prefixNumberWithCountryCallingCode(i, PhoneNumberFormat.NATIONAL, stringbuilder);
            return stringbuilder.toString();
        }
    }

    public String formatNationalNumberWithPreferredCarrierCode(Phonenumber.PhoneNumber phonenumber, String s)
    {
        if (phonenumber.hasPreferredDomesticCarrierCode())
        {
            s = phonenumber.getPreferredDomesticCarrierCode();
        }
        return formatNationalNumberWithCarrierCode(phonenumber, s);
    }

    String formatNsnUsingPattern(String s, Phonemetadata.NumberFormat numberformat, PhoneNumberFormat phonenumberformat)
    {
        return formatNsnUsingPattern(s, numberformat, phonenumberformat, null);
    }

    public String formatNumberForMobileDialing(Phonenumber.PhoneNumber phonenumber, String s, boolean flag)
    {
        int i = phonenumber.getCountryCode();
        if (!hasValidCountryCallingCode(i))
        {
            if (phonenumber.hasRawInput())
            {
                return phonenumber.getRawInput();
            } else
            {
                return "";
            }
        }
        String s1 = "";
        Phonenumber.PhoneNumber phonenumber1 = (new Phonenumber.PhoneNumber()).mergeFrom(phonenumber).clearExtension();
        String s2 = getRegionCodeForCountryCode(i);
        PhoneNumberType phonenumbertype = getNumberType(phonenumber1);
        boolean flag1;
        if (phonenumbertype != PhoneNumberType.UNKNOWN)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (s.equals(s2))
        {
            boolean flag2;
            if (phonenumbertype == PhoneNumberType.FIXED_LINE || phonenumbertype == PhoneNumberType.MOBILE || phonenumbertype == PhoneNumberType.FIXED_LINE_OR_MOBILE)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            if (s2.equals("CO") && phonenumbertype == PhoneNumberType.FIXED_LINE)
            {
                s1 = formatNationalNumberWithCarrierCode(phonenumber1, "3");
            } else
            if (s2.equals("BR") && flag2)
            {
                String s5;
                if (phonenumber1.hasPreferredDomesticCarrierCode())
                {
                    s5 = formatNationalNumberWithPreferredCarrierCode(phonenumber1, "");
                } else
                {
                    s5 = "";
                }
                s1 = s5;
            } else
            if (flag1 && s2.equals("HU"))
            {
                String s3 = String.valueOf(String.valueOf(getNddPrefixForRegion(s2, true)));
                String s4 = String.valueOf(String.valueOf(format(phonenumber1, PhoneNumberFormat.NATIONAL)));
                s1 = (new StringBuilder(1 + s3.length() + s4.length())).append(s3).append(" ").append(s4).toString();
            } else
            if (i == 1)
            {
                Phonemetadata.PhoneMetadata phonemetadata = getMetadataForRegion(s);
                if (canBeInternationallyDialled(phonenumber1) && !isShorterThanPossibleNormalNumber(phonemetadata, getNationalSignificantNumber(phonenumber1)))
                {
                    s1 = format(phonenumber1, PhoneNumberFormat.INTERNATIONAL);
                } else
                {
                    s1 = format(phonenumber1, PhoneNumberFormat.NATIONAL);
                }
            } else
            if ((s2.equals("001") || (s2.equals("MX") || s2.equals("CL")) && flag2) && canBeInternationallyDialled(phonenumber1))
            {
                s1 = format(phonenumber1, PhoneNumberFormat.INTERNATIONAL);
            } else
            {
                s1 = format(phonenumber1, PhoneNumberFormat.NATIONAL);
            }
        } else
        if (flag1 && canBeInternationallyDialled(phonenumber1))
        {
            if (flag)
            {
                return format(phonenumber1, PhoneNumberFormat.INTERNATIONAL);
            } else
            {
                return format(phonenumber1, PhoneNumberFormat.E164);
            }
        }
        if (!flag)
        {
            s1 = normalizeDiallableCharsOnly(s1);
        }
        return s1;
    }

    public String formatOutOfCountryCallingNumber(Phonenumber.PhoneNumber phonenumber, String s)
    {
        String s1;
        if (!isValidRegionCode(s))
        {
            Logger logger1 = logger;
            Level level = Level.WARNING;
            String s5 = String.valueOf(String.valueOf(s));
            logger1.log(level, (new StringBuilder(79 + s5.length())).append("Trying to format number from invalid region ").append(s5).append(". International formatting applied.").toString());
            s1 = format(phonenumber, PhoneNumberFormat.INTERNATIONAL);
        } else
        {
            int i = phonenumber.getCountryCode();
            s1 = getNationalSignificantNumber(phonenumber);
            if (hasValidCountryCallingCode(i))
            {
                if (i == 1)
                {
                    if (isNANPACountry(s))
                    {
                        String s4 = String.valueOf(String.valueOf(format(phonenumber, PhoneNumberFormat.NATIONAL)));
                        return (new StringBuilder(12 + s4.length())).append(i).append(" ").append(s4).toString();
                    }
                } else
                if (i == getCountryCodeForValidRegion(s))
                {
                    return format(phonenumber, PhoneNumberFormat.NATIONAL);
                }
                Phonemetadata.PhoneMetadata phonemetadata = getMetadataForRegion(s);
                String s2 = phonemetadata.getInternationalPrefix();
                String s3 = "";
                Phonemetadata.PhoneMetadata phonemetadata1;
                StringBuilder stringbuilder;
                if (UNIQUE_INTERNATIONAL_PREFIX.matcher(s2).matches())
                {
                    s3 = s2;
                } else
                if (phonemetadata.hasPreferredInternationalPrefix())
                {
                    s3 = phonemetadata.getPreferredInternationalPrefix();
                }
                phonemetadata1 = getMetadataForRegionOrCallingCode(i, getRegionCodeForCountryCode(i));
                stringbuilder = new StringBuilder(formatNsn(s1, phonemetadata1, PhoneNumberFormat.INTERNATIONAL));
                maybeAppendFormattedExtension(phonenumber, phonemetadata1, PhoneNumberFormat.INTERNATIONAL, stringbuilder);
                if (s3.length() > 0)
                {
                    stringbuilder.insert(0, " ").insert(0, i).insert(0, " ").insert(0, s3);
                } else
                {
                    prefixNumberWithCountryCallingCode(i, PhoneNumberFormat.INTERNATIONAL, stringbuilder);
                }
                return stringbuilder.toString();
            }
        }
        return s1;
    }

    public String formatOutOfCountryKeepingAlphaChars(Phonenumber.PhoneNumber phonenumber, String s)
    {
        String s1 = phonenumber.getRawInput();
        if (s1.length() == 0)
        {
            return formatOutOfCountryCallingNumber(phonenumber, s);
        }
        int i = phonenumber.getCountryCode();
        if (!hasValidCountryCallingCode(i))
        {
            return s1;
        }
        String s2 = normalizeHelper(s1, ALL_PLUS_NUMBER_GROUPING_SYMBOLS, true);
        String s3 = getNationalSignificantNumber(phonenumber);
        if (s3.length() > 3)
        {
            int j = s2.indexOf(s3.substring(0, 3));
            if (j != -1)
            {
                s2 = s2.substring(j);
            }
        }
        Phonemetadata.PhoneMetadata phonemetadata = getMetadataForRegion(s);
        if (i == 1)
        {
            if (isNANPACountry(s))
            {
                String s7 = String.valueOf(String.valueOf(s2));
                return (new StringBuilder(12 + s7.length())).append(i).append(" ").append(s7).toString();
            }
        } else
        if (phonemetadata != null && i == getCountryCodeForValidRegion(s))
        {
            Phonemetadata.NumberFormat numberformat = chooseFormattingPatternForNumber(phonemetadata.numberFormats(), s3);
            if (numberformat == null)
            {
                return s2;
            } else
            {
                Phonemetadata.NumberFormat numberformat1 = new Phonemetadata.NumberFormat();
                numberformat1.mergeFrom(numberformat);
                numberformat1.setPattern("(\\d+)(.*)");
                numberformat1.setFormat("$1$2");
                return formatNsnUsingPattern(s2, numberformat1, PhoneNumberFormat.NATIONAL);
            }
        }
        String s4 = "";
        StringBuilder stringbuilder;
        if (phonemetadata != null)
        {
            String s6 = phonemetadata.getInternationalPrefix();
            if (UNIQUE_INTERNATIONAL_PREFIX.matcher(s6).matches())
            {
                s4 = s6;
            } else
            {
                s4 = phonemetadata.getPreferredInternationalPrefix();
            }
        }
        stringbuilder = new StringBuilder(s2);
        maybeAppendFormattedExtension(phonenumber, getMetadataForRegionOrCallingCode(i, getRegionCodeForCountryCode(i)), PhoneNumberFormat.INTERNATIONAL, stringbuilder);
        if (s4.length() > 0)
        {
            stringbuilder.insert(0, " ").insert(0, i).insert(0, " ").insert(0, s4);
        } else
        {
            Logger logger1 = logger;
            Level level = Level.WARNING;
            String s5 = String.valueOf(String.valueOf(s));
            logger1.log(level, (new StringBuilder(79 + s5.length())).append("Trying to format number from invalid region ").append(s5).append(". International formatting applied.").toString());
            prefixNumberWithCountryCallingCode(i, PhoneNumberFormat.INTERNATIONAL, stringbuilder);
        }
        return stringbuilder.toString();
    }

    public AsYouTypeFormatter getAsYouTypeFormatter(String s)
    {
        return new AsYouTypeFormatter(s);
    }

    public int getCountryCodeForRegion(String s)
    {
        if (!isValidRegionCode(s))
        {
            Logger logger1 = logger;
            Level level = Level.WARNING;
            if (s == null)
            {
                s = "null";
            }
            String s1 = String.valueOf(String.valueOf(s));
            logger1.log(level, (new StringBuilder(43 + s1.length())).append("Invalid or missing region code (").append(s1).append(") provided.").toString());
            return 0;
        } else
        {
            return getCountryCodeForValidRegion(s);
        }
    }

    public Phonenumber.PhoneNumber getExampleNumber(String s)
    {
        return getExampleNumberForType(s, PhoneNumberType.FIXED_LINE);
    }

    public Phonenumber.PhoneNumber getExampleNumberForNonGeoEntity(int i)
    {
        Phonemetadata.PhoneMetadata phonemetadata = getMetadataForNonGeographicalRegion(i);
        if (phonemetadata == null) goto _L2; else goto _L1
_L1:
        Phonemetadata.PhoneNumberDesc phonenumberdesc = phonemetadata.getGeneralDesc();
        Phonenumber.PhoneNumber phonenumber;
        if (!phonenumberdesc.hasExampleNumber())
        {
            break MISSING_BLOCK_LABEL_94;
        }
        String s = String.valueOf(String.valueOf(phonenumberdesc.getExampleNumber()));
        phonenumber = parse((new StringBuilder(12 + s.length())).append("+").append(i).append(s).toString(), "ZZ");
        return phonenumber;
        NumberParseException numberparseexception;
        numberparseexception;
        logger.log(Level.SEVERE, numberparseexception.toString());
_L4:
        return null;
_L2:
        logger.log(Level.WARNING, (new StringBuilder(61)).append("Invalid or unknown country calling code provided: ").append(i).toString());
        if (true) goto _L4; else goto _L3
_L3:
    }

    public Phonenumber.PhoneNumber getExampleNumberForType(String s, PhoneNumberType phonenumbertype)
    {
        Phonemetadata.PhoneNumberDesc phonenumberdesc;
        if (!isValidRegionCode(s))
        {
            Logger logger1 = logger;
            Level level = Level.WARNING;
            String s1 = String.valueOf(s);
            String s2;
            if (s1.length() != 0)
            {
                s2 = "Invalid or unknown region code provided: ".concat(s1);
            } else
            {
                s2 = new String("Invalid or unknown region code provided: ");
            }
            logger1.log(level, s2);
            return null;
        }
        phonenumberdesc = getNumberDescByType(getMetadataForRegion(s), phonenumbertype);
        Phonenumber.PhoneNumber phonenumber;
        if (!phonenumberdesc.hasExampleNumber())
        {
            break MISSING_BLOCK_LABEL_116;
        }
        phonenumber = parse(phonenumberdesc.getExampleNumber(), s);
        return phonenumber;
        NumberParseException numberparseexception;
        numberparseexception;
        logger.log(Level.SEVERE, numberparseexception.toString());
        return null;
    }

    public int getLengthOfGeographicalAreaCode(Phonenumber.PhoneNumber phonenumber)
    {
        for (Phonemetadata.PhoneMetadata phonemetadata = getMetadataForRegion(getRegionCodeForNumber(phonenumber)); phonemetadata == null || !phonemetadata.hasNationalPrefix() && !phonenumber.isItalianLeadingZero() || !isNumberGeographical(phonenumber);)
        {
            return 0;
        }

        return getLengthOfNationalDestinationCode(phonenumber);
    }

    public int getLengthOfNationalDestinationCode(Phonenumber.PhoneNumber phonenumber)
    {
        Phonenumber.PhoneNumber phonenumber1;
        String s;
        String as[];
        if (phonenumber.hasExtension())
        {
            phonenumber1 = new Phonenumber.PhoneNumber();
            phonenumber1.mergeFrom(phonenumber);
            phonenumber1.clearExtension();
        } else
        {
            phonenumber1 = phonenumber;
        }
        s = format(phonenumber1, PhoneNumberFormat.INTERNATIONAL);
        as = NON_DIGITS_PATTERN.split(s);
        if (as.length <= 3)
        {
            return 0;
        }
        if (getNumberType(phonenumber) == PhoneNumberType.MOBILE && !getCountryMobileToken(phonenumber.getCountryCode()).equals(""))
        {
            return as[2].length() + as[3].length();
        } else
        {
            return as[2].length();
        }
    }

    Phonemetadata.PhoneMetadata getMetadataForNonGeographicalRegion(int i)
    {
label0:
        {
            synchronized (countryCodeToNonGeographicalMetadataMap)
            {
                if (countryCallingCodeToRegionCodeMap.containsKey(Integer.valueOf(i)))
                {
                    break label0;
                }
            }
            return null;
        }
        if (!countryCodeToNonGeographicalMetadataMap.containsKey(Integer.valueOf(i)))
        {
            loadMetadataFromFile(currentFilePrefix, "001", i, metadataLoader);
        }
        map;
        JVM INSTR monitorexit ;
        return (Phonemetadata.PhoneMetadata)countryCodeToNonGeographicalMetadataMap.get(Integer.valueOf(i));
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }

    Phonemetadata.PhoneMetadata getMetadataForRegion(String s)
    {
        if (!isValidRegionCode(s))
        {
            return null;
        }
        synchronized (regionToMetadataMap)
        {
            if (!regionToMetadataMap.containsKey(s))
            {
                loadMetadataFromFile(currentFilePrefix, s, 0, metadataLoader);
            }
        }
        return (Phonemetadata.PhoneMetadata)regionToMetadataMap.get(s);
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public String getNationalSignificantNumber(Phonenumber.PhoneNumber phonenumber)
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (phonenumber.isItalianLeadingZero())
        {
            char ac[] = new char[phonenumber.getNumberOfLeadingZeros()];
            Arrays.fill(ac, '0');
            stringbuilder.append(new String(ac));
        }
        stringbuilder.append(phonenumber.getNationalNumber());
        return stringbuilder.toString();
    }

    public String getNddPrefixForRegion(String s, boolean flag)
    {
        Phonemetadata.PhoneMetadata phonemetadata = getMetadataForRegion(s);
        String s1;
        if (phonemetadata == null)
        {
            Logger logger1 = logger;
            Level level = Level.WARNING;
            if (s == null)
            {
                s = "null";
            }
            String s2 = String.valueOf(String.valueOf(s));
            logger1.log(level, (new StringBuilder(43 + s2.length())).append("Invalid or missing region code (").append(s2).append(") provided.").toString());
            s1 = null;
        } else
        {
            s1 = phonemetadata.getNationalPrefix();
            if (s1.length() == 0)
            {
                return null;
            }
            if (flag)
            {
                return s1.replace("~", "");
            }
        }
        return s1;
    }

    Phonemetadata.PhoneNumberDesc getNumberDescByType(Phonemetadata.PhoneMetadata phonemetadata, PhoneNumberType phonenumbertype)
    {
        switch (_cls3..SwitchMap.com.google.i18n.phonenumbers.PhoneNumberUtil.PhoneNumberType[phonenumbertype.ordinal()])
        {
        default:
            return phonemetadata.getGeneralDesc();

        case 1: // '\001'
            return phonemetadata.getPremiumRate();

        case 2: // '\002'
            return phonemetadata.getTollFree();

        case 3: // '\003'
            return phonemetadata.getMobile();

        case 4: // '\004'
        case 5: // '\005'
            return phonemetadata.getFixedLine();

        case 6: // '\006'
            return phonemetadata.getSharedCost();

        case 7: // '\007'
            return phonemetadata.getVoip();

        case 8: // '\b'
            return phonemetadata.getPersonalNumber();

        case 9: // '\t'
            return phonemetadata.getPager();

        case 10: // '\n'
            return phonemetadata.getUan();

        case 11: // '\013'
            return phonemetadata.getVoicemail();
        }
    }

    public PhoneNumberType getNumberType(Phonenumber.PhoneNumber phonenumber)
    {
        String s = getRegionCodeForNumber(phonenumber);
        Phonemetadata.PhoneMetadata phonemetadata = getMetadataForRegionOrCallingCode(phonenumber.getCountryCode(), s);
        if (phonemetadata == null)
        {
            return PhoneNumberType.UNKNOWN;
        } else
        {
            return getNumberTypeHelper(getNationalSignificantNumber(phonenumber), phonemetadata);
        }
    }

    public String getRegionCodeForCountryCode(int i)
    {
        List list = (List)countryCallingCodeToRegionCodeMap.get(Integer.valueOf(i));
        if (list == null)
        {
            return "ZZ";
        } else
        {
            return (String)list.get(0);
        }
    }

    public String getRegionCodeForNumber(Phonenumber.PhoneNumber phonenumber)
    {
        int i = phonenumber.getCountryCode();
        List list = (List)countryCallingCodeToRegionCodeMap.get(Integer.valueOf(i));
        if (list == null)
        {
            String s = getNationalSignificantNumber(phonenumber);
            Logger logger1 = logger;
            Level level = Level.WARNING;
            String s1 = String.valueOf(String.valueOf(s));
            logger1.log(level, (new StringBuilder(54 + s1.length())).append("Missing/invalid country_code (").append(i).append(") for number ").append(s1).toString());
            return null;
        }
        if (list.size() == 1)
        {
            return (String)list.get(0);
        } else
        {
            return getRegionCodeForNumberFromRegionList(phonenumber, list);
        }
    }

    public List getRegionCodesForCountryCode(int i)
    {
        Object obj = (List)countryCallingCodeToRegionCodeMap.get(Integer.valueOf(i));
        if (obj == null)
        {
            obj = new ArrayList(0);
        }
        return Collections.unmodifiableList(((List) (obj)));
    }

    public Set getSupportedGlobalNetworkCallingCodes()
    {
        return Collections.unmodifiableSet(countryCodesForNonGeographicalRegion);
    }

    public Set getSupportedRegions()
    {
        return Collections.unmodifiableSet(supportedRegions);
    }

    public boolean isAlphaNumber(String s)
    {
        if (!isViablePhoneNumber(s))
        {
            return false;
        } else
        {
            StringBuilder stringbuilder = new StringBuilder(s);
            maybeStripExtension(stringbuilder);
            return VALID_ALPHA_PHONE_PATTERN.matcher(stringbuilder).matches();
        }
    }

    boolean isLeadingZeroPossible(int i)
    {
        Phonemetadata.PhoneMetadata phonemetadata = getMetadataForRegionOrCallingCode(i, getRegionCodeForCountryCode(i));
        if (phonemetadata == null)
        {
            return false;
        } else
        {
            return phonemetadata.isLeadingZeroPossible();
        }
    }

    public boolean isMobileNumberPortableRegion(String s)
    {
        Phonemetadata.PhoneMetadata phonemetadata = getMetadataForRegion(s);
        if (phonemetadata == null)
        {
            Logger logger1 = logger;
            Level level = Level.WARNING;
            String s1 = String.valueOf(s);
            String s2;
            if (s1.length() != 0)
            {
                s2 = "Invalid or unknown region code provided: ".concat(s1);
            } else
            {
                s2 = new String("Invalid or unknown region code provided: ");
            }
            logger1.log(level, s2);
            return false;
        } else
        {
            return phonemetadata.isMobileNumberPortableRegion();
        }
    }

    public boolean isNANPACountry(String s)
    {
        return nanpaRegions.contains(s);
    }

    boolean isNumberGeographical(Phonenumber.PhoneNumber phonenumber)
    {
        PhoneNumberType phonenumbertype = getNumberType(phonenumber);
        return phonenumbertype == PhoneNumberType.FIXED_LINE || phonenumbertype == PhoneNumberType.FIXED_LINE_OR_MOBILE;
    }

    public MatchType isNumberMatch(Phonenumber.PhoneNumber phonenumber, Phonenumber.PhoneNumber phonenumber1)
    {
        Phonenumber.PhoneNumber phonenumber2 = new Phonenumber.PhoneNumber();
        phonenumber2.mergeFrom(phonenumber);
        Phonenumber.PhoneNumber phonenumber3 = new Phonenumber.PhoneNumber();
        phonenumber3.mergeFrom(phonenumber1);
        phonenumber2.clearRawInput();
        phonenumber2.clearCountryCodeSource();
        phonenumber2.clearPreferredDomesticCarrierCode();
        phonenumber3.clearRawInput();
        phonenumber3.clearCountryCodeSource();
        phonenumber3.clearPreferredDomesticCarrierCode();
        if (phonenumber2.hasExtension() && phonenumber2.getExtension().length() == 0)
        {
            phonenumber2.clearExtension();
        }
        if (phonenumber3.hasExtension() && phonenumber3.getExtension().length() == 0)
        {
            phonenumber3.clearExtension();
        }
        if (phonenumber2.hasExtension() && phonenumber3.hasExtension() && !phonenumber2.getExtension().equals(phonenumber3.getExtension()))
        {
            return MatchType.NO_MATCH;
        }
        int i = phonenumber2.getCountryCode();
        int j = phonenumber3.getCountryCode();
        if (i != 0 && j != 0)
        {
            if (phonenumber2.exactlySameAs(phonenumber3))
            {
                return MatchType.EXACT_MATCH;
            }
            if (i == j && isNationalNumberSuffixOfTheOther(phonenumber2, phonenumber3))
            {
                return MatchType.SHORT_NSN_MATCH;
            } else
            {
                return MatchType.NO_MATCH;
            }
        }
        phonenumber2.setCountryCode(j);
        if (phonenumber2.exactlySameAs(phonenumber3))
        {
            return MatchType.NSN_MATCH;
        }
        if (isNationalNumberSuffixOfTheOther(phonenumber2, phonenumber3))
        {
            return MatchType.SHORT_NSN_MATCH;
        } else
        {
            return MatchType.NO_MATCH;
        }
    }

    public MatchType isNumberMatch(Phonenumber.PhoneNumber phonenumber, String s)
    {
        MatchType matchtype2 = isNumberMatch(phonenumber, parse(s, "ZZ"));
        MatchType matchtype1 = matchtype2;
_L1:
        return matchtype1;
        NumberParseException numberparseexception;
        numberparseexception;
        String s1;
        if (numberparseexception.getErrorType() != NumberParseException.ErrorType.INVALID_COUNTRY_CODE)
        {
            break MISSING_BLOCK_LABEL_111;
        }
        s1 = getRegionCodeForCountryCode(phonenumber.getCountryCode());
label0:
        {
            if (s1.equals("ZZ"))
            {
                break label0;
            }
            matchtype1 = isNumberMatch(phonenumber, parse(s, s1));
            if (matchtype1 == MatchType.EXACT_MATCH)
            {
                return MatchType.NSN_MATCH;
            }
        }
          goto _L1
        MatchType matchtype;
        Phonenumber.PhoneNumber phonenumber1 = new Phonenumber.PhoneNumber();
        parseHelper(s, null, false, false, phonenumber1);
        matchtype = isNumberMatch(phonenumber, phonenumber1);
        return matchtype;
        NumberParseException numberparseexception1;
        numberparseexception1;
        return MatchType.NOT_A_NUMBER;
    }

    public MatchType isNumberMatch(String s, String s1)
    {
        MatchType matchtype2 = isNumberMatch(parse(s, "ZZ"), s1);
        return matchtype2;
        NumberParseException numberparseexception;
        numberparseexception;
        if (numberparseexception.getErrorType() != NumberParseException.ErrorType.INVALID_COUNTRY_CODE)
        {
            break MISSING_BLOCK_LABEL_111;
        }
        MatchType matchtype1 = isNumberMatch(parse(s1, "ZZ"), s);
        return matchtype1;
        NumberParseException numberparseexception1;
        numberparseexception1;
        if (numberparseexception1.getErrorType() != NumberParseException.ErrorType.INVALID_COUNTRY_CODE)
        {
            break MISSING_BLOCK_LABEL_111;
        }
        MatchType matchtype;
        Phonenumber.PhoneNumber phonenumber = new Phonenumber.PhoneNumber();
        Phonenumber.PhoneNumber phonenumber1 = new Phonenumber.PhoneNumber();
        parseHelper(s, null, false, false, phonenumber);
        parseHelper(s1, null, false, false, phonenumber1);
        matchtype = isNumberMatch(phonenumber, phonenumber1);
        return matchtype;
        NumberParseException numberparseexception2;
        numberparseexception2;
        return MatchType.NOT_A_NUMBER;
    }

    boolean isNumberMatchingDesc(String s, Phonemetadata.PhoneNumberDesc phonenumberdesc)
    {
        Matcher matcher = regexCache.getPatternForRegex(phonenumberdesc.getNationalNumberPattern()).matcher(s);
        return isNumberPossibleForDesc(s, phonenumberdesc) && matcher.matches();
    }

    boolean isNumberPossibleForDesc(String s, Phonemetadata.PhoneNumberDesc phonenumberdesc)
    {
        return regexCache.getPatternForRegex(phonenumberdesc.getPossibleNumberPattern()).matcher(s).matches();
    }

    public boolean isPossibleNumber(Phonenumber.PhoneNumber phonenumber)
    {
        return isPossibleNumberWithReason(phonenumber) == ValidationResult.IS_POSSIBLE;
    }

    public boolean isPossibleNumber(String s, String s1)
    {
        boolean flag;
        try
        {
            flag = isPossibleNumber(parse(s, s1));
        }
        catch (NumberParseException numberparseexception)
        {
            return false;
        }
        return flag;
    }

    public ValidationResult isPossibleNumberWithReason(Phonenumber.PhoneNumber phonenumber)
    {
        String s = getNationalSignificantNumber(phonenumber);
        int i = phonenumber.getCountryCode();
        if (!hasValidCountryCallingCode(i))
        {
            return ValidationResult.INVALID_COUNTRY_CODE;
        } else
        {
            Phonemetadata.PhoneMetadata phonemetadata = getMetadataForRegionOrCallingCode(i, getRegionCodeForCountryCode(i));
            return testNumberLengthAgainstPattern(regexCache.getPatternForRegex(phonemetadata.getGeneralDesc().getPossibleNumberPattern()), s);
        }
    }

    public boolean isValidNumber(Phonenumber.PhoneNumber phonenumber)
    {
        return isValidNumberForRegion(phonenumber, getRegionCodeForNumber(phonenumber));
    }

    public boolean isValidNumberForRegion(Phonenumber.PhoneNumber phonenumber, String s)
    {
        int i = phonenumber.getCountryCode();
        for (Phonemetadata.PhoneMetadata phonemetadata = getMetadataForRegionOrCallingCode(i, s); phonemetadata == null || !"001".equals(s) && i != getCountryCodeForValidRegion(s) || getNumberTypeHelper(getNationalSignificantNumber(phonenumber), phonemetadata) == PhoneNumberType.UNKNOWN;)
        {
            return false;
        }

        return true;
    }

    void loadMetadataFromFile(String s, String s1, int i, MetadataLoader metadataloader)
    {
        boolean flag;
        String s5;
        InputStream inputstream;
        flag = "001".equals(s1);
        String s2 = String.valueOf(String.valueOf(s));
        String s3;
        String s4;
        if (flag)
        {
            s3 = String.valueOf(i);
        } else
        {
            s3 = s1;
        }
        s4 = String.valueOf(String.valueOf(s3));
        s5 = (new StringBuilder(1 + s2.length() + s4.length())).append(s2).append("_").append(s4).toString();
        inputstream = metadataloader.loadMetadata(s5);
        if (inputstream == null)
        {
            Logger logger4 = logger;
            Level level3 = Level.SEVERE;
            String s16 = String.valueOf(s5);
            String s17;
            String s18;
            String s19;
            if (s16.length() != 0)
            {
                s17 = "missing metadata: ".concat(s16);
            } else
            {
                s17 = new String("missing metadata: ");
            }
            logger4.log(level3, s17);
            s18 = String.valueOf(s5);
            if (s18.length() != 0)
            {
                s19 = "missing metadata: ".concat(s18);
            } else
            {
                s19 = new String("missing metadata: ");
            }
            throw new IllegalStateException(s19);
        }
        ObjectInputStream objectinputstream = new ObjectInputStream(inputstream);
        List list = loadMetadataAndCloseInput(objectinputstream).getMetadataList();
        if (!list.isEmpty()) goto _L2; else goto _L1
_L1:
        Logger logger3;
        Level level2;
        String s12;
        logger3 = logger;
        level2 = Level.SEVERE;
        s12 = String.valueOf(s5);
        if (s12.length() == 0) goto _L4; else goto _L3
_L3:
        String s13 = "empty metadata: ".concat(s12);
_L7:
        String s14;
        logger3.log(level2, s13);
        s14 = String.valueOf(s5);
        if (s14.length() == 0) goto _L6; else goto _L5
_L5:
        String s15 = "empty metadata: ".concat(s14);
_L8:
        throw new IllegalStateException(s15);
        IOException ioexception;
        ioexception;
_L12:
        Logger logger1 = logger;
        Level level = Level.SEVERE;
        String s6 = String.valueOf(s5);
        String s7;
        String s8;
        String s9;
        Phonemetadata.PhoneMetadata phonemetadata;
        Logger logger2;
        Level level1;
        String s10;
        String s11;
        if (s6.length() != 0)
        {
            s7 = "cannot load/parse metadata: ".concat(s6);
        } else
        {
            s7 = new String("cannot load/parse metadata: ");
        }
        logger1.log(level, s7, ioexception);
        s8 = String.valueOf(s5);
        if (s8.length() != 0)
        {
            s9 = "cannot load/parse metadata: ".concat(s8);
        } else
        {
            s9 = new String("cannot load/parse metadata: ");
        }
        throw new RuntimeException(s9, ioexception);
_L4:
        s13 = new String("empty metadata: ");
          goto _L7
_L6:
        s15 = new String("empty metadata: ");
          goto _L8
_L2:
        if (list.size() <= 1) goto _L10; else goto _L9
_L9:
        logger2 = logger;
        level1 = Level.WARNING;
        s10 = String.valueOf(s5);
        if (s10.length() == 0)
        {
            break MISSING_BLOCK_LABEL_525;
        }
        s11 = "invalid metadata (too many entries): ".concat(s10);
_L11:
        logger2.log(level1, s11);
_L10:
        phonemetadata = (Phonemetadata.PhoneMetadata)list.get(0);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_540;
        }
        countryCodeToNonGeographicalMetadataMap.put(Integer.valueOf(i), phonemetadata);
        return;
        s11 = new String("invalid metadata (too many entries): ");
          goto _L11
        regionToMetadataMap.put(s1, phonemetadata);
        return;
        ioexception;
          goto _L12
    }

    int maybeExtractCountryCode(String s, Phonemetadata.PhoneMetadata phonemetadata, StringBuilder stringbuilder, boolean flag, Phonenumber.PhoneNumber phonenumber)
        throws NumberParseException
    {
        if (s.length() == 0)
        {
            return 0;
        }
        StringBuilder stringbuilder1 = new StringBuilder(s);
        String s1 = "NonMatch";
        if (phonemetadata != null)
        {
            s1 = phonemetadata.getInternationalPrefix();
        }
        Phonenumber.PhoneNumber.CountryCodeSource countrycodesource = maybeStripInternationalPrefixAndNormalize(stringbuilder1, s1);
        if (flag)
        {
            phonenumber.setCountryCodeSource(countrycodesource);
        }
        if (countrycodesource != Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY)
        {
            if (stringbuilder1.length() <= 2)
            {
                throw new NumberParseException(NumberParseException.ErrorType.TOO_SHORT_AFTER_IDD, "Phone number had an IDD, but after this was not long enough to be a viable phone number.");
            }
            int j = extractCountryCode(stringbuilder1, stringbuilder);
            if (j != 0)
            {
                phonenumber.setCountryCode(j);
                return j;
            } else
            {
                throw new NumberParseException(NumberParseException.ErrorType.INVALID_COUNTRY_CODE, "Country calling code supplied was not recognised.");
            }
        }
        if (phonemetadata != null)
        {
            int i = phonemetadata.getCountryCode();
            String s2 = String.valueOf(i);
            String s3 = stringbuilder1.toString();
            if (s3.startsWith(s2))
            {
                StringBuilder stringbuilder2 = new StringBuilder(s3.substring(s2.length()));
                Phonemetadata.PhoneNumberDesc phonenumberdesc = phonemetadata.getGeneralDesc();
                Pattern pattern = regexCache.getPatternForRegex(phonenumberdesc.getNationalNumberPattern());
                maybeStripNationalPrefixAndCarrierCode(stringbuilder2, phonemetadata, null);
                Pattern pattern1 = regexCache.getPatternForRegex(phonenumberdesc.getPossibleNumberPattern());
                if (!pattern.matcher(stringbuilder1).matches() && pattern.matcher(stringbuilder2).matches() || testNumberLengthAgainstPattern(pattern1, stringbuilder1.toString()) == ValidationResult.TOO_LONG)
                {
                    stringbuilder.append(stringbuilder2);
                    if (flag)
                    {
                        phonenumber.setCountryCodeSource(Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITHOUT_PLUS_SIGN);
                    }
                    phonenumber.setCountryCode(i);
                    return i;
                }
            }
        }
        phonenumber.setCountryCode(0);
        return 0;
    }

    String maybeStripExtension(StringBuilder stringbuilder)
    {
        Matcher matcher = EXTN_PATTERN.matcher(stringbuilder);
        if (matcher.find() && isViablePhoneNumber(stringbuilder.substring(0, matcher.start())))
        {
            int i = 1;
            for (int j = matcher.groupCount(); i <= j; i++)
            {
                if (matcher.group(i) != null)
                {
                    String s = matcher.group(i);
                    stringbuilder.delete(matcher.start(), stringbuilder.length());
                    return s;
                }
            }

        }
        return "";
    }

    Phonenumber.PhoneNumber.CountryCodeSource maybeStripInternationalPrefixAndNormalize(StringBuilder stringbuilder, String s)
    {
        if (stringbuilder.length() == 0)
        {
            return Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY;
        }
        Matcher matcher = PLUS_CHARS_PATTERN.matcher(stringbuilder);
        if (matcher.lookingAt())
        {
            stringbuilder.delete(0, matcher.end());
            normalize(stringbuilder);
            return Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN;
        }
        Pattern pattern = regexCache.getPatternForRegex(s);
        normalize(stringbuilder);
        if (parsePrefixAsIdd(pattern, stringbuilder))
        {
            return Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_IDD;
        } else
        {
            return Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY;
        }
    }

    boolean maybeStripNationalPrefixAndCarrierCode(StringBuilder stringbuilder, Phonemetadata.PhoneMetadata phonemetadata, StringBuilder stringbuilder1)
    {
        int i;
        String s;
        i = stringbuilder.length();
        s = phonemetadata.getNationalPrefixForParsing();
        if (i != 0 && s.length() != 0) goto _L2; else goto _L1
_L1:
        Matcher matcher;
        return false;
_L2:
        Pattern pattern;
        boolean flag;
        int j;
        String s1;
        if (!(matcher = regexCache.getPatternForRegex(s).matcher(stringbuilder)).lookingAt())
        {
            continue; /* Loop/switch isn't completed */
        }
        pattern = regexCache.getPatternForRegex(phonemetadata.getGeneralDesc().getNationalNumberPattern());
        flag = pattern.matcher(stringbuilder).matches();
        j = matcher.groupCount();
        s1 = phonemetadata.getNationalPrefixTransformRule();
        if (s1 != null && s1.length() != 0 && matcher.group(j) != null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (!flag || pattern.matcher(stringbuilder.substring(matcher.end())).matches())
        {
            if (stringbuilder1 != null && j > 0 && matcher.group(j) != null)
            {
                stringbuilder1.append(matcher.group(1));
            }
            stringbuilder.delete(0, matcher.end());
            return true;
        }
        if (true) goto _L1; else goto _L3
_L3:
        StringBuilder stringbuilder2 = new StringBuilder(stringbuilder);
        stringbuilder2.replace(0, i, matcher.replaceFirst(s1));
        if (!flag || pattern.matcher(stringbuilder2.toString()).matches())
        {
            if (stringbuilder1 != null && j > 1)
            {
                stringbuilder1.append(matcher.group(1));
            }
            stringbuilder.replace(0, stringbuilder.length(), stringbuilder2.toString());
            return true;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public Phonenumber.PhoneNumber parse(String s, String s1)
        throws NumberParseException
    {
        Phonenumber.PhoneNumber phonenumber = new Phonenumber.PhoneNumber();
        parse(s, s1, phonenumber);
        return phonenumber;
    }

    public void parse(String s, String s1, Phonenumber.PhoneNumber phonenumber)
        throws NumberParseException
    {
        parseHelper(s, s1, false, true, phonenumber);
    }

    public Phonenumber.PhoneNumber parseAndKeepRawInput(String s, String s1)
        throws NumberParseException
    {
        Phonenumber.PhoneNumber phonenumber = new Phonenumber.PhoneNumber();
        parseAndKeepRawInput(s, s1, phonenumber);
        return phonenumber;
    }

    public void parseAndKeepRawInput(String s, String s1, Phonenumber.PhoneNumber phonenumber)
        throws NumberParseException
    {
        parseHelper(s, s1, true, true, phonenumber);
    }

    public boolean truncateTooLongNumber(Phonenumber.PhoneNumber phonenumber)
    {
        if (isValidNumber(phonenumber))
        {
            return true;
        }
        Phonenumber.PhoneNumber phonenumber1 = new Phonenumber.PhoneNumber();
        phonenumber1.mergeFrom(phonenumber);
        long l = phonenumber.getNationalNumber();
        do
        {
            l /= 10L;
            phonenumber1.setNationalNumber(l);
            if (isPossibleNumberWithReason(phonenumber1) == ValidationResult.TOO_SHORT || l == 0L)
            {
                return false;
            }
        } while (!isValidNumber(phonenumber1));
        phonenumber.setNationalNumber(l);
        return true;
    }

    static 
    {
        HashMap hashmap = new HashMap();
        hashmap.put(Integer.valueOf(52), "1");
        hashmap.put(Integer.valueOf(54), "9");
        MOBILE_TOKEN_MAPPINGS = Collections.unmodifiableMap(hashmap);
        HashMap hashmap1 = new HashMap();
        hashmap1.put(Character.valueOf('0'), Character.valueOf('0'));
        hashmap1.put(Character.valueOf('1'), Character.valueOf('1'));
        hashmap1.put(Character.valueOf('2'), Character.valueOf('2'));
        hashmap1.put(Character.valueOf('3'), Character.valueOf('3'));
        hashmap1.put(Character.valueOf('4'), Character.valueOf('4'));
        hashmap1.put(Character.valueOf('5'), Character.valueOf('5'));
        hashmap1.put(Character.valueOf('6'), Character.valueOf('6'));
        hashmap1.put(Character.valueOf('7'), Character.valueOf('7'));
        hashmap1.put(Character.valueOf('8'), Character.valueOf('8'));
        hashmap1.put(Character.valueOf('9'), Character.valueOf('9'));
        HashMap hashmap2 = new HashMap(40);
        hashmap2.put(Character.valueOf('A'), Character.valueOf('2'));
        hashmap2.put(Character.valueOf('B'), Character.valueOf('2'));
        hashmap2.put(Character.valueOf('C'), Character.valueOf('2'));
        hashmap2.put(Character.valueOf('D'), Character.valueOf('3'));
        hashmap2.put(Character.valueOf('E'), Character.valueOf('3'));
        hashmap2.put(Character.valueOf('F'), Character.valueOf('3'));
        hashmap2.put(Character.valueOf('G'), Character.valueOf('4'));
        hashmap2.put(Character.valueOf('H'), Character.valueOf('4'));
        hashmap2.put(Character.valueOf('I'), Character.valueOf('4'));
        hashmap2.put(Character.valueOf('J'), Character.valueOf('5'));
        hashmap2.put(Character.valueOf('K'), Character.valueOf('5'));
        hashmap2.put(Character.valueOf('L'), Character.valueOf('5'));
        hashmap2.put(Character.valueOf('M'), Character.valueOf('6'));
        hashmap2.put(Character.valueOf('N'), Character.valueOf('6'));
        hashmap2.put(Character.valueOf('O'), Character.valueOf('6'));
        hashmap2.put(Character.valueOf('P'), Character.valueOf('7'));
        hashmap2.put(Character.valueOf('Q'), Character.valueOf('7'));
        hashmap2.put(Character.valueOf('R'), Character.valueOf('7'));
        hashmap2.put(Character.valueOf('S'), Character.valueOf('7'));
        hashmap2.put(Character.valueOf('T'), Character.valueOf('8'));
        hashmap2.put(Character.valueOf('U'), Character.valueOf('8'));
        hashmap2.put(Character.valueOf('V'), Character.valueOf('8'));
        hashmap2.put(Character.valueOf('W'), Character.valueOf('9'));
        hashmap2.put(Character.valueOf('X'), Character.valueOf('9'));
        hashmap2.put(Character.valueOf('Y'), Character.valueOf('9'));
        hashmap2.put(Character.valueOf('Z'), Character.valueOf('9'));
        ALPHA_MAPPINGS = Collections.unmodifiableMap(hashmap2);
        HashMap hashmap3 = new HashMap(100);
        hashmap3.putAll(ALPHA_MAPPINGS);
        hashmap3.putAll(hashmap1);
        ALPHA_PHONE_MAPPINGS = Collections.unmodifiableMap(hashmap3);
        HashMap hashmap4 = new HashMap();
        hashmap4.putAll(hashmap1);
        hashmap4.put(Character.valueOf('+'), Character.valueOf('+'));
        hashmap4.put(Character.valueOf('*'), Character.valueOf('*'));
        DIALLABLE_CHAR_MAPPINGS = Collections.unmodifiableMap(hashmap4);
        HashMap hashmap5 = new HashMap();
        char c;
        for (Iterator iterator = ALPHA_MAPPINGS.keySet().iterator(); iterator.hasNext(); hashmap5.put(Character.valueOf(c), Character.valueOf(c)))
        {
            c = ((Character)iterator.next()).charValue();
            hashmap5.put(Character.valueOf(Character.toLowerCase(c)), Character.valueOf(c));
        }

        hashmap5.putAll(hashmap1);
        hashmap5.put(Character.valueOf('-'), Character.valueOf('-'));
        hashmap5.put(Character.valueOf('\uFF0D'), Character.valueOf('-'));
        hashmap5.put(Character.valueOf('\u2010'), Character.valueOf('-'));
        hashmap5.put(Character.valueOf('\u2011'), Character.valueOf('-'));
        hashmap5.put(Character.valueOf('\u2012'), Character.valueOf('-'));
        hashmap5.put(Character.valueOf('\u2013'), Character.valueOf('-'));
        hashmap5.put(Character.valueOf('\u2014'), Character.valueOf('-'));
        hashmap5.put(Character.valueOf('\u2015'), Character.valueOf('-'));
        hashmap5.put(Character.valueOf('\u2212'), Character.valueOf('-'));
        hashmap5.put(Character.valueOf('/'), Character.valueOf('/'));
        hashmap5.put(Character.valueOf('\uFF0F'), Character.valueOf('/'));
        hashmap5.put(Character.valueOf(' '), Character.valueOf(' '));
        hashmap5.put(Character.valueOf('\u3000'), Character.valueOf(' '));
        hashmap5.put(Character.valueOf('\u2060'), Character.valueOf(' '));
        hashmap5.put(Character.valueOf('.'), Character.valueOf('.'));
        hashmap5.put(Character.valueOf('\uFF0E'), Character.valueOf('.'));
        ALL_PLUS_NUMBER_GROUPING_SYMBOLS = Collections.unmodifiableMap(hashmap5);
        String s = String.valueOf(Arrays.toString(ALPHA_MAPPINGS.keySet().toArray()).replaceAll("[, \\[\\]]", ""));
        String s1 = String.valueOf(Arrays.toString(ALPHA_MAPPINGS.keySet().toArray()).toLowerCase().replaceAll("[, \\[\\]]", ""));
        String s2;
        String s3;
        String s4;
        String s5;
        String s6;
        String s7;
        String s8;
        String s9;
        String s10;
        if (s1.length() != 0)
        {
            s2 = s.concat(s1);
        } else
        {
            s2 = new String(s);
        }
        VALID_ALPHA = s2;
        s3 = String.valueOf(String.valueOf("\\p{Nd}{2}|[+\uFF0B]*+(?:[-x\u2010-\u2015\u2212\u30FC\uFF0D-\uFF0F \240\255\u200B\u2060\u3000()\uFF08\uFF09\uFF3B\uFF3D.\\[\\]/~\u2053\u223C\uFF5E*]*\\p{Nd}){3,}[-x\u2010-\u2015\u2212\u30FC\uFF0D-\uFF0F \240\255\u200B\u2060\u3000()\uFF08\uFF09\uFF3B\uFF3D.\\[\\]/~\u2053\u223C\uFF5E*"));
        s4 = String.valueOf(String.valueOf(VALID_ALPHA));
        s5 = String.valueOf(String.valueOf("\\p{Nd}"));
        VALID_PHONE_NUMBER = (new StringBuilder(2 + s3.length() + s4.length() + s5.length())).append(s3).append(s4).append(s5).append("]*").toString();
        s6 = String.valueOf("x\uFF58#\uFF03~\uFF5E");
        if (s6.length() != 0)
        {
            s7 = ",".concat(s6);
        } else
        {
            s7 = new String(",");
        }
        EXTN_PATTERNS_FOR_PARSING = createExtnPattern(s7);
        s8 = String.valueOf(String.valueOf(EXTN_PATTERNS_FOR_PARSING));
        EXTN_PATTERN = Pattern.compile((new StringBuilder(5 + s8.length())).append("(?:").append(s8).append(")$").toString(), 66);
        s9 = String.valueOf(String.valueOf(VALID_PHONE_NUMBER));
        s10 = String.valueOf(String.valueOf(EXTN_PATTERNS_FOR_PARSING));
        VALID_PHONE_NUMBER_PATTERN = Pattern.compile((new StringBuilder(5 + s9.length() + s10.length())).append(s9).append("(?:").append(s10).append(")?").toString(), 66);
    }
}
