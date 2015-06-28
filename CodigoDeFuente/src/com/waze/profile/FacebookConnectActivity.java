// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.content.Intent;
import android.os.Bundle;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.view.web.SimpleWebActivity;

// Referenced classes of package com.waze.profile:
//            WelcomeDoneActivity

public class FacebookConnectActivity extends SimpleWebActivity
    implements com.waze.mywaze.MyWazeNativeManager.UrlCallback
{

    public static final String FROM_MENU_KEY = "com.waze.facebook.frommenu";
    private boolean fromMenu;
    private MyWazeNativeManager myWazeNativeManager;

    public FacebookConnectActivity()
    {
        myWazeNativeManager = MyWazeNativeManager.getInstance();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Bundle bundle1 = getIntent().getExtras();
        boolean flag;
        if (bundle1 != null && bundle1.containsKey("com.waze.facebook.frommenu"))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        fromMenu = flag;
        setTitleText(0x7f070155, fromMenu);
    }

    protected void onDestroy()
    {
        myWazeNativeManager.facebookPostConnect();
        super.onDestroy();
    }

    public void onUrl(String s)
    {
        loadUrl(s);
    }

    protected boolean onUrlOverride(String s)
    {
label0:
        {
            boolean flag;
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
            } else
            {
                startActivityForResult(new Intent(this, com/waze/profile/WelcomeDoneActivity), 0);
            }
            flag = true;
        }
        return flag;
    }

    public void onWebViewSize(int i, int j)
    {
        myWazeNativeManager.getFacebookConnectUrl(this, i, j);
    }
}
