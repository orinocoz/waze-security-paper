// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeData;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.social.facebook.FacebookWrapper;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

public class InstallPickAccountActivity extends ActivityBase
{

    private NativeManager nativeManager;

    public InstallPickAccountActivity()
    {
        nativeManager = AppService.getNativeManager();
    }

    public void SetMyWazeData(MyWazeData mywazedata)
    {
        if (mywazedata.mUserName == "")
        {
            mywazedata.mUserName = nativeManager.getLanguageString(DisplayStrings.DS_TEMPORARY_USER);
        }
        ((TextView)findViewById(0x7f090356)).setText((new StringBuilder(String.valueOf(mywazedata.mUserName))).append("\n").append(mywazedata.mPts).append(" ").append(nativeManager.getLanguageString(DisplayStrings.DS_POINTS)).append(" - ").append(nativeManager.getLanguageString(DisplayStrings.DS_RANK)).append(" ").append(mywazedata.mRank).append("\n").append(nativeManager.getLanguageString(DisplayStrings.DS_LAST_LOGIN)).append(" ").append(nativeManager.getLanguageString(DisplayStrings.DS_TODAY)).toString());
        MyWazeData mywazedata1 = MyWazeNativeManager.getInstance().getMyConflictingUserData();
        if (mywazedata1.mUserName == "")
        {
            mywazedata1.mUserName = nativeManager.getLanguageString(DisplayStrings.DS_TEMPORARY_USER);
        }
        ((TextView)findViewById(0x7f090359)).setText((new StringBuilder(String.valueOf(mywazedata1.mUserName))).append("\n").append(mywazedata1.mPts).append(" ").append(nativeManager.getLanguageString(DisplayStrings.DS_POINTS)).append(" - ").append(nativeManager.getLanguageString(DisplayStrings.DS_RANK)).append(" ").append(mywazedata1.mRank).append("\n").append(mywazedata1.mLastSeen).toString());
    }

    public void onBackPressed()
    {
        MyWazeNativeManager.getInstance().facebookDisconnectNow();
        FacebookWrapper.getInstance().logout(this, null);
        super.onBackPressed();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03006e);
        ((TextView)findViewById(0x7f09033e)).setText(nativeManager.getLanguageString(DisplayStrings.DS_PICK_YOUR_ACCOUNT));
        ((TitleBar)findViewById(0x7f090337)).init(this, nativeManager.getLanguageString(DisplayStrings.DS_UHHOHE), false);
        android.view.View.OnClickListener onclicklistener = new android.view.View.OnClickListener() {

            final InstallPickAccountActivity this$0;

            public void onClick(View view)
            {
                onDestroy();
            }

            
            {
                this$0 = InstallPickAccountActivity.this;
                super();
            }
        };
        ((TitleBar)findViewById(0x7f090337)).setOnClickCloseListener(onclicklistener);
        ((TextView)findViewById(0x7f090348)).setText(nativeManager.getLanguageString(DisplayStrings.DS_YOUR_CREDENTIALS_ARE));
        ((TextView)findViewById(0x7f090354)).setText(nativeManager.getLanguageString(DisplayStrings.DS_CUREENT_USER_ON));
        ((TextView)findViewById(0x7f090357)).setText(nativeManager.getLanguageString(DisplayStrings.DS_OTHER_USER_FOUND));
        ((TextView)findViewById(0x7f09035a)).setText(nativeManager.getLanguageString(DisplayStrings.DS_WE_RECOMMEND_CONNECTION_TO_YOUR));
        findViewById(0x7f090355).setOnClickListener(new android.view.View.OnClickListener() {

            final InstallPickAccountActivity this$0;

            public void onClick(View view)
            {
                MyWazeNativeManager.getInstance().facebookResolveConflict();
                setResult(-1);
                finish();
            }

            
            {
                this$0 = InstallPickAccountActivity.this;
                super();
            }
        });
        findViewById(0x7f090358).setOnClickListener(new android.view.View.OnClickListener() {

            final InstallPickAccountActivity this$0;

            public void onClick(View view)
            {
                FacebookWrapper.getInstance().logout(InstallPickAccountActivity.this, new com.waze.social.facebook.FacebookWrapper.OnLogoutCompletedListener() {

                    final _cls3 this$1;

                    public void onLogoutCompleted()
                    {
                        FacebookWrapper.getInstance().SignIn(_fld0, new com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener() {

                            final _cls1 this$2;

                            public void onAuthorizeCompleted(boolean flag, int i)
                            {
                                if (flag)
                                {
                                    setResult(-1);
                                    finish();
                                    return;
                                } else
                                {
                                    MsgBox.openMessageBox(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ERROR), NativeManager.getInstance().getLanguageString(DisplayStrings.DS_CANNOT_CONFIGURE_SERVICE__PLEASE_TRY), false);
                                    return;
                                }
                            }

            
            {
                this$2 = _cls1.this;
                super();
            }
                        }, false);
                    }


            
            {
                this$1 = _cls3.this;
                super();
            }
                });
            }


            
            {
                this$0 = InstallPickAccountActivity.this;
                super();
            }
        });
        MyWazeNativeManager.getInstance().getMyWazeData(this);
    }

}
