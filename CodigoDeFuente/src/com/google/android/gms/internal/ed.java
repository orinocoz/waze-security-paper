// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import java.util.Locale;

// Referenced classes of package com.google.android.gms.internal:
//            eu, ep

public final class ed
{

    public final int qY;
    public final boolean qZ;
    public final boolean ra;
    public final String rb;
    public final String rc;
    public final boolean rd = eu.bQ();
    public final boolean re;
    public final boolean rf;
    public final String rg;
    public final String rh;
    public final int ri;
    public final int rj;
    public final int rk;
    public final int rl;
    public final int rm;
    public final int rn;
    public final float ro;
    public final int rp;
    public final int rq;
    public final double rr;
    public final boolean rs;
    public final boolean rt;
    public final int ru;

    public ed(Context context)
    {
        boolean flag = true;
        super();
        AudioManager audiomanager = (AudioManager)context.getSystemService("audio");
        ConnectivityManager connectivitymanager = (ConnectivityManager)context.getSystemService("connectivity");
        DisplayMetrics displaymetrics = context.getResources().getDisplayMetrics();
        Locale locale = Locale.getDefault();
        PackageManager packagemanager = context.getPackageManager();
        TelephonyManager telephonymanager = (TelephonyManager)context.getSystemService("phone");
        Intent intent = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        qY = audiomanager.getMode();
        boolean flag1;
        boolean flag2;
        if (a(packagemanager, "geo:0,0?q=donuts") != null)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        qZ = flag1;
        if (a(packagemanager, "http://www.google.com") != null)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        ra = flag2;
        rb = telephonymanager.getNetworkOperator();
        rc = locale.getCountry();
        re = audiomanager.isMusicActive();
        rf = audiomanager.isSpeakerphoneOn();
        rg = locale.getLanguage();
        rh = a(packagemanager);
        ri = audiomanager.getStreamVolume(3);
        rj = a(context, connectivitymanager, packagemanager);
        rk = telephonymanager.getNetworkType();
        rl = telephonymanager.getPhoneType();
        rm = audiomanager.getRingerMode();
        rn = audiomanager.getStreamVolume(2);
        ro = displaymetrics.density;
        rp = displaymetrics.widthPixels;
        rq = displaymetrics.heightPixels;
        if (intent != null)
        {
            int i = intent.getIntExtra("status", -1);
            int j = intent.getIntExtra("level", -1);
            int k = intent.getIntExtra("scale", -1);
            rr = (float)j / (float)k;
            if (i != 2 && i != 5)
            {
                flag = false;
            }
            rs = flag;
        } else
        {
            rr = -1D;
            rs = false;
        }
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            rt = connectivitymanager.isActiveNetworkMetered();
            if (connectivitymanager.getActiveNetworkInfo() != null)
            {
                ru = connectivitymanager.getActiveNetworkInfo().getDetailedState().ordinal();
                return;
            } else
            {
                ru = -1;
                return;
            }
        } else
        {
            rt = false;
            ru = -1;
            return;
        }
    }

    private static int a(Context context, ConnectivityManager connectivitymanager, PackageManager packagemanager)
    {
label0:
        {
            int i = -2;
            if (ep.a(packagemanager, context.getPackageName(), "android.permission.ACCESS_NETWORK_STATE"))
            {
                NetworkInfo networkinfo = connectivitymanager.getActiveNetworkInfo();
                if (networkinfo == null)
                {
                    break label0;
                }
                i = networkinfo.getType();
            }
            return i;
        }
        return -1;
    }

    private static ResolveInfo a(PackageManager packagemanager, String s)
    {
        return packagemanager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(s)), 0x10000);
    }

    private static String a(PackageManager packagemanager)
    {
        ResolveInfo resolveinfo = a(packagemanager, "market://details?id=com.google.android.gms.ads");
        if (resolveinfo != null) goto _L2; else goto _L1
_L1:
        ActivityInfo activityinfo;
        return null;
_L2:
        if ((activityinfo = resolveinfo.activityInfo) == null) goto _L1; else goto _L3
_L3:
        PackageInfo packageinfo;
        String s;
        try
        {
            packageinfo = packagemanager.getPackageInfo(activityinfo.packageName, 0);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return null;
        }
        if (packageinfo == null) goto _L1; else goto _L4
_L4:
        s = (new StringBuilder()).append(packageinfo.versionCode).append(".").append(activityinfo.packageName).toString();
        return s;
    }
}
