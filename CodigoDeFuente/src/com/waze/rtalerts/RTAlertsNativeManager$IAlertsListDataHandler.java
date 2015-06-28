// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;


// Referenced classes of package com.waze.rtalerts:
//            RTAlertsNativeManager, RTAlertsAlertData

public static interface Data
{
    public static class Data
    {

        public RTAlertsAlertData mAlertsData[];

        public Data()
        {
        }
    }


    public abstract void handler(Data data);
}
