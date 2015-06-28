// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.social;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.navigate.DriveToNativeManager;
import com.waze.share.ShareUtility;
import com.waze.strings.DisplayStrings;
import com.waze.user.PersonBase;
import com.waze.utils.ImageRepository;
import java.util.Locale;

public class AddFriendDialog extends Dialog
{
    public static interface IAddFriendDialog
    {

        public abstract void onNotNowClicked();

        public abstract void onSendRequestClicked();
    }


    private ActivityBase mActivity;
    private String mButtonText;
    private PersonBase mFriend;
    private IAddFriendDialog mIAddFriendDialog;
    private int mImageResource;
    private NativeManager mNatMgr;
    private String mTitle;

    public AddFriendDialog(ActivityBase activitybase, PersonBase personbase, IAddFriendDialog iaddfrienddialog)
    {
        super(activitybase, 0x7f06000f);
        mNatMgr = AppService.getNativeManager();
        mActivity = activitybase;
        mFriend = personbase;
        mIAddFriendDialog = iaddfrienddialog;
    }

    public AddFriendDialog(ActivityBase activitybase, String s, String s1, int i, IAddFriendDialog iaddfrienddialog)
    {
        super(activitybase, 0x7f06000f);
        mNatMgr = AppService.getNativeManager();
        mActivity = activitybase;
        mTitle = s;
        mButtonText = s1;
        mImageResource = i;
        mIAddFriendDialog = iaddfrienddialog;
    }

    private void initLayout()
    {
        setContentView(0x7f030006);
        getWindow().setLayout(-1, -1);
        TextView textview = (TextView)findViewById(0x7f090071);
        ImageView imageview = (ImageView)findViewById(0x7f09006f);
        TextView textview1;
        if (mFriend != null)
        {
            String s = mNatMgr.getLanguageString(DisplayStrings.DS_ADD_SP_AS_FRIEND);
            Object aobj[] = new Object[1];
            aobj[0] = mFriend.getName();
            String s1 = String.format(s, aobj);
            ((TextView)findViewById(0x7f090070)).setText(s1.toUpperCase(Locale.US));
            String s2 = mFriend.getName();
            TextView textview2 = (TextView)findViewById(0x7f09006e);
            if (s2 != null && s2.length() > 0)
            {
                textview2.setText(ShareUtility.getInitials(s2));
            }
            String s3 = mFriend.getImage();
            if (s3 != null && !s3.isEmpty())
            {
                String s4 = Uri.parse(s3).getScheme();
                if (s4 == null || !s4.equals("content"))
                {
                    s3 = DriveToNativeManager.getInstance().getFriendImageNTV(mFriend.getID(), (int)(80F * getContext().getResources().getDisplayMetrics().density));
                }
            }
            ImageRepository.instance.getImage(s3, imageview, mActivity);
            textview.setText(mNatMgr.getLanguageString(DisplayStrings.DS_SEND_FRIEND_REQUEST));
        } else
        {
            ((TextView)findViewById(0x7f090070)).setText(mTitle);
            textview.setText(mButtonText);
            imageview.setImageResource(mImageResource);
        }
        textview.setOnClickListener(new android.view.View.OnClickListener() {

            final AddFriendDialog this$0;

            public void onClick(View view)
            {
                if (mIAddFriendDialog != null)
                {
                    mIAddFriendDialog.onSendRequestClicked();
                }
            }

            
            {
                this$0 = AddFriendDialog.this;
                super();
            }
        });
        textview1 = (TextView)findViewById(0x7f090072);
        textview1.setText(mNatMgr.getLanguageString(DisplayStrings.DS_SKIP));
        textview1.setOnClickListener(new android.view.View.OnClickListener() {

            final AddFriendDialog this$0;

            public void onClick(View view)
            {
                mIAddFriendDialog.onNotNowClicked();
            }

            
            {
                this$0 = AddFriendDialog.this;
                super();
            }
        });
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        initLayout();
    }

}
