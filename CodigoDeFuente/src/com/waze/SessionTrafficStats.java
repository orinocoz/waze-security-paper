// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import com.waze.analytics.Analytics;

public class SessionTrafficStats
{

    private static final String LAST_SESSION_RX = "LAST_SESSION_RX";
    private static final String LAST_SESSION_TX = "LAST_SESSION_TX";
    private static final String LAST_SYSTEM_BOOT_TIME = "LAST_SYSTEM_BOOT_TIME";
    private static final String PREF_NAME = "SessionTrafficStats";
    private long mLastSessionRx;
    private long mLastSessionTx;
    private SharedPreferences mPrefs;
    private long mThisBootTime;

    public SessionTrafficStats(Context context)
    {
        mLastSessionTx = 0L;
        mLastSessionRx = 0L;
        mPrefs = context.getSharedPreferences("SessionTrafficStats", 0);
        long l = mPrefs.getLong("LAST_SYSTEM_BOOT_TIME", 0L);
        mThisBootTime = System.currentTimeMillis() - SystemClock.elapsedRealtime();
        if (sortOfEquals(mThisBootTime, l))
        {
            mLastSessionTx = mPrefs.getLong("LAST_SESSION_TX", 0L);
            mLastSessionRx = mPrefs.getLong("LAST_SESSION_RX", 0L);
        }
    }

    private boolean sortOfEquals(long l, long l1)
    {
        long l2 = l - l1;
        if (l2 <= 0L) goto _L2; else goto _L1
_L1:
        if (l2 >= 100L) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        return false;
_L2:
        if (l2 <= -100L)
        {
            return false;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    public void endSession()
    {
        long l = TrafficStats.getUidRxBytes(Process.myUid());
        long l1 = TrafficStats.getUidTxBytes(Process.myUid());
        if (mPrefs.contains("LAST_SYSTEM_BOOT_TIME"))
        {
            Analytics.log("DATA_CONSUMPTION", "KB", (int)(((l + l1) - mLastSessionRx - mLastSessionTx) / 1024L));
        }
        android.content.SharedPreferences.Editor editor = mPrefs.edit();
        editor.putLong("LAST_SYSTEM_BOOT_TIME", mThisBootTime);
        editor.putLong("LAST_SESSION_TX", l1);
        editor.putLong("LAST_SESSION_RX", l);
        editor.commit();
    }
}
