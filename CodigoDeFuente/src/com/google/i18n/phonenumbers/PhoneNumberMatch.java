// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;

import java.util.Arrays;

public final class PhoneNumberMatch
{

    private final Phonenumber.PhoneNumber number;
    private final String rawString;
    private final int start;

    PhoneNumberMatch(int i, String s, Phonenumber.PhoneNumber phonenumber)
    {
        if (i < 0)
        {
            throw new IllegalArgumentException("Start index must be >= 0.");
        }
        if (s == null || phonenumber == null)
        {
            throw new NullPointerException();
        } else
        {
            start = i;
            rawString = s;
            number = phonenumber;
            return;
        }
    }

    public int end()
    {
        return start + rawString.length();
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof PhoneNumberMatch))
            {
                return false;
            }
            PhoneNumberMatch phonenumbermatch = (PhoneNumberMatch)obj;
            if (!rawString.equals(phonenumbermatch.rawString) || start != phonenumbermatch.start || !number.equals(phonenumbermatch.number))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        Object aobj[] = new Object[3];
        aobj[0] = Integer.valueOf(start);
        aobj[1] = rawString;
        aobj[2] = number;
        return Arrays.hashCode(aobj);
    }

    public Phonenumber.PhoneNumber number()
    {
        return number;
    }

    public String rawString()
    {
        return rawString;
    }

    public int start()
    {
        return start;
    }

    public String toString()
    {
        int i = start();
        int j = end();
        String s = String.valueOf(String.valueOf(rawString));
        return (new StringBuilder(43 + s.length())).append("PhoneNumberMatch [").append(i).append(",").append(j).append(") ").append(s).toString();
    }
}
