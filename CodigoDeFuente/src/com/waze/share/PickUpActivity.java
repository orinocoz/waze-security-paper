// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.main.navigate.LocationData;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

public class PickUpActivity extends ActivityBase
{

    private boolean isNavigating;
    protected LocationData locationData;
    private String mBody;
    private String mSubject;
    private String mUrl;
    private NativeManager nativeManager;

    public PickUpActivity()
    {
        isNavigating = false;
        mSubject = null;
        mBody = null;
        mUrl = null;
        nativeManager = AppService.getNativeManager();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300fc);
        ((TitleBar)findViewById(0x7f090073)).init(this, DisplayStrings.DS_PICKUP);
        Analytics.log("PICK_UP_SCREEN");
        ((TextView)findViewById(0x7f09067f)).setText(nativeManager.getLanguageString(DisplayStrings.DS_NEED_TO_PICK_SOMEONE_UP));
        ((TextView)findViewById(0x7f090680)).setText(nativeManager.getLanguageString(DisplayStrings.DS_FORGET_ABOUT_ADDRESSES_AND_DIRECTIONS));
        ((TextView)findViewById(0x7f090684)).setText(nativeManager.getLanguageString(DisplayStrings.DS_INDICATES_YOUR_RIDE_IS_BEING_VIEWED));
        ((Button)findViewById(0x7f090681)).setText(nativeManager.getLanguageString(DisplayStrings.DS_SEND_PICKUP_REQUEST));
        findViewById(0x7f090681).setOnClickListener(new android.view.View.OnClickListener() {

            final PickUpActivity this$0;

            public void onClick(View view)
            {
                Analytics.log("PICKUP_REQUEST");
                if (AppService.isNetworkAvailable())
                {
                    nativeManager.SendPickUpRequest();
                    return;
                } else
                {
                    MsgBox.openMessageBox(nativeManager.getLanguageString(DisplayStrings.DS_ERROR), nativeManager.getLanguageString(DisplayStrings.DS_NETWORK_CONNECTION_PROBLEMS__PLEASE_TRY_AGAIN_LATER_), false);
                    return;
                }
            }

            
            {
                this$0 = PickUpActivity.this;
                super();
            }
        });
    }

}
