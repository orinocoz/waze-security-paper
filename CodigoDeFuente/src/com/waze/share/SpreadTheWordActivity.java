// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.Html;
import android.view.View;
import com.waze.AppService;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.settings.DrillDownSettingView;
import com.waze.social.facebook.FacebookWrapper;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.share:
//            TwitterFollowActivity, FbLikeLauncher, ShareFbQueries

public class SpreadTheWordActivity extends ActivityBase
{
    protected class OnOkMsgSmsService
        implements android.content.DialogInterface.OnClickListener
    {

        final SpreadTheWordActivity this$0;

        public void onClick(DialogInterface dialoginterface, int i)
        {
            dialoginterface.cancel();
            if (i == 1)
            {
                FacebookWrapper.getInstance().authorize(SpreadTheWordActivity.this, null, false);
            }
        }

        protected OnOkMsgSmsService()
        {
            this$0 = SpreadTheWordActivity.this;
            super();
        }
    }


    private DrillDownSettingView email;
    private DrillDownSettingView follow;
    private DrillDownSettingView like;
    private NativeManager nativeManager;
    private DrillDownSettingView rate;
    private DrillDownSettingView share;

    public SpreadTheWordActivity()
    {
        nativeManager = AppService.getNativeManager();
    }

    private void onEmail()
    {
        String s = nativeManager.getLanguageString(DisplayStrings.DS_COOL_NEW_COMMUTING_APP_TO_CHECK_OUTE);
        String s1 = String.format(getString(0x7f070195), new Object[] {
            nativeManager.getLanguageString(DisplayStrings.DS_JUST_A_QUICK_NOTE_TO_TELL_YOU_ABOUT_WAZE_H__A_FREE__COMMUNITYHBASED_TRAFFIC_A_NAVIGATION_APP_THAT_I_THOUGHT_YOU_MIGHT_LIKE_), nativeManager.getLanguageString(DisplayStrings.DS_WHEN_YOU_DOWNLOAD_WAZE__YOU_NOT_ONLY_GET_A_FREE_NAVIGATION__BUT_ALSO_BECOME_PART_OF_THE_LOCAL_DRIVING_COMMUNITY_IN_YOUR_AREA__JOINING_FORCES_WITH_OTHER_DRIVERS_NEARBY_TO_BEAT_TRAFFIC__SAVE_TIME__AND_IMPROVE_EVERYONESS_DAILY_COMMUTE___), nativeManager.getLanguageString(DisplayStrings.DS_DOWNLOAD_IT), nativeManager.getLanguageString(DisplayStrings.DS_AND_CHECK_IT_OUT_FOR_YOURSELFE)
        });
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.SUBJECT", s);
        intent.putExtra("android.intent.extra.TEXT", Html.fromHtml(s1));
        intent.setType("message/rfc822");
        startActivity(Intent.createChooser(intent, nativeManager.getLanguageString(DisplayStrings.DS_EMAIL_YOUR_FRIENDS)));
    }

    private void onFollow()
    {
        startActivityForResult(new Intent(this, com/waze/share/TwitterFollowActivity), 0);
    }

    private void onLike()
    {
        FbLikeLauncher.start(this);
    }

    private void onRate()
    {
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.waze")));
    }

    private void onShare()
    {
        if (MyWazeNativeManager.getInstance().getFacebookLoggedInNTV())
        {
            ShareFbQueries.postDialogShow(this);
            return;
        } else
        {
            MsgBox.getInstance().OpenConfirmDialogCustomTimeoutCbJava(nativeManager.getLanguageString(DisplayStrings.DS_FACEBOOK), nativeManager.getLanguageString(DisplayStrings.DS_WAZE_NEED_TO_CONNECT), true, new OnOkMsgSmsService(), nativeManager.getLanguageString(DisplayStrings.DS_CONNECT), nativeManager.getLanguageString(DisplayStrings.DS_CANCEL), -1);
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030110);
        ((TitleBar)findViewById(0x7f090073)).init(this, DisplayStrings.DS_SHARE);
        Analytics.log("SETTINGS_CLICK", "VAUE", "SPREAD_THE_WORD");
        share = (DrillDownSettingView)findViewById(0x7f090706);
        if (MyWazeNativeManager.getInstance().FacebookEnabledNTV())
        {
            share.setText(nativeManager.getLanguageString(DisplayStrings.DS_SHARE_ON_FACEBOOK));
            share.setOnClickListener(new android.view.View.OnClickListener() {

                final SpreadTheWordActivity this$0;

                public void onClick(View view)
                {
                    if (AppService.isNetworkAvailable())
                    {
                        onShare();
                        return;
                    } else
                    {
                        MsgBox.openMessageBox(nativeManager.getLanguageString(DisplayStrings.DS_NO_NETWORK_CONNECTION), nativeManager.getLanguageString(DisplayStrings.DS_SORRY__YOU_HAVE_NO_NETWORK_CONNECTION_RIGHT_NOW__PLEASE_TRY_LATER), false);
                        return;
                    }
                }

            
            {
                this$0 = SpreadTheWordActivity.this;
                super();
            }
            });
        } else
        {
            share.setVisibility(8);
        }
        email = (DrillDownSettingView)findViewById(0x7f090707);
        email.setText(nativeManager.getLanguageString(DisplayStrings.DS_EMAIL_YOUR_FRIENDS));
        email.setOnClickListener(new android.view.View.OnClickListener() {

            final SpreadTheWordActivity this$0;

            public void onClick(View view)
            {
                onEmail();
            }

            
            {
                this$0 = SpreadTheWordActivity.this;
                super();
            }
        });
        like = (DrillDownSettingView)findViewById(0x7f090708);
        if (MyWazeNativeManager.getInstance().FacebookEnabledNTV())
        {
            like.setText(nativeManager.getLanguageString(DisplayStrings.DS_LIKE_OUR_PAGE));
            like.setOnClickListener(new android.view.View.OnClickListener() {

                final SpreadTheWordActivity this$0;

                public void onClick(View view)
                {
                    if (AppService.isNetworkAvailable())
                    {
                        onLike();
                        return;
                    } else
                    {
                        MsgBox.openMessageBox(nativeManager.getLanguageString(DisplayStrings.DS_NO_NETWORK_CONNECTION), nativeManager.getLanguageString(DisplayStrings.DS_SORRY__YOU_HAVE_NO_NETWORK_CONNECTION_RIGHT_NOW__PLEASE_TRY_LATER), false);
                        return;
                    }
                }

            
            {
                this$0 = SpreadTheWordActivity.this;
                super();
            }
            });
        } else
        {
            like.setVisibility(8);
        }
        follow = (DrillDownSettingView)findViewById(0x7f090709);
        if (MyWazeNativeManager.getInstance().TwitterEnabledNTV())
        {
            follow.setText(nativeManager.getLanguageString(DisplayStrings.DS_FOLLOW_US_ON_TWITTER));
            follow.setOnClickListener(new android.view.View.OnClickListener() {

                final SpreadTheWordActivity this$0;

                public void onClick(View view)
                {
                    if (AppService.isNetworkAvailable())
                    {
                        onFollow();
                        return;
                    } else
                    {
                        MsgBox.openMessageBox(nativeManager.getLanguageString(DisplayStrings.DS_NO_NETWORK_CONNECTION), nativeManager.getLanguageString(DisplayStrings.DS_SORRY__YOU_HAVE_NO_NETWORK_CONNECTION_RIGHT_NOW__PLEASE_TRY_LATER), false);
                        return;
                    }
                }

            
            {
                this$0 = SpreadTheWordActivity.this;
                super();
            }
            });
        } else
        {
            follow.setVisibility(8);
        }
        rate = (DrillDownSettingView)findViewById(0x7f09070a);
        if (MyWazeNativeManager.getInstance().MarketEnabledNTV())
        {
            rate.setText(nativeManager.getLanguageString(DisplayStrings.DS_RATE_US));
            rate.setOnClickListener(new android.view.View.OnClickListener() {

                final SpreadTheWordActivity this$0;

                public void onClick(View view)
                {
                    onRate();
                }

            
            {
                this$0 = SpreadTheWordActivity.this;
                super();
            }
            });
            return;
        } else
        {
            rate.setVisibility(8);
            return;
        }
    }






}
