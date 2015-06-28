// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.profile:
//            WelcomeDoneActivity

public class WelcomeActivity extends ActivityBase
{

    public WelcomeActivity()
    {
    }

    public void onBackPressed()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030136);
        android.view.View.OnClickListener onclicklistener = new android.view.View.OnClickListener() {

            final WelcomeActivity this$0;

            public void onClick(View view)
            {
                NativeManager.getInstance().SignUplogAnalytics("BABY_WAZER_NEXT", null, null, false);
                Intent intent = new Intent(WelcomeActivity.this, com/waze/profile/WelcomeDoneActivity);
                startActivityForResult(intent, 0);
                setResult(-1);
                finish();
            }

            
            {
                this$0 = WelcomeActivity.this;
                super();
            }
        };
        ((TextView)findViewById(0x7f0907d4)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_WELCOME_DONT_WORRY));
        ((TextView)findViewById(0x7f0907d5)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_DRIVE_AROUND_WITH_WAZE));
        ((TextView)findViewById(0x7f0907d6)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_REPORT_TRAFFIC_AND_EVENTS_ON_THE_ROAD));
        ((TextView)findViewById(0x7f0907d7)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_EDIT_AND_UPDATE_THE_MAP));
        ((TitleBar)findViewById(0x7f090058)).init(this, NativeManager.getInstance().getLanguageString(DisplayStrings.DS_WELCOME), NativeManager.getInstance().getLanguageString(DisplayStrings.DS_NEXT));
        ((TitleBar)findViewById(0x7f090058)).setUpButtonDisabled();
        ((TextView)findViewById(0x7f0907d3)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_OH_AND_YOURE_A_BABY));
        ((TitleBar)findViewById(0x7f090058)).setOnClickCloseListener(onclicklistener);
    }
}
