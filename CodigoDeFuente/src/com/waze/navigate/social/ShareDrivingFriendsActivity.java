// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.MapView;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.ifs.ui.ActivityBase;
import com.waze.messages.MessagesNativeManager;
import com.waze.navigate.DriveToNativeManager;
import com.waze.settings.SettingsTitleText;
import com.waze.share.ShareUtility;
import com.waze.strings.DisplayStrings;
import com.waze.user.FriendUserData;
import com.waze.view.title.TitleBar;
import java.util.ArrayList;
import java.util.Locale;

// Referenced classes of package com.waze.navigate.social:
//            EndDriveData

public class ShareDrivingFriendsActivity extends ActivityBase
    implements com.waze.NativeManager.IRefreshFriendsDrivingData
{
    public class TextPickerDialog extends Dialog
    {

        final ShareDrivingFriendsActivity this$0;


        public TextPickerDialog(Context context)
        {
            this$0 = ShareDrivingFriendsActivity.this;
            super(context, 0x7f060063);
            Window window = getWindow();
            window.setLayout(-1, -2);
            window.setGravity(81);
            setCancelable(true);
            setCanceledOnTouchOutside(true);
            setContentView(0x7f030101);
            NativeManager nativemanager = NativeManager.getInstance();
            ((TextView)findViewById(0x7f0906a8)).setText(nativemanager.getLanguageString(DisplayStrings.DS_SELECT_A_MESSAGE));
            ((TextView)findViewById(0x7f0906b0)).setText(nativemanager.getLanguageString(DisplayStrings.DS_BEEP_BEEP));
            findViewById(0x7f0906af).setOnClickListener(new _cls1());
            ((TextView)findViewById(0x7f0906ae)).setText(nativemanager.getLanguageString(DisplayStrings.DS_CUSTOM_MESSAGE));
            findViewById(0x7f0906ad).setOnClickListener(new _cls2());
            ((TextView)findViewById(0x7f0906aa)).setText((new StringBuilder("\"")).append(nativemanager.getLanguageString(DisplayStrings.DS_SHARE_REPLY_1)).append("\"").toString());
            findViewById(0x7f0906a9).setOnClickListener(nativemanager. new _cls3());
            ((TextView)findViewById(0x7f0906ac)).setText((new StringBuilder("\"")).append(nativemanager.getLanguageString(DisplayStrings.DS_SHARE_REPLY_2)).append("\"").toString());
            findViewById(0x7f0906ab).setOnClickListener(nativemanager. new _cls4());
        }
    }


    private static final int MODE_BEEP = 0;
    private static final int MODE_CUSTOM = 2;
    private static final int MODE_TEXT = 1;
    private static final int RQ_CUSTOM_MESSAGE = 101;
    private boolean IsSetMeeting;
    ArrayAdapter adapter;
    private boolean bIsDriving;
    private ImageView increaseMapButton;
    private Button increaseMapOverlay;
    private boolean isMapBig;
    private int mCurMode;
    private String mCurText;
    private EndDriveData mEndDriveData;
    private final RunnableExecutor mNativeCanvasReadyEvent = new RunnableExecutor() {

        final ShareDrivingFriendsActivity this$0;

        public void event()
        {
            if (!IsSetMeeting)
            {
                DriveToNativeManager.getInstance().setMeeting(sMeeting);
                IsSetMeeting = true;
            }
        }

            
            {
                this$0 = ShareDrivingFriendsActivity.this;
                super();
            }
    };
    protected String mShareOwner;
    private FriendUserData mSharedFriends;
    private TitleBar mTitleBar;
    int mType;
    String mUrl;
    private RelativeLayout mapLayout;
    private RelativeLayout mapPlaceholder;
    private MapView mapView;
    private NativeManager nm;
    ArrayList people;
    String sMeeting;
    protected TextView shareDriveSwitch;

    public ShareDrivingFriendsActivity()
    {
        mUrl = null;
        mType = 0;
        sMeeting = null;
        mEndDriveData = null;
        IsSetMeeting = false;
        isMapBig = false;
        bIsDriving = false;
        mCurMode = 1;
        mCurText = "";
    }

    private void onBeepBeep()
    {
        mCurMode = 0;
        mCurText = nm.getLanguageString(DisplayStrings.DS_BEEP_BEEP);
        ((TextView)findViewById(0x7f0906a4)).setText(mCurText);
        sendMessage();
    }

    private void onSendCustomMessage()
    {
        mCurMode = 2;
        mCurText = nm.getLanguageString(DisplayStrings.DS_CUSTOM_MESSAGE);
        ((TextView)findViewById(0x7f0906a4)).setText(mCurText);
        sendMessage();
    }

    private void onSendMessage(String s)
    {
        mCurMode = 1;
        mCurText = s;
        ((TextView)findViewById(0x7f0906a4)).setText(s);
        sendMessage();
    }

    private void setMapLayoutListener(View view)
    {
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(view.getMeasuredWidth(), view.getMeasuredHeight());
        layoutparams.topMargin = view.getTop();
        layoutparams.topMargin = layoutparams.topMargin + mTitleBar.getMeasuredHeight();
        layoutparams.leftMargin = view.getLeft();
        mapLayout.setLayoutParams(layoutparams);
    }

    void driveThere()
    {
        Analytics.log("FRIEND_SHARED_DRIVE_GO", null, null);
        DriveToNativeManager.getInstance().drive(sMeeting, true);
        setResult(-1);
        finish();
    }

    public void increaseMapClicked(View view)
    {
        if (isMapBig)
        {
            isMapBig = false;
            mapView.setHandleTouch(false);
            increaseMapOverlay.setVisibility(0);
            increaseMapButton.setImageResource(0x7f02024e);
            setMapLayoutListener(mapPlaceholder);
            findViewById(0x7f0906a7).bringToFront();
            DriveToNativeManager.getInstance().setMapMode(true);
            return;
        } else
        {
            isMapBig = true;
            mapView.setHandleTouch(true);
            increaseMapOverlay.setVisibility(8);
            increaseMapButton.setImageResource(0x7f020248);
            setMapLayoutListener(findViewById(0x7f090699));
            mapLayout.bringToFront();
            DriveToNativeManager.getInstance().setMapMode(false);
            return;
        }
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (i == 101)
        {
            return;
        }
        if (j == -1)
        {
            setResult(-1);
            finish();
        }
        super.onActivityResult(i, j, intent);
    }

    public void onBackPressed()
    {
        if (isMapBig)
        {
            increaseMapClicked(null);
            return;
        } else
        {
            super.onBackPressed();
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setRequestedOrientation(1);
        setContentView(0x7f030100);
        Analytics.log("FRIEND_SHARED_DRIVE_SHOWN", null, null);
        nm = NativeManager.getInstance();
        mTitleBar = (TitleBar)findViewById(0x7f09069a);
        mTitleBar.init(this, nm.getLanguageString(DisplayStrings.DS_SHARED_DRIVE));
        mType = getIntent().getExtras().getInt("type");
        sMeeting = getIntent().getExtras().getString("meeting");
        if (sMeeting != null && nm.isDrivingToMeetingNTV(sMeeting) && nm.isNavigatingNTV())
        {
            findViewById(0x7f0906a7).setVisibility(8);
            bIsDriving = true;
        } else
        {
            findViewById(0x7f0906a7).setVisibility(0);
        }
        ((TextView)findViewById(0x7f09069c)).setText(" ");
        ((TextView)findViewById(0x7f09069f)).setText(" ");
        ((TextView)findViewById(0x7f0906a0)).setText(" ");
        mapPlaceholder = (RelativeLayout)findViewById(0x7f0900f3);
        mapLayout = (RelativeLayout)findViewById(0x7f0900f4);
        mapPlaceholder.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

            final ShareDrivingFriendsActivity this$0;

            public void onGlobalLayout()
            {
                android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(mapPlaceholder.getMeasuredWidth(), mapPlaceholder.getMeasuredHeight());
                layoutparams.topMargin = mapPlaceholder.getTop();
                layoutparams.topMargin = layoutparams.topMargin + mTitleBar.getMeasuredHeight();
                layoutparams.leftMargin = mapPlaceholder.getLeft();
                mapLayout.setLayoutParams(layoutparams);
                mapPlaceholder.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            }

            
            {
                this$0 = ShareDrivingFriendsActivity.this;
                super();
            }
        });
        increaseMapOverlay = (Button)findViewById(0x7f0906a6);
        mapView = (MapView)findViewById(0x7f0900f5);
        mapView.setNativeCanvasReadyEvent(mNativeCanvasReadyEvent);
        increaseMapOverlay.setVisibility(0);
        findViewById(0x7f0906a7).setOnClickListener(new android.view.View.OnClickListener() {

            final ShareDrivingFriendsActivity this$0;

            public void onClick(View view)
            {
                driveThere();
            }

            
            {
                this$0 = ShareDrivingFriendsActivity.this;
                super();
            }
        });
        increaseMapButton = (ImageView)findViewById(0x7f0900f6);
        increaseMapButton.setImageResource(0x7f02024e);
        mCurText = (new StringBuilder("\"")).append(nm.getLanguageString(DisplayStrings.DS_SHARE_REPLY_1)).append("\"").toString();
        ((TextView)findViewById(0x7f0906a4)).setText(mCurText);
        findViewById(0x7f0906a3).setOnClickListener(new android.view.View.OnClickListener() {

            final ShareDrivingFriendsActivity this$0;

            public void onClick(View view)
            {
                (new TextPickerDialog(ShareDrivingFriendsActivity.this)).show();
            }

            
            {
                this$0 = ShareDrivingFriendsActivity.this;
                super();
            }
        });
        findViewById(0x7f0906a2).setOnClickListener(new android.view.View.OnClickListener() {

            final ShareDrivingFriendsActivity this$0;

            public void onClick(View view)
            {
                sendMessage();
            }

            
            {
                this$0 = ShareDrivingFriendsActivity.this;
                super();
            }
        });
        ((SettingsTitleText)findViewById(0x7f0906a1)).setText(nm.getLanguageString(DisplayStrings.DS_REPLY));
    }

    protected void onPause()
    {
        super.onPause();
        mapView.onPause();
        IsSetMeeting = false;
        DriveToNativeManager.getInstance().unsetMeeting();
    }

    public void onRefresh()
    {
        DriveToNativeManager.getInstance().getFriendsDriveData(new com.waze.navigate.DriveToNativeManager.EndDriveListener() {

            final ShareDrivingFriendsActivity this$0;

            public void onComplete(EndDriveData enddrivedata)
            {
                mEndDriveData = enddrivedata;
                if (mEndDriveData == null) goto _L2; else goto _L1
_L1:
                mShareOwner = mEndDriveData.shareOwner;
                String s = nm.getLanguageString(DisplayStrings.DS_FROM_PS);
                Object aobj[] = new Object[1];
                aobj[0] = ShareUtility.getShortened(mShareOwner);
                String s1 = String.format(s, aobj);
                mTitleBar.setTitle(s1.toUpperCase(Locale.US));
                String s2 = (new StringBuilder(String.valueOf(nm.getLanguageString(DisplayStrings.DS_IM_ON_THE_WAY_TO)))).append(" - ").append(mEndDriveData.address).toString();
                ((TextView)findViewById(0x7f09069c)).setText(s2);
                mapPlaceholder.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

                    final _cls6 this$1;

                    public void onGlobalLayout()
                    {
                        setMapLayoutListener(mapPlaceholder);
                        mapPlaceholder.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    }

            
            {
                this$1 = _cls6.this;
                super();
            }
                });
                String s3 = nm.getLanguageString(DisplayStrings.DS_REPLY_TO_PS);
                Object aobj1[] = new Object[1];
                aobj1[0] = ShareUtility.getFirstName(mShareOwner);
                String s4 = String.format(s3, aobj1);
                ((SettingsTitleText)findViewById(0x7f0906a1)).setText(s4);
                if (mEndDriveData.Others.length <= 0) goto _L2; else goto _L3
_L3:
                if (mShareOwner == null || mShareOwner.isEmpty()) goto _L5; else goto _L4
_L4:
                FriendUserData afrienduserdata[];
                int i;
                int j;
                afrienduserdata = mEndDriveData.Others;
                i = afrienduserdata.length;
                j = 0;
_L9:
                if (j < i) goto _L6; else goto _L5
_L5:
                if (mSharedFriends == null)
                {
                    mSharedFriends = mEndDriveData.Others[0];
                }
                ((TextView)findViewById(0x7f09069f)).setText(mSharedFriends.arrivedShareText);
                StringBuilder stringbuilder = new StringBuilder();
                if (mSharedFriends.statusLine != null)
                {
                    stringbuilder.append(mSharedFriends.statusLine);
                }
                if (mSharedFriends.mShowETA && mSharedFriends.arrivedTime != null && !mSharedFriends.arrivedTime.isEmpty())
                {
                    if (mSharedFriends.statusLine != null && !mSharedFriends.statusLine.isEmpty())
                    {
                        stringbuilder.append(", ");
                    }
                    stringbuilder.append(mSharedFriends.arrivedText);
                    stringbuilder.append(" ");
                    stringbuilder.append(mSharedFriends.arrivedTime);
                }
                ((TextView)findViewById(0x7f0906a0)).setText(stringbuilder.toString());
_L2:
                return;
_L6:
                FriendUserData frienduserdata = afrienduserdata[j];
                if (!mShareOwner.equals(frienduserdata.getName()))
                {
                    break; /* Loop/switch isn't completed */
                }
                mSharedFriends = frienduserdata;
                if (true) goto _L5; else goto _L7
_L7:
                j++;
                if (true) goto _L9; else goto _L8
_L8:
            }


            
            {
                this$0 = ShareDrivingFriendsActivity.this;
                super();
            }
        }, sMeeting);
    }

    protected void onResume()
    {
        super.onResume();
        mapView.onResume();
    }

    void sendMessage()
    {
        if (mSharedFriends != null)
        {
            if (mCurMode == 0)
            {
                Analytics.log("BEEP_BEEP_CLICK_FROM", "VAUE", "SHARED_DRIVE");
                nm.SendBeepBeep(mSharedFriends.mLongitude, mSharedFriends.mLatitude, mSharedFriends.mAzimuth, mSharedFriends.mID, new com.waze.NativeManager.IResultCode() {

                    final ShareDrivingFriendsActivity this$0;

                    public void onResult(int i)
                    {
                    }

            
            {
                this$0 = ShareDrivingFriendsActivity.this;
                super();
            }
                });
                return;
            }
            if (mCurMode == 1)
            {
                MessagesNativeManager.getInstance().sendMessage(true, mSharedFriends, mCurText);
                return;
            }
            if (mCurMode == 2)
            {
                MessagesNativeManager messagesnativemanager = MessagesNativeManager.getInstance();
                com.waze.messages.MessagesNativeManager.EditorContext editorcontext = new com.waze.messages.MessagesNativeManager.EditorContext(this, 1, mSharedFriends);
                editorcontext.mRqCode = 101;
                messagesnativemanager.startPrivate(editorcontext);
                return;
            }
        }
    }















    // Unreferenced inner class com/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog$1

/* anonymous class */
    class TextPickerDialog._cls1
        implements android.view.View.OnClickListener
    {

        final TextPickerDialog this$1;

        public void onClick(View view)
        {
            onBeepBeep();
            dismiss();
        }

            
            {
                this$1 = TextPickerDialog.this;
                super();
            }
    }


    // Unreferenced inner class com/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog$2

/* anonymous class */
    class TextPickerDialog._cls2
        implements android.view.View.OnClickListener
    {

        final TextPickerDialog this$1;

        public void onClick(View view)
        {
            onSendCustomMessage();
            dismiss();
        }

            
            {
                this$1 = TextPickerDialog.this;
                super();
            }
    }


    // Unreferenced inner class com/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog$3

/* anonymous class */
    class TextPickerDialog._cls3
        implements android.view.View.OnClickListener
    {

        final TextPickerDialog this$1;
        private final NativeManager val$nm;

        public void onClick(View view)
        {
            onSendMessage(nm.getLanguageString(DisplayStrings.DS_SHARE_REPLY_1));
            dismiss();
        }

            
            {
                this$1 = final_textpickerdialog;
                nm = NativeManager.this;
                super();
            }
    }


    // Unreferenced inner class com/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog$4

/* anonymous class */
    class TextPickerDialog._cls4
        implements android.view.View.OnClickListener
    {

        final TextPickerDialog this$1;
        private final NativeManager val$nm;

        public void onClick(View view)
        {
            onSendMessage(nm.getLanguageString(DisplayStrings.DS_SHARE_REPLY_2));
            dismiss();
        }

            
            {
                this$1 = final_textpickerdialog;
                nm = NativeManager.this;
                super();
            }
    }

}
