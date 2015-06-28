// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.content.Intent;
import android.os.Bundle;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.view.web.SimpleWebActivity;

public class FacebookLikeActivity extends SimpleWebActivity
{

    private String mUrl;
    private MyWazeNativeManager myWazeNativeManager;

    public FacebookLikeActivity()
    {
        myWazeNativeManager = MyWazeNativeManager.getInstance();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mUrl = getIntent().getStringExtra("LikeUrl");
        setTitleText(0x7f070192);
        loadUrl(mUrl);
    }

    protected void onDestroy()
    {
        myWazeNativeManager.foursquarePostConnect();
        super.onDestroy();
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
}
