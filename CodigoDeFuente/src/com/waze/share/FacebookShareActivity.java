// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.os.Bundle;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.view.web.SimpleWebActivity;

public class FacebookShareActivity extends SimpleWebActivity
    implements com.waze.mywaze.MyWazeNativeManager.UrlCallback
{

    private MyWazeNativeManager myWazeNativeManager;

    public FacebookShareActivity()
    {
        myWazeNativeManager = MyWazeNativeManager.getInstance();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setTitleText(0x7f070191);
    }

    protected void onDestroy()
    {
        myWazeNativeManager.foursquarePostConnect();
        super.onDestroy();
    }

    public void onUrl(String s)
    {
        loadUrl(s);
    }

    protected boolean onUrlOverride(String s)
    {
        boolean flag;
label0:
        {
            if (!"waze://dialog_hide_current".equals(s))
            {
                boolean flag1 = "waze://browser_close".equals(s);
                flag = false;
                if (!flag1)
                {
                    break label0;
                }
            }
            setResult(0);
            finish();
            flag = true;
        }
        return flag;
    }

    public void onWebViewSize(int i, int j)
    {
        myWazeNativeManager.getFacebookShareUrl(this, i, j);
    }
}
