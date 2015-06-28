// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;


// Referenced classes of package com.waze.reports:
//            OpeningHours

class prevDayStr
{

    boolean isFirst;
    String prevDayStr;
    boolean prevOpen;
    final OpeningHours this$0;
    String toStr;
    boolean wroteTo;

    ()
    {
        this$0 = OpeningHours.this;
        super();
        prevOpen = false;
        wroteTo = false;
        isFirst = true;
        toStr = null;
        prevDayStr = null;
    }
}
