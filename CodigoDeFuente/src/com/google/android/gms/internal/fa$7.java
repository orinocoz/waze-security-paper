// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            fa

static class Level
{

    static final int sP[];

    static 
    {
        sP = new int[android.webkit.leMessage.MessageLevel.values().length];
        try
        {
            sP[android.webkit.leMessage.MessageLevel.ERROR.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            sP[android.webkit.leMessage.MessageLevel.WARNING.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            sP[android.webkit.leMessage.MessageLevel.LOG.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            sP[android.webkit.leMessage.MessageLevel.TIP.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            sP[android.webkit.leMessage.MessageLevel.DEBUG.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror4)
        {
            return;
        }
    }
}
