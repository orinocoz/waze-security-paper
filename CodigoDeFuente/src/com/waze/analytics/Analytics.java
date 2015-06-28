// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.analytics;

import com.waze.NativeManager;

public final class Analytics
{

    public Analytics()
    {
    }

    public static void adsContextClear()
    {
        NativeManager.Post(new Runnable() {

            private final NativeManager val$nm;

            public void run()
            {
                nm.logAnalyticsAdsContextClearNTV();
            }

            
            {
                nm = nativemanager;
                super();
            }
        });
    }

    public static void adsContextNavigationInit()
    {
        NativeManager.Post(new Runnable() {

            private final NativeManager val$nm;

            public void run()
            {
                nm.logAnalyticsAdsContextNavigationInitNTV();
            }

            
            {
                nm = nativemanager;
                super();
            }
        });
    }

    public static void flush()
    {
        NativeManager.getInstance().logAnalyticsFlush();
    }

    public static void log(String s)
    {
        NativeManager.getInstance().logAnalytics(s, null, null);
    }

    public static void log(String s, String s1, int i)
    {
        NativeManager.getInstance().logAnalytics(s, s1, i);
    }

    public static void log(String s, String s1, String s2)
    {
        NativeManager.getInstance().logAnalytics(s, s1, s2);
    }

    public static void log(String s, boolean flag, boolean flag1)
    {
        NativeManager.getInstance().logAnalytics(s, flag, flag1);
    }

    public static void logAdsContext(String s)
    {
        NativeManager.Post(new Runnable() {

            private final String val$event;
            private final NativeManager val$nm;

            public void run()
            {
                nm.logAnalyticsAdsContextNTV(event);
            }

            
            {
                nm = nativemanager;
                event = s;
                super();
            }
        });
    }

    public static void logAdsContextNav(String s)
    {
        NativeManager.Post(new Runnable() {

            private final String val$event;
            private final NativeManager val$nm;

            public void run()
            {
                nm.logAnalyticsAdsContextNavNTV(event);
            }

            
            {
                nm = nativemanager;
                event = s;
                super();
            }
        });
    }
}
