// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.content.Intent;
import android.os.Bundle;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.view.web.SimpleWebActivity;

public class TwitterConnectActivity extends SimpleWebActivity
    implements com.waze.mywaze.MyWazeNativeManager.UrlCallback
{

    public static final String FROM_MENU_KEY = "com.waze.twitter.frommenu";
    public static final String INITIAL_TWEET = "com.waze.twitter.initial";
    private boolean fromMenu;
    private boolean initialTweet;
    private MyWazeNativeManager myWazeNativeManager;

    public TwitterConnectActivity()
    {
        myWazeNativeManager = MyWazeNativeManager.getInstance();
    }

    protected void onCreate(Bundle bundle)
    {
        boolean flag = true;
        super.onCreate(bundle);
        Bundle bundle1 = getIntent().getExtras();
        boolean flag1;
        if (bundle1 != null && bundle1.containsKey("com.waze.twitter.frommenu"))
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        fromMenu = flag1;
        if (bundle1 == null || !bundle1.containsKey("com.waze.twitter.initial"))
        {
            flag = false;
        }
        initialTweet = flag;
        setTitleText(0x7f070177, fromMenu);
    }

    protected void onDestroy()
    {
        myWazeNativeManager.twitterPostConnect();
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
            if (fromMenu)
            {
                setResult(0);
                finish();
            }
            flag = true;
        }
        return flag;
    }

    public void onWebViewSize(int i, int j)
    {
        myWazeNativeManager.getTwitterConnectUrl(this, i, j, initialTweet);
    }
}
