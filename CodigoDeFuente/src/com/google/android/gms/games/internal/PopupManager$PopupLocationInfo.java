// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import android.os.Bundle;
import android.os.IBinder;

// Referenced classes of package com.google.android.gms.games.internal:
//            PopupManager

public static final class <init>
{

    public IBinder OX;
    public int OY;
    public int bottom;
    public int gravity;
    public int left;
    public int right;
    public int top;

    public Bundle hJ()
    {
        Bundle bundle = new Bundle();
        bundle.putInt("popupLocationInfo.gravity", gravity);
        bundle.putInt("popupLocationInfo.displayId", OY);
        bundle.putInt("popupLocationInfo.left", left);
        bundle.putInt("popupLocationInfo.top", top);
        bundle.putInt("popupLocationInfo.right", right);
        bundle.putInt("popupLocationInfo.bottom", bottom);
        return bundle;
    }

    private (int i, IBinder ibinder)
    {
        OY = -1;
        left = 0;
        top = 0;
        right = 0;
        bottom = 0;
        gravity = i;
        OX = ibinder;
    }

    OX(int i, IBinder ibinder, OX ox)
    {
        this(i, ibinder);
    }
}
