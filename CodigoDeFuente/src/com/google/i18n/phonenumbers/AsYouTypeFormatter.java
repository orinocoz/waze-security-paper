// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.google.i18n.phonenumbers:
//            PhoneNumberUtil, RegexCache

public class AsYouTypeFormatter
{

    private static final Pattern CHARACTER_CLASS_PATTERN = Pattern.compile("\\[([^\\[\\]])*\\]");
    private static final Pattern DIGIT_PATTERN = Pattern.compile("\u2008");
    private static final String DIGIT_PLACEHOLDER = "\u2008";
    private static final Pattern ELIGIBLE_FORMAT_PATTERN = Pattern.compile("[-x\u2010-\u2015\u2212\u30FC\uFF0D-\uFF0F \240\255\u200B\u2060\u3000()\uFF08\uFF09\uFF3B\uFF3D.\\[\\]/~\u2053\u223C\uFF5E]*(\\$\\d[-x\u2010-\u2015\u2212\u30FC\uFF0D-\uFF0F \240\255\u200B\u2060\u3000()\uFF08\uFF09\uFF3B\uFF3D.\\[\\]/~\u2053\u223C\uFF5E]*)+");
    private static final Phonemetadata.PhoneMetadata EMPTY_METADATA = (new Phonemetadata.PhoneMetadata()).setInternationalPrefix("NA");
    private static final int MIN_LEADING_DIGITS_LENGTH = 3;
    private static final Pattern NATIONAL_PREFIX_SEPARATORS_PATTERN = Pattern.compile("[- ]");
    private static final char SEPARATOR_BEFORE_NATIONAL_NUMBER = 32;
    private static final Pattern STANDALONE_DIGIT_PATTERN = Pattern.compile("\\d(?=[^,}][^,}])");
    private boolean ableToFormat;
    private StringBuilder accruedInput;
    private StringBuilder accruedInputWithoutFormatting;
    private String currentFormattingPattern;
    private Phonemetadata.PhoneMetadata currentMetadata;
    private String currentOutput;
    private String defaultCountry;
    private Phonemetadata.PhoneMetadata defaultMetadata;
    private String extractedNationalPrefix;
    private StringBuilder formattingTemplate;
    private boolean inputHasFormatting;
    private boolean isCompleteNumber;
    private boolean isExpectingCountryCallingCode;
    private int lastMatchPosition;
    private StringBuilder nationalNumber;
    private int originalPosition;
    private final PhoneNumberUtil phoneUtil = PhoneNumberUtil.getInstance();
    private int positionToRemember;
    private List possibleFormats;
    private StringBuilder prefixBeforeNationalNumber;
    private RegexCache regexCache;
    private boolean shouldAddSpaceAfterNationalPrefix;

    AsYouTypeFormatter(String s)
    {
        currentOutput = "";
        formattingTemplate = new StringBuilder();
        currentFormattingPattern = "";
        accruedInput = new StringBuilder();
        accruedInputWithoutFormatting = new StringBuilder();
        ableToFormat = true;
        inputHasFormatting = false;
        isCompleteNumber = false;
        isExpectingCountryCallingCode = false;
        lastMatchPosition = 0;
        originalPosition = 0;
        positionToRemember = 0;
        prefixBeforeNationalNumber = new StringBuilder();
        shouldAddSpaceAfterNationalPrefix = false;
        extractedNationalPrefix = "";
        nationalNumber = new StringBuilder();
        possibleFormats = new ArrayList();
        regexCache = new RegexCache(64);
        defaultCountry = s;
        currentMetadata = getMetadataForRegion(defaultCountry);
        defaultMetadata = currentMetadata;
    }

    private boolean ableToExtractLongerNdd()
    {
        if (extractedNationalPrefix.length() > 0)
        {
            nationalNumber.insert(0, extractedNationalPrefix);
            int i = prefixBeforeNationalNumber.lastIndexOf(extractedNationalPrefix);
            prefixBeforeNationalNumber.setLength(i);
        }
        boolean flag = extractedNationalPrefix.equals(removeNationalPrefixFromNationalNumber());
        boolean flag1 = false;
        if (!flag)
        {
            flag1 = true;
        }
        return flag1;
    }

    private String appendNationalNumber(String s)
    {
        int i = prefixBeforeNationalNumber.length();
        if (shouldAddSpaceAfterNationalPrefix && i > 0 && prefixBeforeNationalNumber.charAt(i - 1) != ' ')
        {
            String s3 = String.valueOf(String.valueOf(new String(prefixBeforeNationalNumber)));
            String s4 = String.valueOf(String.valueOf(s));
            return (new StringBuilder(1 + s3.length() + s4.length())).append(s3).append(' ').append(s4).toString();
        } else
        {
            String s1 = String.valueOf(String.valueOf(prefixBeforeNationalNumber));
            String s2 = String.valueOf(String.valueOf(s));
            return (new StringBuilder(0 + s1.length() + s2.length())).append(s1).append(s2).toString();
        }
    }

    private String attemptToChooseFormattingPattern()
    {
        if (nationalNumber.length() >= 3)
        {
            getAvailableFormats(nationalNumber.toString());
            String s = attemptToFormatAccruedDigits();
            if (s.length() > 0)
            {
                return s;
            }
            String s1;
            if (maybeCreateNewTemplate())
            {
                s1 = inputAccruedNationalNumber();
            } else
            {
                s1 = accruedInput.toString();
            }
            return s1;
        } else
        {
            return appendNationalNumber(nationalNumber.toString());
        }
    }

    private String attemptToChoosePatternWithPrefixExtracted()
    {
        ableToFormat = true;
        isExpectingCountryCallingCode = false;
        possibleFormats.clear();
        return attemptToChooseFormattingPattern();
    }

    private boolean attemptToExtractCountryCallingCode()
    {
        if (nationalNumber.length() != 0) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        StringBuilder stringbuilder;
        int i;
        stringbuilder = new StringBuilder();
        i = phoneUtil.extractCountryCode(nationalNumber, stringbuilder);
        if (i == 0) goto _L1; else goto _L3
_L3:
        String s;
        nationalNumber.setLength(0);
        nationalNumber.append(stringbuilder);
        s = phoneUtil.getRegionCodeForCountryCode(i);
        if (!"001".equals(s)) goto _L5; else goto _L4
_L4:
        currentMetadata = phoneUtil.getMetadataForNonGeographicalRegion(i);
_L7:
        String s1 = Integer.toString(i);
        prefixBeforeNationalNumber.append(s1).append(' ');
        extractedNationalPrefix = "";
        return true;
_L5:
        if (!s.equals(defaultCountry))
        {
            currentMetadata = getMetadataForRegion(s);
        }
        if (true) goto _L7; else goto _L6
_L6:
    }

    private boolean attemptToExtractIdd()
    {
        RegexCache regexcache = regexCache;
        String s = String.valueOf("\\+|");
        String s1 = String.valueOf(currentMetadata.getInternationalPrefix());
        String s2;
        Matcher matcher;
        if (s1.length() != 0)
        {
            s2 = s.concat(s1);
        } else
        {
            s2 = new String(s);
        }
        matcher = regexcache.getPatternForRegex(s2).matcher(accruedInputWithoutFormatting);
        if (matcher.lookingAt())
        {
            isCompleteNumber = true;
            int i = matcher.end();
            nationalNumber.setLength(0);
            nationalNumber.append(accruedInputWithoutFormatting.substring(i));
            prefixBeforeNationalNumber.setLength(0);
            prefixBeforeNationalNumber.append(accruedInputWithoutFormatting.substring(0, i));
            if (accruedInputWithoutFormatting.charAt(0) != '+')
            {
                prefixBeforeNationalNumber.append(' ');
            }
            return true;
        } else
        {
            return false;
        }
    }

    private boolean createFormattingTemplate(Phonemetadata.NumberFormat numberformat)
    {
        String s = numberformat.getPattern();
        if (s.indexOf('|') == -1)
        {
            String s1 = CHARACTER_CLASS_PATTERN.matcher(s).replaceAll("\\\\d");
            String s2 = STANDALONE_DIGIT_PATTERN.matcher(s1).replaceAll("\\\\d");
            formattingTemplate.setLength(0);
            String s3 = getFormattingTemplate(s2, numberformat.getFormat());
            if (s3.length() > 0)
            {
                formattingTemplate.append(s3);
                return true;
            }
        }
        return false;
    }

    private void getAvailableFormats(String s)
    {
        List list;
        boolean flag;
        Iterator iterator;
        if (isCompleteNumber && currentMetadata.intlNumberFormatSize() > 0)
        {
            list = currentMetadata.intlNumberFormats();
        } else
        {
            list = currentMetadata.numberFormats();
        }
        flag = currentMetadata.hasNationalPrefix();
        iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Phonemetadata.NumberFormat numberformat = (Phonemetadata.NumberFormat)iterator.next();
            if ((!flag || isCompleteNumber || numberformat.isNationalPrefixOptionalWhenFormatting() || PhoneNumberUtil.formattingRuleHasFirstGroupOnly(numberformat.getNationalPrefixFormattingRule())) && isFormatEligible(numberformat.getFormat()))
            {
                possibleFormats.add(numberformat);
            }
        } while (true);
        narrowDownPossibleFormats(s);
    }

    private String getFormattingTemplate(String s, String s1)
    {
        Matcher matcher = regexCache.getPatternForRegex(s).matcher("999999999999999");
        matcher.find();
        String s2 = matcher.group();
        if (s2.length() < nationalNumber.length())
        {
            return "";
        } else
        {
            return s2.replaceAll(s, s1).replaceAll("9", "\u2008");
        }
    }

    private Phonemetadata.PhoneMetadata getMetadataForRegion(String s)
    {
        int i = phoneUtil.getCountryCodeForRegion(s);
        String s1 = phoneUtil.getRegionCodeForCountryCode(i);
        Phonemetadata.PhoneMetadata phonemetadata = phoneUtil.getMetadataForRegion(s1);
        if (phonemetadata != null)
        {
            return phonemetadata;
        } else
        {
            return EMPTY_METADATA;
        }
    }

    private String inputAccruedNationalNumber()
    {
        int i = nationalNumber.length();
        if (i > 0)
        {
            String s = "";
            for (int j = 0; j < i; j++)
            {
                s = inputDigitHelper(nationalNumber.charAt(j));
            }

            if (ableToFormat)
            {
                return appendNationalNumber(s);
            } else
            {
                return accruedInput.toString();
            }
        } else
        {
            return prefixBeforeNationalNumber.toString();
        }
    }

    private String inputDigitHelper(char c)
    {
        Matcher matcher = DIGIT_PATTERN.matcher(formattingTemplate);
        if (matcher.find(lastMatchPosition))
        {
            String s = matcher.replaceFirst(Character.toString(c));
            formattingTemplate.replace(0, s.length(), s);
            lastMatchPosition = matcher.start();
            return formattingTemplate.substring(0, 1 + lastMatchPosition);
        }
        if (possibleFormats.size() == 1)
        {
            ableToFormat = false;
        }
        currentFormattingPattern = "";
        return accruedInput.toString();
    }

    private String inputDigitWithOptionToRememberPosition(char c, boolean flag)
    {
        String s1;
        accruedInput.append(c);
        if (flag)
        {
            originalPosition = accruedInput.length();
        }
        if (!isDigitOrLeadingPlusSign(c))
        {
            ableToFormat = false;
            inputHasFormatting = true;
        } else
        {
            c = normalizeAndAccrueDigitsAndPlusSign(c, flag);
        }
        if (ableToFormat) goto _L2; else goto _L1
_L1:
        if (!inputHasFormatting) goto _L4; else goto _L3
_L3:
        s1 = accruedInput.toString();
_L10:
        return s1;
_L4:
        if (attemptToExtractIdd())
        {
            if (attemptToExtractCountryCallingCode())
            {
                return attemptToChoosePatternWithPrefixExtracted();
            }
        } else
        if (ableToExtractLongerNdd())
        {
            prefixBeforeNationalNumber.append(' ');
            return attemptToChoosePatternWithPrefixExtracted();
        }
        return accruedInput.toString();
_L2:
        accruedInputWithoutFormatting.length();
        JVM INSTR tableswitch 0 3: default 164
    //                   0 244
    //                   1 244
    //                   2 244
    //                   3 252;
           goto _L5 _L6 _L6 _L6 _L7
_L5:
        if (isExpectingCountryCallingCode)
        {
            if (attemptToExtractCountryCallingCode())
            {
                isExpectingCountryCallingCode = false;
            }
            String s3 = String.valueOf(String.valueOf(prefixBeforeNationalNumber));
            String s4 = String.valueOf(String.valueOf(nationalNumber.toString()));
            return (new StringBuilder(0 + s3.length() + s4.length())).append(s3).append(s4).toString();
        }
        break; /* Loop/switch isn't completed */
_L6:
        return accruedInput.toString();
_L7:
        if (attemptToExtractIdd())
        {
            isExpectingCountryCallingCode = true;
        } else
        {
            extractedNationalPrefix = removeNationalPrefixFromNationalNumber();
            return attemptToChooseFormattingPattern();
        }
        if (true) goto _L5; else goto _L8
_L8:
        if (possibleFormats.size() > 0)
        {
            String s = inputDigitHelper(c);
            s1 = attemptToFormatAccruedDigits();
            if (s1.length() <= 0)
            {
                narrowDownPossibleFormats(nationalNumber.toString());
                if (maybeCreateNewTemplate())
                {
                    return inputAccruedNationalNumber();
                }
                String s2;
                if (ableToFormat)
                {
                    s2 = appendNationalNumber(s);
                } else
                {
                    s2 = accruedInput.toString();
                }
                return s2;
            }
        } else
        {
            return attemptToChooseFormattingPattern();
        }
        if (true) goto _L10; else goto _L9
_L9:
    }

    private boolean isDigitOrLeadingPlusSign(char c)
    {
        return Character.isDigit(c) || accruedInput.length() == 1 && PhoneNumberUtil.PLUS_CHARS_PATTERN.matcher(Character.toString(c)).matches();
    }

    private boolean isFormatEligible(String s)
    {
        return ELIGIBLE_FORMAT_PATTERN.matcher(s).matches();
    }

    private boolean isNanpaNumberWithNationalPrefix()
    {
        return currentMetadata.getCountryCode() == 1 && nationalNumber.charAt(0) == '1' && nationalNumber.charAt(1) != '0' && nationalNumber.charAt(1) != '1';
    }

    private boolean maybeCreateNewTemplate()
    {
        for (Iterator iterator = possibleFormats.iterator(); iterator.hasNext(); iterator.remove())
        {
            Phonemetadata.NumberFormat numberformat = (Phonemetadata.NumberFormat)iterator.next();
            String s = numberformat.getPattern();
            if (currentFormattingPattern.equals(s))
            {
                return false;
            }
            if (createFormattingTemplate(numberformat))
            {
                currentFormattingPattern = s;
                shouldAddSpaceAfterNationalPrefix = NATIONAL_PREFIX_SEPARATORS_PATTERN.matcher(numberformat.getNationalPrefixFormattingRule()).find();
                lastMatchPosition = 0;
                return true;
            }
        }

        ableToFormat = false;
        return false;
    }

    private void narrowDownPossibleFormats(String s)
    {
        int i = -3 + s.length();
        Iterator iterator = possibleFormats.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Phonemetadata.NumberFormat numberformat = (Phonemetadata.NumberFormat)iterator.next();
            if (numberformat.leadingDigitsPatternSize() != 0)
            {
                int j = Math.min(i, -1 + numberformat.leadingDigitsPatternSize());
                if (!regexCache.getPatternForRegex(numberformat.getLeadingDigitsPattern(j)).matcher(s).lookingAt())
                {
                    iterator.remove();
                }
            }
        } while (true);
    }

    private char normalizeAndAccrueDigitsAndPlusSign(char c, boolean flag)
    {
        char c1;
        if (c == '+')
        {
            c1 = c;
            accruedInputWithoutFormatting.append(c);
        } else
        {
            c1 = Character.forDigit(Character.digit(c, 10), 10);
            accruedInputWithoutFormatting.append(c1);
            nationalNumber.append(c1);
        }
        if (flag)
        {
            positionToRemember = accruedInputWithoutFormatting.length();
        }
        return c1;
    }

    private String removeNationalPrefixFromNationalNumber()
    {
        if (!isNanpaNumberWithNationalPrefix()) goto _L2; else goto _L1
_L1:
        int i;
        i = 1;
        prefixBeforeNationalNumber.append('1').append(' ');
        isCompleteNumber = true;
_L4:
        String s = nationalNumber.substring(0, i);
        nationalNumber.delete(0, i);
        return s;
_L2:
        boolean flag = currentMetadata.hasNationalPrefixForParsing();
        i = 0;
        if (flag)
        {
            Matcher matcher = regexCache.getPatternForRegex(currentMetadata.getNationalPrefixForParsing()).matcher(nationalNumber);
            boolean flag1 = matcher.lookingAt();
            i = 0;
            if (flag1)
            {
                int j = matcher.end();
                i = 0;
                if (j > 0)
                {
                    isCompleteNumber = true;
                    i = matcher.end();
                    prefixBeforeNationalNumber.append(nationalNumber.substring(0, i));
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    String attemptToFormatAccruedDigits()
    {
        for (Iterator iterator = possibleFormats.iterator(); iterator.hasNext();)
        {
            Phonemetadata.NumberFormat numberformat = (Phonemetadata.NumberFormat)iterator.next();
            Matcher matcher = regexCache.getPatternForRegex(numberformat.getPattern()).matcher(nationalNumber);
            if (matcher.matches())
            {
                shouldAddSpaceAfterNationalPrefix = NATIONAL_PREFIX_SEPARATORS_PATTERN.matcher(numberformat.getNationalPrefixFormattingRule()).find();
                return appendNationalNumber(matcher.replaceAll(numberformat.getFormat()));
            }
        }

        return "";
    }

    public void clear()
    {
        currentOutput = "";
        accruedInput.setLength(0);
        accruedInputWithoutFormatting.setLength(0);
        formattingTemplate.setLength(0);
        lastMatchPosition = 0;
        currentFormattingPattern = "";
        prefixBeforeNationalNumber.setLength(0);
        extractedNationalPrefix = "";
        nationalNumber.setLength(0);
        ableToFormat = true;
        inputHasFormatting = false;
        positionToRemember = 0;
        originalPosition = 0;
        isCompleteNumber = false;
        isExpectingCountryCallingCode = false;
        possibleFormats.clear();
        shouldAddSpaceAfterNationalPrefix = false;
        if (!currentMetadata.equals(defaultMetadata))
        {
            currentMetadata = getMetadataForRegion(defaultCountry);
        }
    }

    String getExtractedNationalPrefix()
    {
        return extractedNationalPrefix;
    }

    public int getRememberedPosition()
    {
        int j;
        if (!ableToFormat)
        {
            j = originalPosition;
        } else
        {
            int i = 0;
            j = 0;
            while (i < positionToRemember && j < currentOutput.length()) 
            {
                if (accruedInputWithoutFormatting.charAt(i) == currentOutput.charAt(j))
                {
                    i++;
                }
                j++;
            }
        }
        return j;
    }

    public String inputDigit(char c)
    {
        currentOutput = inputDigitWithOptionToRememberPosition(c, false);
        return currentOutput;
    }

    public String inputDigitAndRememberPosition(char c)
    {
        currentOutput = inputDigitWithOptionToRememberPosition(c, true);
        return currentOutput;
    }

}
