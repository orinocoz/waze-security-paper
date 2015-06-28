// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import android.os.Bundle;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.view.web.SimpleWebActivity;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

public class ScoreboardActivity extends SimpleWebActivity
    implements MyWazeNativeManager.UrlCallback
{

    public MyWazeNativeManager myWazeNativeManager;

    public ScoreboardActivity()
    {
        myWazeNativeManager = MyWazeNativeManager.getInstance();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setTitleText(0x7f0700fd);
    }

    public void onUrl(String s)
    {
        loadUrl(s);
    }

    protected boolean onUrlOverride(String s)
    {
        if (s != null && s.startsWith("waze://"))
        {
            NativeManager nativemanager = AppService.getNativeManager();
            String s1;
            try
            {
                s1 = URLDecoder.decode(s.toString(), "UTF-8");
            }
            catch (UnsupportedEncodingException unsupportedencodingexception)
            {
                return true;
            }
            if (!nativemanager.UrlHandler(s1))
            {
                loadUrl(s1);
            }
            return true;
        } else
        {
            return super.onUrlOverride(s);
        }
    }

    public void onWebViewSize(int i, int j)
    {
        myWazeNativeManager.getScoreboardUrl(this, i, j);
    }
}
