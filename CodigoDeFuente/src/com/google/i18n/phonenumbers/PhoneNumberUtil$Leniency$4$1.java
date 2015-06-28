// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;


// Referenced classes of package com.google.i18n.phonenumbers:
//            PhoneNumberMatcher, PhoneNumberUtil

class this._cls0
    implements pingChecker
{

    final roupsAreExactlyPresent this$0;

    public boolean checkGroups(PhoneNumberUtil phonenumberutil, pingChecker pingchecker, StringBuilder stringbuilder, String as[])
    {
        return PhoneNumberMatcher.allNumberGroupsAreExactlyPresent(phonenumberutil, pingchecker, stringbuilder, as);
    }

    pingChecker()
    {
        this$0 = this._cls0.this;
        super();
    }

    // Unreferenced inner class com/google/i18n/phonenumbers/PhoneNumberUtil$Leniency$4

/* anonymous class */
    static final class PhoneNumberUtil.Leniency._cls4 extends PhoneNumberUtil.Leniency
    {

        boolean verify(Phonenumber.PhoneNumber phonenumber, String s, PhoneNumberUtil phonenumberutil)
        {
            if (!phonenumberutil.isValidNumber(phonenumber) || !PhoneNumberMatcher.containsOnlyValidXChars(phonenumber, s, phonenumberutil) || PhoneNumberMatcher.containsMoreThanOneSlashInNationalNumber(phonenumber, s) || !PhoneNumberMatcher.isNationalPrefixPresentIfRequired(phonenumber, phonenumberutil))
            {
                return false;
            } else
            {
                return PhoneNumberMatcher.checkNumberGroupingIsValid(phonenumber, s, phonenumberutil, new PhoneNumberUtil.Leniency._cls4._cls1());
            }
        }

    }

}
