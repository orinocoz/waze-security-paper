// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import android.os.Bundle;
import com.waze.view.web.SimpleWebActivity;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

public class CouponsActivity extends SimpleWebActivity
    implements MyWazeNativeManager.UrlCallback
{

    public MyWazeNativeManager myWazeNativeManager;

    public CouponsActivity()
    {
        myWazeNativeManager = MyWazeNativeManager.getInstance();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setTitleText(0x7f070100);
    }

    public void onUrl(String s)
    {
        loadUrl(s);
    }

    public void onWebViewSize(int i, int j)
    {
        myWazeNativeManager.getCouponsUrl(this, i, j);
    }
}
