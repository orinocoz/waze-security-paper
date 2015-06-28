// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;


public class NumberParseException extends Exception
{
    public static final class ErrorType extends Enum
    {

        private static final ErrorType $VALUES[];
        public static final ErrorType INVALID_COUNTRY_CODE;
        public static final ErrorType NOT_A_NUMBER;
        public static final ErrorType TOO_LONG;
        public static final ErrorType TOO_SHORT_AFTER_IDD;
        public static final ErrorType TOO_SHORT_NSN;

        public static ErrorType valueOf(String s)
        {
            return (ErrorType)Enum.valueOf(com/google/i18n/phonenumbers/NumberParseException$ErrorType, s);
        }

        public static ErrorType[] values()
        {
            return (ErrorType[])$VALUES.clone();
        }

        static 
        {
            INVALID_COUNTRY_CODE = new ErrorType("INVALID_COUNTRY_CODE", 0);
            NOT_A_NUMBER = new ErrorType("NOT_A_NUMBER", 1);
            TOO_SHORT_AFTER_IDD = new ErrorType("TOO_SHORT_AFTER_IDD", 2);
            TOO_SHORT_NSN = new ErrorType("TOO_SHORT_NSN", 3);
            TOO_LONG = new ErrorType("TOO_LONG", 4);
            ErrorType aerrortype[] = new ErrorType[5];
            aerrortype[0] = INVALID_COUNTRY_CODE;
            aerrortype[1] = NOT_A_NUMBER;
            aerrortype[2] = TOO_SHORT_AFTER_IDD;
            aerrortype[3] = TOO_SHORT_NSN;
            aerrortype[4] = TOO_LONG;
            $VALUES = aerrortype;
        }

        private ErrorType(String s, int i)
        {
            super(s, i);
        }
    }


    private ErrorType errorType;
    private String message;

    public NumberParseException(ErrorType errortype, String s)
    {
        super(s);
        message = s;
        errorType = errortype;
    }

    public ErrorType getErrorType()
    {
        return errorType;
    }

    public String toString()
    {
        String s = String.valueOf(String.valueOf(errorType));
        String s1 = String.valueOf(String.valueOf(message));
        return (new StringBuilder(14 + s.length() + s1.length())).append("Error type: ").append(s).append(". ").append(s1).toString();
    }
}
