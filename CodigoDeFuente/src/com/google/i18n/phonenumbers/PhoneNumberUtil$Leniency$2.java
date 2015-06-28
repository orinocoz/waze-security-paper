// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;


// Referenced classes of package com.google.i18n.phonenumbers:
//            PhoneNumberUtil, PhoneNumberMatcher

static final class nit> extends nit>
{

    boolean verify(nit> nit>, String s, PhoneNumberUtil phonenumberutil)
    {
        if (!phonenumberutil.isValidNumber(nit>) || !PhoneNumberMatcher.containsOnlyValidXChars(nit>, s, phonenumberutil))
        {
            return false;
        } else
        {
            return PhoneNumberMatcher.isNationalPrefixPresentIfRequired(nit>, phonenumberutil);
        }
    }

    (String s, int i)
    {
        super(s, i, null);
    }
}
