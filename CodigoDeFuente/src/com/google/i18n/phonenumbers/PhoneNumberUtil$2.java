// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;

import java.util.Iterator;

// Referenced classes of package com.google.i18n.phonenumbers:
//            PhoneNumberUtil, PhoneNumberMatcher

class val.maxTries
    implements Iterable
{

    final PhoneNumberUtil this$0;
    final String val$defaultRegion;
    final niency val$leniency;
    final long val$maxTries;
    final CharSequence val$text;

    public Iterator iterator()
    {
        return new PhoneNumberMatcher(PhoneNumberUtil.this, val$text, val$defaultRegion, val$leniency, val$maxTries);
    }

    niency()
    {
        this$0 = final_phonenumberutil;
        val$text = charsequence;
        val$defaultRegion = s;
        val$leniency = niency;
        val$maxTries = J.this;
        super();
    }
}
