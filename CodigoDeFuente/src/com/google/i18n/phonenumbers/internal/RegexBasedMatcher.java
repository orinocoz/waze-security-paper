// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers.internal;

import com.google.i18n.phonenumbers.RegexCache;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.google.i18n.phonenumbers.internal:
//            MatcherApi

public final class RegexBasedMatcher
    implements MatcherApi
{

    private final RegexCache regexCache = new RegexCache(100);

    private RegexBasedMatcher()
    {
    }

    public static MatcherApi create()
    {
        return new RegexBasedMatcher();
    }

    public boolean matchesNationalNumber(String s, com.google.i18n.phonenumbers.Phonemetadata.PhoneNumberDesc phonenumberdesc, boolean flag)
    {
        Matcher matcher = regexCache.getPatternForRegex(phonenumberdesc.getNationalNumberPattern()).matcher(s);
        return matcher.matches() || flag && matcher.lookingAt();
    }

    public boolean matchesPossibleNumber(String s, com.google.i18n.phonenumbers.Phonemetadata.PhoneNumberDesc phonenumberdesc)
    {
        return regexCache.getPatternForRegex(phonenumberdesc.getPossibleNumberPattern()).matcher(s).matches();
    }
}
