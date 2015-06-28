// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.navigate.NavigateActivity;
import com.waze.strings.DisplayStrings;
import com.waze.view.text.WazeTextView;
import com.waze.view.title.TitleBar;

public class ShareHelpActivity extends ActivityBase
{

    private LinearLayout mGotItButton;
    private WazeTextView mGotItText;

    public ShareHelpActivity()
    {
    }

    private void initFieldsTexts()
    {
        ((TitleBar)findViewById(0x7f090073)).init(this, NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SHARE_RIDE));
        ((TextView)findViewById(0x7f090510)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SHARE_YOUR_DRIVE_WITH_FRIENDS_AND));
        ((TextView)findViewById(0x7f0906c1)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_FROM_THE_ETA_SCREEN_SIMPLY_ADD_FRIENDS_TO));
        mGotItText.setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_START_DRIVING));
    }

    private void initMembers()
    {
        mGotItText = (WazeTextView)findViewById(0x7f090512);
        mGotItButton = (LinearLayout)findViewById(0x7f090511);
    }

    private void setOnClickListeners()
    {
        mGotItButton.setOnClickListener(new android.view.View.OnClickListener() {

            final ShareHelpActivity this$0;

            public void onClick(View view)
            {
                Analytics.log("SHARE_HELP_SCREEN_DRIVE_CLICK", null, null);
                Intent intent = new Intent(ShareHelpActivity.this, com/waze/navigate/NavigateActivity);
                startActivityForResult(intent, 1);
            }

            
            {
                this$0 = ShareHelpActivity.this;
                super();
            }
        });
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (j != 0)
        {
            setResult(-1);
            finish();
        }
        super.onActivityResult(i, j, intent);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030107);
        initMembers();
        setOnClickListeners();
        initFieldsTexts();
    }
}
