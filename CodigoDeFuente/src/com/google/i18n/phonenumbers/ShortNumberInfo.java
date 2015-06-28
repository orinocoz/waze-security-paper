// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.internal.MatcherApi;
import com.google.i18n.phonenumbers.internal.RegexBasedMatcher;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
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
//            CountryCodeToRegionCodeMap, MetadataManager, PhoneNumberUtil

public class ShortNumberInfo
{
    public static final class ShortNumberCost extends Enum
    {

        private static final ShortNumberCost $VALUES[];
        public static final ShortNumberCost PREMIUM_RATE;
        public static final ShortNumberCost STANDARD_RATE;
        public static final ShortNumberCost TOLL_FREE;
        public static final ShortNumberCost UNKNOWN_COST;

        public static ShortNumberCost valueOf(String s)
        {
            return (ShortNumberCost)Enum.valueOf(com/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost, s);
        }

        public static ShortNumberCost[] values()
        {
            return (ShortNumberCost[])$VALUES.clone();
        }

        static 
        {
            TOLL_FREE = new ShortNumberCost("TOLL_FREE", 0);
            STANDARD_RATE = new ShortNumberCost("STANDARD_RATE", 1);
            PREMIUM_RATE = new ShortNumberCost("PREMIUM_RATE", 2);
            UNKNOWN_COST = new ShortNumberCost("UNKNOWN_COST", 3);
            ShortNumberCost ashortnumbercost[] = new ShortNumberCost[4];
            ashortnumbercost[0] = TOLL_FREE;
            ashortnumbercost[1] = STANDARD_RATE;
            ashortnumbercost[2] = PREMIUM_RATE;
            ashortnumbercost[3] = UNKNOWN_COST;
            $VALUES = ashortnumbercost;
        }

        private ShortNumberCost(String s, int i)
        {
            super(s, i);
        }
    }


    private static final ShortNumberInfo INSTANCE = new ShortNumberInfo(RegexBasedMatcher.create());
    private static final Set REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT;
    private static final Logger logger = Logger.getLogger(com/google/i18n/phonenumbers/ShortNumberInfo.getName());
    private final Map countryCallingCodeToRegionCodeMap = CountryCodeToRegionCodeMap.getCountryCodeToRegionCodeMap();
    private final MatcherApi matcherApi;

    ShortNumberInfo(MatcherApi matcherapi)
    {
        matcherApi = matcherapi;
    }

    public static ShortNumberInfo getInstance()
    {
        return INSTANCE;
    }

    private static String getNationalSignificantNumber(Phonenumber.PhoneNumber phonenumber)
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

    private String getRegionCodeForShortNumberFromRegionList(Phonenumber.PhoneNumber phonenumber, List list)
    {
        if (list.size() != 0) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        String s1;
        if (list.size() == 1)
        {
            return (String)list.get(0);
        }
        String s = getNationalSignificantNumber(phonenumber);
        Iterator iterator = list.iterator();
        Phonemetadata.PhoneMetadata phonemetadata;
        do
        {
            if (!iterator.hasNext())
            {
                continue; /* Loop/switch isn't completed */
            }
            s1 = (String)iterator.next();
            phonemetadata = MetadataManager.getShortNumberMetadataForRegion(s1);
        } while (phonemetadata == null || !matchesPossibleNumberAndNationalNumber(s, phonemetadata.getShortCode()));
        break; /* Loop/switch isn't completed */
        if (true) goto _L1; else goto _L3
_L3:
        return s1;
    }

    private List getRegionCodesForCountryCode(int i)
    {
        Object obj = (List)countryCallingCodeToRegionCodeMap.get(Integer.valueOf(i));
        if (obj == null)
        {
            obj = new ArrayList(0);
        }
        return Collections.unmodifiableList(((List) (obj)));
    }

    private boolean matchesEmergencyNumberHelper(String s, String s1, boolean flag)
    {
        String s2 = PhoneNumberUtil.extractPossibleNumber(s);
        Phonemetadata.PhoneMetadata phonemetadata;
        if (!PhoneNumberUtil.PLUS_CHARS_PATTERN.matcher(s2).lookingAt())
        {
            if ((phonemetadata = MetadataManager.getShortNumberMetadataForRegion(s1)) != null && phonemetadata.hasEmergency())
            {
                String s3 = PhoneNumberUtil.normalizeDigitsOnly(s2);
                Phonemetadata.PhoneNumberDesc phonenumberdesc = phonemetadata.getEmergency();
                boolean flag1 = false;
                if (flag)
                {
                    boolean flag2 = REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT.contains(s1);
                    flag1 = false;
                    if (!flag2)
                    {
                        flag1 = true;
                    }
                }
                return matcherApi.matchesNationalNumber(s3, phonenumberdesc, flag1);
            }
        }
        return false;
    }

    private boolean matchesPossibleNumberAndNationalNumber(String s, Phonemetadata.PhoneNumberDesc phonenumberdesc)
    {
        boolean flag = matcherApi.matchesPossibleNumber(s, phonenumberdesc);
        boolean flag1 = false;
        if (flag)
        {
            boolean flag2 = matcherApi.matchesNationalNumber(s, phonenumberdesc, false);
            flag1 = false;
            if (flag2)
            {
                flag1 = true;
            }
        }
        return flag1;
    }

    public boolean connectsToEmergencyNumber(String s, String s1)
    {
        return matchesEmergencyNumberHelper(s, s1, true);
    }

    String getExampleShortNumber(String s)
    {
        Phonemetadata.PhoneMetadata phonemetadata = MetadataManager.getShortNumberMetadataForRegion(s);
        if (phonemetadata == null)
        {
            return "";
        }
        Phonemetadata.PhoneNumberDesc phonenumberdesc = phonemetadata.getShortCode();
        if (phonenumberdesc.hasExampleNumber())
        {
            return phonenumberdesc.getExampleNumber();
        } else
        {
            return "";
        }
    }

    String getExampleShortNumberForCost(String s, ShortNumberCost shortnumbercost)
    {
        Phonemetadata.PhoneMetadata phonemetadata;
        int i;
        Phonemetadata.PhoneNumberDesc phonenumberdesc;
        phonemetadata = MetadataManager.getShortNumberMetadataForRegion(s);
        if (phonemetadata == null)
        {
            return "";
        }
        static class _cls1
        {

            static final int $SwitchMap$com$google$i18n$phonenumbers$ShortNumberInfo$ShortNumberCost[];

            static 
            {
                $SwitchMap$com$google$i18n$phonenumbers$ShortNumberInfo$ShortNumberCost = new int[ShortNumberCost.values().length];
                try
                {
                    $SwitchMap$com$google$i18n$phonenumbers$ShortNumberInfo$ShortNumberCost[ShortNumberCost.PREMIUM_RATE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$google$i18n$phonenumbers$ShortNumberInfo$ShortNumberCost[ShortNumberCost.UNKNOWN_COST.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$google$i18n$phonenumbers$ShortNumberInfo$ShortNumberCost[ShortNumberCost.STANDARD_RATE.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$google$i18n$phonenumbers$ShortNumberInfo$ShortNumberCost[ShortNumberCost.TOLL_FREE.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3)
                {
                    return;
                }
            }
        }

        i = _cls1..SwitchMap.com.google.i18n.phonenumbers.ShortNumberInfo.ShortNumberCost[shortnumbercost.ordinal()];
        phonenumberdesc = null;
        i;
        JVM INSTR tableswitch 1 4: default 56
    //                   1 93
    //                   2 56
    //                   3 84
    //                   4 75;
           goto _L1 _L2 _L1 _L3 _L4
_L1:
        break; /* Loop/switch isn't completed */
_L2:
        break MISSING_BLOCK_LABEL_93;
_L5:
        if (phonenumberdesc != null && phonenumberdesc.hasExampleNumber())
        {
            return phonenumberdesc.getExampleNumber();
        } else
        {
            return "";
        }
_L4:
        phonenumberdesc = phonemetadata.getTollFree();
          goto _L5
_L3:
        phonenumberdesc = phonemetadata.getStandardRate();
          goto _L5
        phonenumberdesc = phonemetadata.getPremiumRate();
          goto _L5
    }

    public ShortNumberCost getExpectedCost(Phonenumber.PhoneNumber phonenumber)
    {
        List list = getRegionCodesForCountryCode(phonenumber.getCountryCode());
        if (list.size() != 0) goto _L2; else goto _L1
_L1:
        ShortNumberCost shortnumbercost = ShortNumberCost.UNKNOWN_COST;
_L4:
        return shortnumbercost;
_L2:
        if (list.size() == 1)
        {
            return getExpectedCostForRegion(phonenumber, (String)list.get(0));
        }
        shortnumbercost = ShortNumberCost.TOLL_FREE;
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                continue;
            }
            ShortNumberCost shortnumbercost1 = getExpectedCostForRegion(phonenumber, (String)iterator.next());
            switch (_cls1..SwitchMap.com.google.i18n.phonenumbers.ShortNumberInfo.ShortNumberCost[shortnumbercost1.ordinal()])
            {
            default:
                Logger logger1 = logger;
                Level level = Level.SEVERE;
                String s = String.valueOf(String.valueOf(shortnumbercost1));
                logger1.log(level, (new StringBuilder(30 + s.length())).append("Unrecognised cost for region: ").append(s).toString());
                break;

            case 1: // '\001'
                return ShortNumberCost.PREMIUM_RATE;

            case 2: // '\002'
                shortnumbercost = ShortNumberCost.UNKNOWN_COST;
                break;

            case 3: // '\003'
                if (shortnumbercost != ShortNumberCost.UNKNOWN_COST)
                {
                    shortnumbercost = ShortNumberCost.STANDARD_RATE;
                }
                break;

            case 4: // '\004'
                break;
            }
        } while (true);
          goto _L3
        if (true) goto _L4; else goto _L3
_L3:
    }

    public ShortNumberCost getExpectedCostForRegion(Phonenumber.PhoneNumber phonenumber, String s)
    {
        Phonemetadata.PhoneMetadata phonemetadata = MetadataManager.getShortNumberMetadataForRegion(s);
        if (phonemetadata == null)
        {
            return ShortNumberCost.UNKNOWN_COST;
        }
        String s1 = getNationalSignificantNumber(phonenumber);
        if (matchesPossibleNumberAndNationalNumber(s1, phonemetadata.getPremiumRate()))
        {
            return ShortNumberCost.PREMIUM_RATE;
        }
        if (matchesPossibleNumberAndNationalNumber(s1, phonemetadata.getStandardRate()))
        {
            return ShortNumberCost.STANDARD_RATE;
        }
        if (matchesPossibleNumberAndNationalNumber(s1, phonemetadata.getTollFree()))
        {
            return ShortNumberCost.TOLL_FREE;
        }
        if (isEmergencyNumber(s1, s))
        {
            return ShortNumberCost.TOLL_FREE;
        } else
        {
            return ShortNumberCost.UNKNOWN_COST;
        }
    }

    public ShortNumberCost getExpectedCostForRegion(String s, String s1)
    {
        Phonemetadata.PhoneMetadata phonemetadata = MetadataManager.getShortNumberMetadataForRegion(s1);
        if (phonemetadata == null)
        {
            return ShortNumberCost.UNKNOWN_COST;
        }
        if (matchesPossibleNumberAndNationalNumber(s, phonemetadata.getPremiumRate()))
        {
            return ShortNumberCost.PREMIUM_RATE;
        }
        if (matchesPossibleNumberAndNationalNumber(s, phonemetadata.getStandardRate()))
        {
            return ShortNumberCost.STANDARD_RATE;
        }
        if (matchesPossibleNumberAndNationalNumber(s, phonemetadata.getTollFree()))
        {
            return ShortNumberCost.TOLL_FREE;
        }
        if (isEmergencyNumber(s, s1))
        {
            return ShortNumberCost.TOLL_FREE;
        } else
        {
            return ShortNumberCost.UNKNOWN_COST;
        }
    }

    Set getSupportedRegions()
    {
        return Collections.unmodifiableSet(MetadataManager.getShortNumberMetadataSupportedRegions());
    }

    public boolean isCarrierSpecific(Phonenumber.PhoneNumber phonenumber)
    {
        String s = getRegionCodeForShortNumberFromRegionList(phonenumber, getRegionCodesForCountryCode(phonenumber.getCountryCode()));
        String s1 = getNationalSignificantNumber(phonenumber);
        Phonemetadata.PhoneMetadata phonemetadata = MetadataManager.getShortNumberMetadataForRegion(s);
        return phonemetadata != null && matchesPossibleNumberAndNationalNumber(s1, phonemetadata.getCarrierSpecific());
    }

    public boolean isEmergencyNumber(String s, String s1)
    {
        return matchesEmergencyNumberHelper(s, s1, false);
    }

    public boolean isPossibleShortNumber(Phonenumber.PhoneNumber phonenumber)
    {
        List list = getRegionCodesForCountryCode(phonenumber.getCountryCode());
        String s = getNationalSignificantNumber(phonenumber);
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            Phonemetadata.PhoneMetadata phonemetadata = MetadataManager.getShortNumberMetadataForRegion((String)iterator.next());
            if (matcherApi.matchesPossibleNumber(s, phonemetadata.getGeneralDesc()))
            {
                return true;
            }
        }

        return false;
    }

    public boolean isPossibleShortNumberForRegion(Phonenumber.PhoneNumber phonenumber, String s)
    {
        Phonemetadata.PhoneMetadata phonemetadata = MetadataManager.getShortNumberMetadataForRegion(s);
        if (phonemetadata == null)
        {
            return false;
        } else
        {
            return matcherApi.matchesPossibleNumber(getNationalSignificantNumber(phonenumber), phonemetadata.getGeneralDesc());
        }
    }

    public boolean isPossibleShortNumberForRegion(String s, String s1)
    {
        Phonemetadata.PhoneMetadata phonemetadata = MetadataManager.getShortNumberMetadataForRegion(s1);
        if (phonemetadata == null)
        {
            return false;
        } else
        {
            return matcherApi.matchesPossibleNumber(s, phonemetadata.getGeneralDesc());
        }
    }

    public boolean isValidShortNumber(Phonenumber.PhoneNumber phonenumber)
    {
        List list = getRegionCodesForCountryCode(phonenumber.getCountryCode());
        String s = getRegionCodeForShortNumberFromRegionList(phonenumber, list);
        if (list.size() > 1 && s != null)
        {
            return true;
        } else
        {
            return isValidShortNumberForRegion(phonenumber, s);
        }
    }

    public boolean isValidShortNumberForRegion(Phonenumber.PhoneNumber phonenumber, String s)
    {
        Phonemetadata.PhoneMetadata phonemetadata = MetadataManager.getShortNumberMetadataForRegion(s);
        String s1;
        if (phonemetadata != null)
        {
            if (matchesPossibleNumberAndNationalNumber(s1 = getNationalSignificantNumber(phonenumber), phonemetadata.getGeneralDesc()))
            {
                return matchesPossibleNumberAndNationalNumber(s1, phonemetadata.getShortCode());
            }
        }
        return false;
    }

    public boolean isValidShortNumberForRegion(String s, String s1)
    {
        Phonemetadata.PhoneMetadata phonemetadata;
        for (phonemetadata = MetadataManager.getShortNumberMetadataForRegion(s1); phonemetadata == null || !matchesPossibleNumberAndNationalNumber(s, phonemetadata.getGeneralDesc());)
        {
            return false;
        }

        return matchesPossibleNumberAndNationalNumber(s, phonemetadata.getShortCode());
    }

    static 
    {
        REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT = new HashSet();
        REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT.add("BR");
        REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT.add("CL");
        REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT.add("NI");
    }
}
