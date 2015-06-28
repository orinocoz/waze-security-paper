// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;

import java.io.Serializable;

public final class Phonenumber
{
    public static class PhoneNumber
        implements Serializable
    {

        private static final long serialVersionUID = 1L;
        private CountryCodeSource countryCodeSource_;
        private int countryCode_;
        private String extension_;
        private boolean hasCountryCode;
        private boolean hasCountryCodeSource;
        private boolean hasExtension;
        private boolean hasItalianLeadingZero;
        private boolean hasNationalNumber;
        private boolean hasNumberOfLeadingZeros;
        private boolean hasPreferredDomesticCarrierCode;
        private boolean hasRawInput;
        private boolean italianLeadingZero_;
        private long nationalNumber_;
        private int numberOfLeadingZeros_;
        private String preferredDomesticCarrierCode_;
        private String rawInput_;

        public final PhoneNumber clear()
        {
            clearCountryCode();
            clearNationalNumber();
            clearExtension();
            clearItalianLeadingZero();
            clearNumberOfLeadingZeros();
            clearRawInput();
            clearCountryCodeSource();
            clearPreferredDomesticCarrierCode();
            return this;
        }

        public PhoneNumber clearCountryCode()
        {
            hasCountryCode = false;
            countryCode_ = 0;
            return this;
        }

        public PhoneNumber clearCountryCodeSource()
        {
            hasCountryCodeSource = false;
            countryCodeSource_ = CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN;
            return this;
        }

        public PhoneNumber clearExtension()
        {
            hasExtension = false;
            extension_ = "";
            return this;
        }

        public PhoneNumber clearItalianLeadingZero()
        {
            hasItalianLeadingZero = false;
            italianLeadingZero_ = false;
            return this;
        }

        public PhoneNumber clearNationalNumber()
        {
            hasNationalNumber = false;
            nationalNumber_ = 0L;
            return this;
        }

        public PhoneNumber clearNumberOfLeadingZeros()
        {
            hasNumberOfLeadingZeros = false;
            numberOfLeadingZeros_ = 1;
            return this;
        }

        public PhoneNumber clearPreferredDomesticCarrierCode()
        {
            hasPreferredDomesticCarrierCode = false;
            preferredDomesticCarrierCode_ = "";
            return this;
        }

        public PhoneNumber clearRawInput()
        {
            hasRawInput = false;
            rawInput_ = "";
            return this;
        }

        public boolean equals(Object obj)
        {
            return (obj instanceof PhoneNumber) && exactlySameAs((PhoneNumber)obj);
        }

        public boolean exactlySameAs(PhoneNumber phonenumber)
        {
            boolean flag = true;
            if (phonenumber == null)
            {
                flag = false;
            } else
            if (this != phonenumber && (countryCode_ != phonenumber.countryCode_ || nationalNumber_ != phonenumber.nationalNumber_ || !extension_.equals(phonenumber.extension_) || italianLeadingZero_ != phonenumber.italianLeadingZero_ || numberOfLeadingZeros_ != phonenumber.numberOfLeadingZeros_ || !rawInput_.equals(phonenumber.rawInput_) || countryCodeSource_ != phonenumber.countryCodeSource_ || !preferredDomesticCarrierCode_.equals(phonenumber.preferredDomesticCarrierCode_) || hasPreferredDomesticCarrierCode() != phonenumber.hasPreferredDomesticCarrierCode()))
            {
                return false;
            }
            return flag;
        }

        public int getCountryCode()
        {
            return countryCode_;
        }

        public CountryCodeSource getCountryCodeSource()
        {
            return countryCodeSource_;
        }

        public String getExtension()
        {
            return extension_;
        }

        public long getNationalNumber()
        {
            return nationalNumber_;
        }

        public int getNumberOfLeadingZeros()
        {
            return numberOfLeadingZeros_;
        }

        public String getPreferredDomesticCarrierCode()
        {
            return preferredDomesticCarrierCode_;
        }

        public String getRawInput()
        {
            return rawInput_;
        }

        public boolean hasCountryCode()
        {
            return hasCountryCode;
        }

        public boolean hasCountryCodeSource()
        {
            return hasCountryCodeSource;
        }

        public boolean hasExtension()
        {
            return hasExtension;
        }

        public boolean hasItalianLeadingZero()
        {
            return hasItalianLeadingZero;
        }

        public boolean hasNationalNumber()
        {
            return hasNationalNumber;
        }

        public boolean hasNumberOfLeadingZeros()
        {
            return hasNumberOfLeadingZeros;
        }

        public boolean hasPreferredDomesticCarrierCode()
        {
            return hasPreferredDomesticCarrierCode;
        }

        public boolean hasRawInput()
        {
            return hasRawInput;
        }

        public int hashCode()
        {
            char c = '\u04CF';
            int i = 53 * (53 * (53 * (2173 + getCountryCode()) + Long.valueOf(getNationalNumber()).hashCode()) + getExtension().hashCode());
            char c1;
            int j;
            if (isItalianLeadingZero())
            {
                c1 = c;
            } else
            {
                c1 = '\u04D5';
            }
            j = 53 * (53 * (53 * (53 * (53 * (i + c1) + getNumberOfLeadingZeros()) + getRawInput().hashCode()) + getCountryCodeSource().hashCode()) + getPreferredDomesticCarrierCode().hashCode());
            if (!hasPreferredDomesticCarrierCode())
            {
                c = '\u04D5';
            }
            return j + c;
        }

        public boolean isItalianLeadingZero()
        {
            return italianLeadingZero_;
        }

        public PhoneNumber mergeFrom(PhoneNumber phonenumber)
        {
            if (phonenumber.hasCountryCode())
            {
                setCountryCode(phonenumber.getCountryCode());
            }
            if (phonenumber.hasNationalNumber())
            {
                setNationalNumber(phonenumber.getNationalNumber());
            }
            if (phonenumber.hasExtension())
            {
                setExtension(phonenumber.getExtension());
            }
            if (phonenumber.hasItalianLeadingZero())
            {
                setItalianLeadingZero(phonenumber.isItalianLeadingZero());
            }
            if (phonenumber.hasNumberOfLeadingZeros())
            {
                setNumberOfLeadingZeros(phonenumber.getNumberOfLeadingZeros());
            }
            if (phonenumber.hasRawInput())
            {
                setRawInput(phonenumber.getRawInput());
            }
            if (phonenumber.hasCountryCodeSource())
            {
                setCountryCodeSource(phonenumber.getCountryCodeSource());
            }
            if (phonenumber.hasPreferredDomesticCarrierCode())
            {
                setPreferredDomesticCarrierCode(phonenumber.getPreferredDomesticCarrierCode());
            }
            return this;
        }

        public PhoneNumber setCountryCode(int i)
        {
            hasCountryCode = true;
            countryCode_ = i;
            return this;
        }

        public PhoneNumber setCountryCodeSource(CountryCodeSource countrycodesource)
        {
            if (countrycodesource == null)
            {
                throw new NullPointerException();
            } else
            {
                hasCountryCodeSource = true;
                countryCodeSource_ = countrycodesource;
                return this;
            }
        }

        public PhoneNumber setExtension(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                hasExtension = true;
                extension_ = s;
                return this;
            }
        }

        public PhoneNumber setItalianLeadingZero(boolean flag)
        {
            hasItalianLeadingZero = true;
            italianLeadingZero_ = flag;
            return this;
        }

        public PhoneNumber setNationalNumber(long l)
        {
            hasNationalNumber = true;
            nationalNumber_ = l;
            return this;
        }

        public PhoneNumber setNumberOfLeadingZeros(int i)
        {
            hasNumberOfLeadingZeros = true;
            numberOfLeadingZeros_ = i;
            return this;
        }

        public PhoneNumber setPreferredDomesticCarrierCode(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                hasPreferredDomesticCarrierCode = true;
                preferredDomesticCarrierCode_ = s;
                return this;
            }
        }

        public PhoneNumber setRawInput(String s)
        {
            if (s == null)
            {
                throw new NullPointerException();
            } else
            {
                hasRawInput = true;
                rawInput_ = s;
                return this;
            }
        }

        public String toString()
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("Country Code: ").append(countryCode_);
            stringbuilder.append(" National Number: ").append(nationalNumber_);
            if (hasItalianLeadingZero() && isItalianLeadingZero())
            {
                stringbuilder.append(" Leading Zero(s): true");
            }
            if (hasNumberOfLeadingZeros())
            {
                stringbuilder.append(" Number of leading zeros: ").append(numberOfLeadingZeros_);
            }
            if (hasExtension())
            {
                stringbuilder.append(" Extension: ").append(extension_);
            }
            if (hasCountryCodeSource())
            {
                stringbuilder.append(" Country Code Source: ").append(countryCodeSource_);
            }
            if (hasPreferredDomesticCarrierCode())
            {
                stringbuilder.append(" Preferred Domestic Carrier Code: ").append(preferredDomesticCarrierCode_);
            }
            return stringbuilder.toString();
        }

        public PhoneNumber()
        {
            countryCode_ = 0;
            nationalNumber_ = 0L;
            extension_ = "";
            italianLeadingZero_ = false;
            numberOfLeadingZeros_ = 1;
            rawInput_ = "";
            preferredDomesticCarrierCode_ = "";
            countryCodeSource_ = CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN;
        }
    }

    public static final class PhoneNumber.CountryCodeSource extends Enum
    {

        private static final PhoneNumber.CountryCodeSource $VALUES[];
        public static final PhoneNumber.CountryCodeSource FROM_DEFAULT_COUNTRY;
        public static final PhoneNumber.CountryCodeSource FROM_NUMBER_WITHOUT_PLUS_SIGN;
        public static final PhoneNumber.CountryCodeSource FROM_NUMBER_WITH_IDD;
        public static final PhoneNumber.CountryCodeSource FROM_NUMBER_WITH_PLUS_SIGN;

        public static PhoneNumber.CountryCodeSource valueOf(String s)
        {
            return (PhoneNumber.CountryCodeSource)Enum.valueOf(com/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource, s);
        }

        public static PhoneNumber.CountryCodeSource[] values()
        {
            return (PhoneNumber.CountryCodeSource[])$VALUES.clone();
        }

        static 
        {
            FROM_NUMBER_WITH_PLUS_SIGN = new PhoneNumber.CountryCodeSource("FROM_NUMBER_WITH_PLUS_SIGN", 0);
            FROM_NUMBER_WITH_IDD = new PhoneNumber.CountryCodeSource("FROM_NUMBER_WITH_IDD", 1);
            FROM_NUMBER_WITHOUT_PLUS_SIGN = new PhoneNumber.CountryCodeSource("FROM_NUMBER_WITHOUT_PLUS_SIGN", 2);
            FROM_DEFAULT_COUNTRY = new PhoneNumber.CountryCodeSource("FROM_DEFAULT_COUNTRY", 3);
            PhoneNumber.CountryCodeSource acountrycodesource[] = new PhoneNumber.CountryCodeSource[4];
            acountrycodesource[0] = FROM_NUMBER_WITH_PLUS_SIGN;
            acountrycodesource[1] = FROM_NUMBER_WITH_IDD;
            acountrycodesource[2] = FROM_NUMBER_WITHOUT_PLUS_SIGN;
            acountrycodesource[3] = FROM_DEFAULT_COUNTRY;
            $VALUES = acountrycodesource;
        }

        private PhoneNumber.CountryCodeSource(String s, int i)
        {
            super(s, i);
        }
    }


    private Phonenumber()
    {
    }
}
