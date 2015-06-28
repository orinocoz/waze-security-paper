// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.messages;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.Logger;
import com.waze.MoodManager;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.ResManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.user.UserData;
import com.waze.utils.ImageRepository;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.messages:
//            OnSendHandler

public class UserMessageEditorActivity extends ActivityBase
{

    private EditText mEditorView;
    private boolean mIsPrivate;
    private OnSendHandler mOnSendHandler;
    private final TextWatcher mTextWatcher = new TextWatcher() {

        final UserMessageEditorActivity this$0;

        public void afterTextChanged(Editable editable)
        {
            if (editable.length() > 0)
            {
                mTitleBar.setCloseTextColor(114, 210, 238);
                return;
            } else
            {
                mTitleBar.setCloseTextColor(119, 119, 119);
                return;
            }
        }

        public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
        {
        }

        public void onTextChanged(CharSequence charsequence, int i, int j, int k)
        {
        }

            
            {
                this$0 = UserMessageEditorActivity.this;
                super();
            }
    };
    private TitleBar mTitleBar;
    private UserData mUserData;

    public UserMessageEditorActivity()
    {
        mEditorView = null;
        mOnSendHandler = null;
        mUserData = null;
        mIsPrivate = false;
    }

    private void setDisclaimer()
    {
        String s;
        if (mIsPrivate)
        {
            s = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_MESSAGES_ARE_PRIVATE);
        } else
        {
            s = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_CHIT_CHATS_ARE_PUBLIC);
        }
        ((TextView)findViewById(0x7f0907b3)).setText(s);
    }

    private void setEditor()
    {
        mEditorView = (EditText)findViewById(0x7f0907b1);
        String s = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ADD_A_MESSAGE_OPTIONAL);
        mEditorView.setHint(s);
        mEditorView.addTextChangedListener(mTextWatcher);
    }

    private void setPhone()
    {
        String s = mUserData.mPhone;
        TextView textview = (TextView)findViewById(0x7f0907b0);
        View view = findViewById(0x7f0907af);
        if (s == null || s.length() == 0)
        {
            view.setVisibility(8);
            return;
        } else
        {
            textview.setText(s);
            return;
        }
    }

    private void setTitle()
    {
        String s;
        String s1;
        if (mIsPrivate)
        {
            s = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_MESSAGE);
        } else
        {
            s = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PING);
        }
        s1 = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SEND);
        mTitleBar = (TitleBar)findViewById(0x7f0907a1);
        mTitleBar.init(this, s, s1);
        mTitleBar.setCloseTextColor(119, 119, 119);
        mTitleBar.setOnClickCloseListener(new android.view.View.OnClickListener() {

            final UserMessageEditorActivity this$0;

            public void onClick(View view)
            {
                if (!AppService.isNetworkAvailable())
                {
                    showErrorPopup(DisplayStrings.DS_SENDING_PING_FAILED__PLEASE_TRY_AGAIN_LATER);
                } else
                {
                    String s2 = mEditorView.getText().toString();
                    if (!s2.isEmpty())
                    {
                        if (mOnSendHandler != null)
                        {
                            mOnSendHandler.onSend(mIsPrivate, mUserData, s2);
                        }
                        setResult(3);
                        finish();
                        return;
                    }
                }
            }

            
            {
                this$0 = UserMessageEditorActivity.this;
                super();
            }
        });
    }

    private void setUserDetails()
    {
        TextView textview = (TextView)findViewById(0x7f0907a8);
        ImageView imageview = (ImageView)findViewById(0x7f0907a3);
        ImageView imageview1 = (ImageView)findViewById(0x7f0907a5);
        ImageView imageview2 = (ImageView)findViewById(0x7f0907a4);
        TextView textview1 = (TextView)findViewById(0x7f0907aa);
        ImageView imageview3 = (ImageView)findViewById(0x7f0907ac);
        ImageView imageview4 = (ImageView)findViewById(0x7f0907ae);
        ImageView imageview5 = (ImageView)findViewById(0x7f0907a7);
        View view = findViewById(0x7f0907a9);
        View view1 = findViewById(0x7f0907a6);
        View view2 = findViewById(0x7f0907ab);
        View view3 = findViewById(0x7f0907ad);
        NativeManager nativemanager = NativeManager.getInstance();
        textview.setText(mUserData.mNickName);
        imageview.setImageDrawable(MoodManager.getMoodDrawable(this, mUserData.mMood));
        if (mUserData.mAddonName != null && mUserData.mAddonName.length() > 0)
        {
            imageview2.setVisibility(0);
            imageview2.setImageDrawable(ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(mUserData.mAddonName))).append(".bin").toString()));
        } else
        {
            imageview2.setVisibility(8);
        }
        view2.setVisibility(8);
        view3.setVisibility(8);
        if (mUserData.mIsFbFriend)
        {
            if (mUserData.mFaceBookNickName.length() > 0)
            {
                textview1.setText(mUserData.mFaceBookNickName);
            } else
            {
                textview1.setText(nativemanager.getLanguageString(DisplayStrings.DS_FRIEND_WITH_YOU));
            }
        } else
        if (mUserData.mNumFriendsOfFriends == 0)
        {
            String s = mUserData.mFaceBookNickName;
            if (s != null && s.length() > 0)
            {
                textview1.setText(mUserData.mFaceBookNickName);
            } else
            {
                view.setVisibility(8);
            }
        } else
        {
            textview1.setText((new StringBuilder(String.valueOf(nativemanager.getLanguageString(DisplayStrings.DS_FRIENDS_WITH)))).append(" ").toString());
            if (mUserData.mFriend1Url != null)
            {
                view2.setVisibility(0);
                ImageRepository.instance.getImage(mUserData.mFriend1Url, true, imageview3, null, this);
            }
            if (mUserData.mFriend2Url != null)
            {
                view3.setVisibility(0);
                ImageRepository.instance.getImage(mUserData.mFriend2Url, true, imageview4, null, this);
            }
        }
        if (mUserData.mShowGroupIcon)
        {
            android.graphics.drawable.Drawable drawable = ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(mUserData.mGroupIcon))).append(".bin").toString());
            imageview5.setVisibility(0);
            imageview5.setImageDrawable(drawable);
        } else
        {
            imageview5.setVisibility(8);
        }
        if (mUserData.mIsFbFriend || mUserData.mShowFacebookPicture)
        {
            imageview.setVisibility(8);
            imageview2.setVisibility(8);
            imageview5.setVisibility(8);
            ImageRepository.instance.getImage(mUserData.getImage(), true, imageview1, null, this);
            return;
        } else
        {
            view1.setVisibility(8);
            imageview1.setVisibility(8);
            return;
        }
    }

    private void showErrorPopup(DisplayStrings displaystrings)
    {
        android.content.DialogInterface.OnClickListener onclicklistener = new android.content.DialogInterface.OnClickListener() {

            final UserMessageEditorActivity this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                setResult(3);
                finish();
            }

            
            {
                this$0 = UserMessageEditorActivity.this;
                super();
            }
        };
        MsgBox.openMessageBoxWithCallback(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_UHHOHE), NativeManager.getInstance().getLanguageString(displaystrings), false, onclicklistener);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03012f);
        mIsPrivate = getIntent().getBooleanExtra("Is private message", false);
        mUserData = (UserData)getIntent().getSerializableExtra("User data");
        mOnSendHandler = (OnSendHandler)getIntent().getSerializableExtra("On Send Handler");
        if (mUserData == null)
        {
            Logger.e_("Messages", "There is no user data in editor request");
            return;
        } else
        {
            setEditor();
            setDisclaimer();
            setTitle();
            setPhone();
            setUserDetails();
            return;
        }
    }






}
