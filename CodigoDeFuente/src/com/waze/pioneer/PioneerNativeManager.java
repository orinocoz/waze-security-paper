// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.pioneer;


public final class PioneerNativeManager
{

    private static PioneerNativeManager mInstance = null;

    public PioneerNativeManager()
    {
    }

    private native void InitNativeLayerNTV();

    public static PioneerNativeManager create()
    {
        if (mInstance == null)
        {
            mInstance = new PioneerNativeManager();
            mInstance.InitNativeLayerNTV();
        }
        return mInstance;
    }

    public static PioneerNativeManager getInstance()
    {
        create();
        return mInstance;
    }

    public static void onPioneerConnected()
    {
        create();
        mInstance.onPioneerConnectedNTV();
    }

    private native void onPioneerConnectedNTV();

    public native void LocationCallbackNTV(int i, int j, int k, int l, int i1, int j1, int k1);

}
