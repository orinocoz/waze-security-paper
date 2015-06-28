// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.os.Parcel;

// Referenced classes of package com.waze.settings:
//            SettingsValue

class 
    implements android.os.or
{

    public SettingsValue createFromParcel(Parcel parcel)
    {
        return new SettingsValue(parcel);
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public SettingsValue[] newArray(int i)
    {
        return new SettingsValue[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }

    ()
    {
    }
}
