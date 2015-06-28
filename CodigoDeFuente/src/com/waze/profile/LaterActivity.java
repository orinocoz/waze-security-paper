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
import com.waze.install.GuidedTourActivity;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

public class LaterActivity extends ActivityBase
{

    private MyWazeNativeManager mywazeManager;
    private NativeManager nativeManager;

    public LaterActivity()
    {
        nativeManager = AppService.getNativeManager();
        mywazeManager = MyWazeNativeManager.getInstance();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030072);
        TitleBar titlebar = (TitleBar)findViewById(0x7f090058);
        titlebar.init(this, DisplayStrings.DS_PERSONALIZE_LATER, false);
        titlebar.setUpButtonDisabled();
        titlebar.setOnClickCloseListener(new android.view.View.OnClickListener() {

            final LaterActivity this$0;

            public void onClick(View view)
            {
                NativeManager.getInstance().logAnalytics("START_DONE", false, true);
                setResult(3);
                finish();
            }

            
            {
                this$0 = LaterActivity.this;
                super();
            }
        });
        ((TextView)findViewById(0x7f0902be)).setText(nativeManager.getLanguageString(DisplayStrings.DS_YOU_CAN_PERSONALIZE_YOUR_ACCOUNT_FROM_SETTINGSHGPROFILE));
        TextView textview = (TextView)findViewById(0x7f09036e);
        textview.setText(nativeManager.getLanguageString(DisplayStrings.DS_CLOSE));
        textview.setOnClickListener(new android.view.View.OnClickListener() {

            final LaterActivity this$0;

            public void onClick(View view)
            {
                NativeManager.getInstance().logAnalytics("START_DONE", false, true);
                setResult(3);
                finish();
            }

            
            {
                this$0 = LaterActivity.this;
                super();
            }
        });
    }

    protected void onDestroy()
    {
        super.onDestroy();
        if (!GuidedTourActivity.IsAlreadyCreactedUser())
        {
            mywazeManager.skipSignup();
        }
    }
}
