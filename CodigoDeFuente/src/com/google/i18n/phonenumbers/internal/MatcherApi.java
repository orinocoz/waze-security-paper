// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers.internal;


public interface MatcherApi
{

    public abstract boolean matchesNationalNumber(String s, com.google.i18n.phonenumbers.Phonemetadata.PhoneNumberDesc phonenumberdesc, boolean flag);

    public abstract boolean matchesPossibleNumber(String s, com.google.i18n.phonenumbers.Phonemetadata.PhoneNumberDesc phonenumberdesc);
}
