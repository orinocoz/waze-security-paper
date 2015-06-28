// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.share:
//            ShareFbFriend, ShareFbLocation, ShareFbMainData, ShareFbQueries, 
//            ShareNativeManager

public class FacebookEventPostActivity extends ActivityBase
    implements ShareNativeManager.IShareFbMainDataHandler, ShareFbQueries.IPostCallback
{

    private boolean bIsAction;
    private String mEventId;
    private ShareFbMainData mFbMainData;
    private ShareFbFriend mFriends[];
    private String mLink;
    private ShareFbLocation mLocation;
    private EditText mPostText;
    private final TextWatcher mPostTextWatcher = new TextWatcher() {

        final FacebookEventPostActivity this$0;

        public void afterTextChanged(Editable editable)
        {
            setTripText();
        }

        public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
        {
        }

        public void onTextChanged(CharSequence charsequence, int i, int j, int k)
        {
        }

            
            {
                this$0 = FacebookEventPostActivity.this;
                super();
            }
    };
    private TextView mTripText;
    private String sPostText;

    public FacebookEventPostActivity()
    {
        mFriends = null;
        mLocation = null;
        mPostText = null;
        mEventId = null;
        mLink = null;
        sPostText = null;
        mTripText = null;
        mFbMainData = null;
        bIsAction = true;
    }

    private void _append_highlight_span(SpannableStringBuilder spannablestringbuilder, String s)
    {
        spannablestringbuilder.append(s);
        _highlight_span(spannablestringbuilder, spannablestringbuilder.length() - s.length(), spannablestringbuilder.length());
    }

    private String[] _friends()
    {
        String as[];
        if (mFriends == null || mFriends.length == 0)
        {
            as = null;
        } else
        {
            int i = 0;
            as = new String[mFriends.length];
            while (i < mFriends.length) 
            {
                as[i] = mFriends[i].name;
                i++;
            }
        }
        return as;
    }

    private String[] _friends_ids()
    {
        String as[];
        if (mFriends == null || mFriends.length == 0)
        {
            as = null;
        } else
        {
            int i = 0;
            as = new String[mFriends.length];
            while (i < mFriends.length) 
            {
                as[i] = String.valueOf(mFriends[i].id);
                i++;
            }
        }
        return as;
    }

    private void _highlight_span(SpannableStringBuilder spannablestringbuilder, int i, int j)
    {
        spannablestringbuilder.setSpan(new TextAppearanceSpan(this, 0x7f06005b), i, j, 33);
    }

    private void postAction()
    {
        ShareFbLocation sharefblocation = mLocation;
        if (sharefblocation == null)
        {
            sharefblocation = new ShareFbLocation();
            sharefblocation.id = "-1";
            sharefblocation.name = mFbMainData.location;
            sharefblocation.longitude = 0.0D;
            sharefblocation.latitude = 0.0D;
        }
        ShareFbQueries.postAction(this, sharefblocation, mFbMainData.eta, _friends_ids(), mPostText.getText().toString(), this, true);
    }

    private void postFeed()
    {
        NativeManager.getInstance();
        (new StringBuilder()).append(mTripText.getText().toString());
        Analytics.log("POST_EVENT_NOW");
        ShareFbQueries.postEventFeed(this, null, mLink, _friends_ids(), sPostText, this, true, mEventId, NativeManager.getInstance().getLanguageString(DisplayStrings.DS_POST_EVENT_WALL_WAZE_TEXT), "http://www.waze.com/images/facebook/share-image.png");
    }

    private void setTripText()
    {
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        switch (j)
        {
        default:
            setResult(j);
            finish();
            // fall through

        case 0: // '\0'
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        ShareNativeManager sharenativemanager = ShareNativeManager.getInstance();
        setContentView(0x7f030054);
        sharenativemanager.getShareFbMainData(this, NativeManager.getInstance().isNavigatingNTV());
        sPostText = getIntent().getStringExtra("message");
        mEventId = getIntent().getStringExtra("Id");
        mLink = getIntent().getStringExtra("link");
        ((TextView)findViewById(0x7f0902b1)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_POST_TO_EVENT_WALL));
        ((TextView)findViewById(0x7f0902b0)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_LET_OTHER_ATTENDEES_KNOW_TEXT));
        mPostText = (EditText)findViewById(0x7f0902b3);
        mPostText.addTextChangedListener(mPostTextWatcher);
        mTripText = (TextView)findViewById(0x7f0902b5);
        mTripText.setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_POST_EVENT_WALL_WAZE_TEXT));
        if (sPostText != null)
        {
            mPostText.setText(sPostText);
            bIsAction = false;
        }
        findViewById(0x7f0902b6).setOnClickListener(new android.view.View.OnClickListener() {

            final FacebookEventPostActivity this$0;

            public void onClick(View view)
            {
                if (mFbMainData.isNavigating && bIsAction)
                {
                    postAction();
                    return;
                } else
                {
                    postFeed();
                    return;
                }
            }

            
            {
                this$0 = FacebookEventPostActivity.this;
                super();
            }
        });
    }

    public void onFbMainData(ShareFbMainData sharefbmaindata)
    {
        if (this != null && isAlive())
        {
            mFbMainData = sharefbmaindata;
            ((TitleBar)findViewById(0x7f0902af)).init(this, sharefbmaindata.title);
            mPostText.setHint(sharefbmaindata.hint);
            ((TextView)findViewById(0x7f0902b7)).setText(sharefbmaindata.post_to_fb);
        }
    }

    public void onPostResult(int i, String s)
    {
        android.content.DialogInterface.OnClickListener onclicklistener = new android.content.DialogInterface.OnClickListener() {

            final FacebookEventPostActivity this$0;

            public void onClick(DialogInterface dialoginterface, int j)
            {
                setResult(-1);
                finish();
            }

            
            {
                this$0 = FacebookEventPostActivity.this;
                super();
            }
        };
        android.content.DialogInterface.OnClickListener onclicklistener1 = new android.content.DialogInterface.OnClickListener() {

            final FacebookEventPostActivity this$0;

            public void onClick(DialogInterface dialoginterface, int j)
            {
                setResult(0);
                finish();
            }

            
            {
                this$0 = FacebookEventPostActivity.this;
                super();
            }
        };
        if (i == 0)
        {
            Log.d("WAZE", "Post has been done successfully");
            MsgBox.openMessageBoxTimeout(mFbMainData.postMsgBoxSuccessTitle, mFbMainData.postMsgBoxSuccessText, 5, onclicklistener);
            return;
        } else
        {
            Log.w("WAZE", (new StringBuilder("There was an error posting to FB: ")).append(s).toString());
            MsgBox.openMessageBoxTimeout(mFbMainData.postMsgBoxFailureTitle, mFbMainData.postMsgBoxFailureText, 8, onclicklistener1);
            return;
        }
    }





}
