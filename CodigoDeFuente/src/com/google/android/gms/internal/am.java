// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            an, eu

public final class am
    implements SafeParcelable
{

    public static final an CREATOR = new an();
    public final int height;
    public final int heightPixels;
    public final String mc;
    public final boolean md;
    public final am me[];
    public final int versionCode;
    public final int width;
    public final int widthPixels;

    public am()
    {
        this(2, "interstitial_mb", 0, 0, true, 0, 0, null);
    }

    am(int i, String s, int j, int k, boolean flag, int l, int i1, 
            am aam[])
    {
        versionCode = i;
        mc = s;
        height = j;
        heightPixels = k;
        md = flag;
        width = l;
        widthPixels = i1;
        me = aam;
    }

    public am(Context context, AdSize adsize)
    {
        this(context, new AdSize[] {
            adsize
        });
    }

    public am(Context context, AdSize aadsize[])
    {
        int i = 0;
        super();
        AdSize adsize = aadsize[0];
        versionCode = 2;
        md = false;
        width = adsize.getWidth();
        height = adsize.getHeight();
        boolean flag;
        boolean flag1;
        DisplayMetrics displaymetrics;
        int k;
        int l;
        if (width == -1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (height == -2)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        displaymetrics = context.getResources().getDisplayMetrics();
        if (flag)
        {
            widthPixels = a(displaymetrics);
            k = (int)((float)widthPixels / displaymetrics.density);
        } else
        {
            int j = width;
            widthPixels = com.google.android.gms.internal.eu.a(displaymetrics, width);
            k = j;
        }
        if (flag1)
        {
            l = c(displaymetrics);
        } else
        {
            l = height;
        }
        heightPixels = com.google.android.gms.internal.eu.a(displaymetrics, l);
        if (flag || flag1)
        {
            mc = (new StringBuilder()).append(k).append("x").append(l).append("_as").toString();
        } else
        {
            mc = adsize.toString();
        }
        if (aadsize.length > 1)
        {
            me = new am[aadsize.length];
            for (; i < aadsize.length; i++)
            {
                me[i] = new am(context, aadsize[i]);
            }

        } else
        {
            me = null;
        }
    }

    public am(am am1, am aam[])
    {
        this(2, am1.mc, am1.height, am1.heightPixels, am1.md, am1.width, am1.widthPixels, aam);
    }

    public static int a(DisplayMetrics displaymetrics)
    {
        return displaymetrics.widthPixels;
    }

    public static int b(DisplayMetrics displaymetrics)
    {
        return (int)((float)c(displaymetrics) * displaymetrics.density);
    }

    private static int c(DisplayMetrics displaymetrics)
    {
        int i = (int)((float)displaymetrics.heightPixels / displaymetrics.density);
        if (i <= 400)
        {
            return 32;
        }
        return i > 720 ? 90 : 50;
    }

    public AdSize aB()
    {
        return com.google.android.gms.ads.a.a(width, height, mc);
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.internal.an.a(this, parcel, i);
    }

}
