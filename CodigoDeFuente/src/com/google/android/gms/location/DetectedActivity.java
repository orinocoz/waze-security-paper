// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.location:
//            DetectedActivityCreator

public class DetectedActivity
    implements SafeParcelable
{

    public static final DetectedActivityCreator CREATOR = new DetectedActivityCreator();
    public static final int IN_VEHICLE = 0;
    public static final int ON_BICYCLE = 1;
    public static final int ON_FOOT = 2;
    public static final int RUNNING = 8;
    public static final int STILL = 3;
    public static final int TILTING = 5;
    public static final int UNKNOWN = 4;
    public static final int WALKING = 7;
    int UV;
    int UW;
    private final int xJ;

    public DetectedActivity(int i, int j)
    {
        xJ = 1;
        UV = i;
        UW = j;
    }

    public DetectedActivity(int i, int j, int k)
    {
        xJ = i;
        UV = j;
        UW = k;
    }

    private int cF(int i)
    {
        if (i > 8)
        {
            i = 4;
        }
        return i;
    }

    public int describeContents()
    {
        return 0;
    }

    public int getConfidence()
    {
        return UW;
    }

    public int getType()
    {
        return cF(UV);
    }

    public int getVersionCode()
    {
        return xJ;
    }

    public String toString()
    {
        return (new StringBuilder()).append("DetectedActivity [type=").append(getType()).append(", confidence=").append(UW).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        DetectedActivityCreator.a(this, parcel, i);
    }

}
