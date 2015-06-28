// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            Logger

class init>
    implements Runnable
{

    private final int val$aLevel;
    private final String val$aStr;

    public void run()
    {
        Logger.access$1(Logger.access$0(), val$aLevel, (new StringBuilder("Java Layer: ")).append(val$aStr).toString());
    }

    ilder()
    {
        val$aLevel = i;
        val$aStr = s;
        super();
    }
}
