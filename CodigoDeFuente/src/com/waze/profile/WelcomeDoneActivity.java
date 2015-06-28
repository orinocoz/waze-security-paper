// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.install.InstallNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

public class WelcomeDoneActivity extends ActivityBase
{

    private NativeManager nativeManager;

    public WelcomeDoneActivity()
    {
        nativeManager = AppService.getNativeManager();
    }

    private void onDoneAnalytics()
    {
        if (InstallNativeManager.IsCleanInstallation())
        {
            NativeManager.getInstance().SignUplogAnalytics("START_DONE", null, null, false);
        } else
        {
            NativeManager.getInstance().SignUplogAnalytics("SOCIAL_UPGRADE_DONE", null, null, false);
        }
        NativeManager.getInstance().logAnalyticsFlush();
        setResult(3);
        finish();
    }

    public void onBackPressed()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030137);
        TitleBar titlebar = (TitleBar)findViewById(0x7f090058);
        titlebar.init(this, nativeManager.getLanguageString(DisplayStrings.DS_YOUR_DONE));
        titlebar.setCloseText(nativeManager.getLanguageString(DisplayStrings.DS_DONE));
        titlebar.setUpButtonDisabled();
        titlebar.setOnClickCloseListener(new android.view.View.OnClickListener() {

            final WelcomeDoneActivity this$0;

            public void onClick(View view)
            {
                onDoneAnalytics();
            }

            
            {
                this$0 = WelcomeDoneActivity.this;
                super();
            }
        });
        ((TextView)findViewById(0x7f0902be)).setText(nativeManager.getLanguageString(DisplayStrings.DS_REMEMBER_THE_MORE));
        ((TextView)findViewById(0x7f0902c1)).setText(nativeManager.getLanguageString(DisplayStrings.DS_DRIVE_SAFE));
    }

}
