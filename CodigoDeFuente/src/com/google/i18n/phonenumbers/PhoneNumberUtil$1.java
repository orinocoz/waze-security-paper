// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;

import java.io.InputStream;

// Referenced classes of package com.google.i18n.phonenumbers:
//            MetadataLoader, PhoneNumberUtil

static final class 
    implements MetadataLoader
{

    public InputStream loadMetadata(String s)
    {
        return com/google/i18n/phonenumbers/PhoneNumberUtil.getResourceAsStream(s);
    }

    ()
    {
    }
}
