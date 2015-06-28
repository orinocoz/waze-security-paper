// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.Logger;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.ifs.ui.VideoActivity;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.navigate.AddHomeWorkActivity;
import com.waze.social.facebook.FacebookWrapper;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.share:
//            TwitterFollowActivity, FbLikeLauncher, FacebookShareActivity

public class EncouragementActivity extends ActivityBase
{

    private boolean buttonClicked;
    private long closeCallback;
    private String mAnalyticsTypeString;
    private int mType;
    private NativeManager nativeManager;

    public EncouragementActivity()
    {
        nativeManager = AppService.getNativeManager();
    }

    private void onAddHome()
    {
        Analytics.log("ENC_ADD_HOME_CLICK");
        Intent intent = new Intent(this, com/waze/navigate/AddHomeWorkActivity);
        intent.putExtra("AddressType", 2);
        startActivityForResult(intent, 1);
    }

    private void onFacebook()
    {
        MyWazeNativeManager.getInstance().getFacebookSettings(new com.waze.mywaze.MyWazeNativeManager.FacebookCallback() {

            final EncouragementActivity this$0;

            public void onFacebookSettings(com.waze.mywaze.MyWazeNativeManager.FacebookSettings facebooksettings)
            {
                NativeManager.getInstance().SignUplogAnalytics("DRIVE_WITH_FRIENDS_POPUP_FB_CONNECT", null, null, false);
                Analytics.log("FACEBOOK_CONNECT_CLICK", "VAUE", "ENC_SCREEN");
                FacebookWrapper.getInstance().authorize(EncouragementActivity.this, new com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener() {

                    final _cls2 this$1;

                    public void onAuthorizeCompleted(boolean flag, int i)
                    {
                        if (flag)
                        {
                            setResult(-1);
                            finish();
                        }
                    }

            
            {
                this$1 = _cls2.this;
                super();
            }
                }, true);
            }


            
            {
                this$0 = EncouragementActivity.this;
                super();
            }
        });
    }

    private void onFollow()
    {
        startActivityForResult(new Intent(this, com/waze/share/TwitterFollowActivity), 0);
    }

    private void onLike()
    {
        FbLikeLauncher.start(this);
    }

    private void onMapEditor()
    {
        if (NativeManager.getInstance().GetIsShowHowToEditNTV())
        {
            Analytics.log("ENC_MAP_EDITOR_CLICK_VIDEO");
            Intent intent = new Intent(this, com/waze/ifs/ui/VideoActivity);
            intent.putExtra("landscape", true);
            intent.putExtra("url", NativeManager.getInstance().GetEditorUrl());
            startActivity(intent);
        }
    }

    private void onRate()
    {
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.waze")));
    }

    private void onSendETA()
    {
        Analytics.log("ENC_SEND_ETA_CLICK");
        setResult(-1);
        finish();
    }

    private void onSendLocation()
    {
        Analytics.log("ENC_SEND_LOCATION_CLICK");
        setResult(-1);
        finish();
    }

    private void onShare()
    {
        startActivityForResult(new Intent(this, com/waze/share/FacebookShareActivity), 0);
    }

    protected void onCreate(Bundle bundle)
    {
        int i;
        boolean flag;
        int j;
        int k;
        int l;
        super.onCreate(bundle);
        setContentView(0x7f03004c);
        final int type = getIntent().getExtras().getInt("type");
        closeCallback = getIntent().getExtras().getLong("callback", -1L);
        mType = type;
        TextView textview;
        String s;
        Object aobj[];
        if (type == 10)
        {
            ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_WAZE_TIP, DisplayStrings.DS_SKIP);
        } else
        if (type == 11)
        {
            ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_WAZE_TIP, DisplayStrings.DS_SKIP);
        } else
        if (type == 12)
        {
            ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_WAZE_TIP, DisplayStrings.DS_SKIP);
        } else
        if (type != 8)
        {
            ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_RATE_US, DisplayStrings.DS_SKIP);
        } else
        {
            ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_CONNECT, DisplayStrings.DS_SKIP);
        }
        buttonClicked = false;
        findViewById(0x7f090289).setOnClickListener(new android.view.View.OnClickListener() {

            final EncouragementActivity this$0;
            private final int val$type;

            public void onClick(View view)
            {
                buttonClicked = true;
                Analytics.log("ENC_POPUP_BUTTON", "TYPE", mAnalyticsTypeString);
                if (type == 0 || type == 1)
                {
                    onRate();
                } else
                {
                    if (type == 2)
                    {
                        onShare();
                        return;
                    }
                    if (type == 3)
                    {
                        onLike();
                        return;
                    }
                    if (type == 4)
                    {
                        onFollow();
                        return;
                    }
                    if (type == 5)
                    {
                        onMapEditor();
                        return;
                    }
                    if (type == 8)
                    {
                        onFacebook();
                        return;
                    }
                    if (type == 10)
                    {
                        onSendETA();
                        return;
                    }
                    if (type == 11)
                    {
                        onAddHome();
                        return;
                    }
                    if (type == 12)
                    {
                        onSendLocation();
                        return;
                    }
                }
            }

            
            {
                this$0 = EncouragementActivity.this;
                type = i;
                super();
            }
        });
        i = 0;
        flag = false;
        mAnalyticsTypeString = "UNKNOWN";
        type;
        JVM INSTR tableswitch 0 12: default 176
    //                   0 458
    //                   1 495
    //                   2 1059
    //                   3 539
    //                   4 1082
    //                   5 584
    //                   6 176
    //                   7 176
    //                   8 646
    //                   9 176
    //                   10 742
    //                   11 838
    //                   12 934;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L1 _L1 _L8 _L1 _L9 _L10 _L11
_L1:
        try
        {
            ((ImageView)findViewById(0x7f090286)).setImageResource(0x7f020318);
        }
        catch (Exception exception)
        {
            Logger.e("Exception in EncouragmentActivity", exception);
            return;
        }
        j = 0x7f0701bf;
        k = 0x7f0701c4;
        l = 0x7f0701ba;
_L16:
        Analytics.log("ENC_POPUP_SHOWN", "TYPE", mAnalyticsTypeString);
        ((TextView)findViewById(0x7f090287)).setText(nativeManager.getLanguageString(getString(j)));
        if (!flag) goto _L13; else goto _L12
_L12:
        textview = (TextView)findViewById(0x7f090288);
        s = nativeManager.getLanguageString(getString(k));
        aobj = new Object[1];
        aobj[0] = nativeManager.getLanguageString(getString(i));
        textview.setText(String.format(s, aobj));
_L14:
        ((TextView)findViewById(0x7f09028a)).setText(nativeManager.getLanguageString(getString(l)));
        ((TextView)findViewById(0x7f09028a)).setPadding(0, 0, 0, 0);
        return;
_L2:
        ((ImageView)findViewById(0x7f090286)).setImageResource(0x7f020318);
        j = 0x7f0701bf;
        k = 0x7f0701c4;
        i = 0x7f0701c5;
        flag = true;
        l = 0x7f0701ba;
        continue; /* Loop/switch isn't completed */
_L3:
        mAnalyticsTypeString = "NEW_VERSION";
        ((ImageView)findViewById(0x7f090286)).setImageResource(0x7f020318);
        j = 0x7f0701c0;
        k = 0x7f0701c7;
        l = 0x7f0701bb;
        flag = false;
        i = 0;
        continue; /* Loop/switch isn't completed */
_L5:
        mAnalyticsTypeString = "FB_LIKE";
        ((ImageView)findViewById(0x7f090286)).setImageResource(0x7f02022a);
        j = 0x7f0701c2;
        k = 0x7f0701cb;
        l = 0x7f0701bd;
        flag = false;
        i = 0;
        continue; /* Loop/switch isn't completed */
_L7:
        mAnalyticsTypeString = "MAP_EDITOR";
        ((ImageView)findViewById(0x7f090286)).setImageResource(0x7f020252);
        j = 0x7f0701b6;
        k = 0x7f0701b7;
        l = 0x7f0701b8;
        Analytics.log("ENC_MAP_EDITOR_SHOWN");
        flag = false;
        i = 0;
        continue; /* Loop/switch isn't completed */
_L8:
        mAnalyticsTypeString = "FB_CONNECT";
        j = 0x7f0701aa;
        k = 0x7f0701ab;
        l = 0x7f0701ac;
        NativeManager.getInstance().SignUplogAnalytics("DRIVE_WITH_FRIENDS_POPUP", null, null, false);
        ((ImageView)findViewById(0x7f090286)).setImageResource(0x7f02014a);
        findViewById(0x7f090289).setBackgroundResource(0x7f02008a);
        ((TextView)findViewById(0x7f09028a)).setTextColor(-1);
        findViewById(0x7f090289).setPadding(0, 0, 0, 0);
        flag = false;
        i = 0;
        continue; /* Loop/switch isn't completed */
_L9:
        mAnalyticsTypeString = "SEND_ETA";
        j = 0x7f0701ad;
        k = 0x7f0701ae;
        l = 0x7f0701af;
        NativeManager.getInstance().SignUplogAnalytics("ENC_SEND_ETA_SHOWN", null, null, false);
        ((ImageView)findViewById(0x7f090286)).setImageResource(0x7f02034c);
        findViewById(0x7f090289).setBackgroundResource(0x7f02038e);
        ((TextView)findViewById(0x7f09028a)).setTextColor(-1);
        findViewById(0x7f090289).setPadding(0, 0, 0, 0);
        flag = false;
        i = 0;
        continue; /* Loop/switch isn't completed */
_L10:
        mAnalyticsTypeString = "ADD_HOME";
        j = 0x7f0701b3;
        k = 0x7f0701b4;
        l = 0x7f0701b5;
        NativeManager.getInstance().SignUplogAnalytics("ENC_ADD_HOME_SHOWN", null, null, false);
        ((ImageView)findViewById(0x7f090286)).setImageResource(0x7f02000f);
        findViewById(0x7f090289).setBackgroundResource(0x7f02038e);
        ((TextView)findViewById(0x7f09028a)).setTextColor(-1);
        findViewById(0x7f090289).setPadding(0, 0, 0, 0);
        flag = false;
        i = 0;
        continue; /* Loop/switch isn't completed */
_L11:
        mAnalyticsTypeString = "SEND_LOCATION";
        j = 0x7f0701b0;
        k = 0x7f0701b1;
        l = 0x7f0701b2;
        NativeManager.getInstance().SignUplogAnalytics("ENC_SEND_LOCATION_SHOWN", null, null, false);
        ((ImageView)findViewById(0x7f090286)).setImageResource(0x7f020352);
        findViewById(0x7f090289).setBackgroundResource(0x7f02038e);
        ((TextView)findViewById(0x7f09028a)).setTextColor(-1);
        findViewById(0x7f090289).setPadding(0, 0, 0, 0);
        flag = false;
        i = 0;
        continue; /* Loop/switch isn't completed */
_L13:
        ((TextView)findViewById(0x7f090288)).setText(nativeManager.getLanguageString(getString(k)));
          goto _L14
_L4:
        j = 0x7f0701c1;
        k = 0x7f0701c9;
        l = 0x7f0701bc;
        flag = false;
        i = 0;
        continue; /* Loop/switch isn't completed */
_L6:
        j = 0x7f0701c3;
        k = 0x7f0701cd;
        l = 0x7f0701be;
        flag = false;
        i = 0;
        if (true) goto _L16; else goto _L15
_L15:
    }

    public void onPause()
    {
        super.onPause();
        if (mType == 8)
        {
            NativeManager.getInstance().SignUplogAnalytics("DRIVE_WITH_FRIENDS_POPUP_SKIP", null, null, false);
        }
        if (closeCallback != -1L)
        {
            NativeManager.getInstance().encouragementCloseCallback(closeCallback);
        }
        if (!buttonClicked)
        {
            Analytics.log("ENC_POPUP_SKIP", "TYPE", mAnalyticsTypeString);
        }
    }











}
