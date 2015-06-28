// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.os.Bundle;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.view.web.SimpleWebActivity;

public class ForgotPasswordActivity extends SimpleWebActivity
    implements com.waze.mywaze.MyWazeNativeManager.UrlCallback
{

    private MyWazeNativeManager myWazeNativeManager;

    public ForgotPasswordActivity()
    {
        myWazeNativeManager = MyWazeNativeManager.getInstance();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setRequestedOrientation(1);
        setTitleText(0x7f070161, false);
    }

    public void onUrl(String s)
    {
        loadUrl(s);
    }

    public void onWebViewSize(int i, int j)
    {
        myWazeNativeManager.getForgotPasswordUrl(this, i, j);
    }

    protected boolean passBackPresses()
    {
        return false;
    }
}
