// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;


// Referenced classes of package com.waze.reports:
//            UpdatePriceActivity

class riceFormatListener
    implements com.waze.navigate.iceFormatListener
{

    public void onComplete(String s)
    {
        int i = UpdatePriceActivity.access$13(s);
        if (i > 2 && i <= 5)
        {
            UpdatePriceActivity.access$14((new StringBuilder("%2.")).append(i).append("f").toString());
            return;
        } else
        {
            UpdatePriceActivity.access$14("%2.2f");
            return;
        }
    }

    riceFormatListener()
    {
    }
}
