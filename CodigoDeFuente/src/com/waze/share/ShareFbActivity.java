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
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.share:
//            ShareFbFriend, ShareFbLocation, ShareFbMainData, ShareFbQueries, 
//            ShareFbWithActivity, ShareFbLocationActivity, ShareNativeManager

public class ShareFbActivity extends ActivityBase
    implements ShareNativeManager.IShareFbMainDataHandler, ShareFbQueries.IPostCallback
{

    private boolean bIsAction;
    private ShareFbMainData mFbMainData;
    private ShareFbFriend mFriends[];
    private ShareFbLocation mLocation;
    private EditText mPostText;
    private final TextWatcher mPostTextWatcher = new TextWatcher() {

        final ShareFbActivity this$0;

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
                this$0 = ShareFbActivity.this;
                super();
            }
    };
    private TextView mTripText;

    public ShareFbActivity()
    {
        mFriends = null;
        mLocation = null;
        mPostText = null;
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
        NativeManager nativemanager = NativeManager.getInstance();
        StringBuilder stringbuilder = new StringBuilder();
        if (mLocation != null)
        {
            Editable editable = mPostText.getText();
            if (editable != null && editable.length() > 0)
            {
                stringbuilder.append(editable);
                stringbuilder.append(" - ");
            }
            stringbuilder.append(nativemanager.getLanguageString(DisplayStrings.DS_DROVE_HERE_WITH_WAZE));
        } else
        {
            stringbuilder.append(mTripText.getText().toString());
        }
        ShareFbQueries.postFeed(this, mLocation, _friends_ids(), stringbuilder.toString(), this, true);
    }

    private void setTripText()
    {
        NativeManager nativemanager = NativeManager.getInstance();
        SpannableStringBuilder spannablestringbuilder = new SpannableStringBuilder();
        String s = mPostText.getText().toString();
        String s1;
        boolean flag;
        if (mLocation == null)
        {
            ShareFbMainData sharefbmaindata = mFbMainData;
            s1 = null;
            if (sharefbmaindata != null)
            {
                s1 = mFbMainData.location;
            }
        } else
        {
            s1 = mLocation.name;
        }
        if (s1 != null && s1.length() > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (s != null && s.length() > 0)
        {
            spannablestringbuilder.append((new StringBuilder()).append(mPostText.getText()).append(" - ").toString());
        }
        if (flag)
        {
            if (mFbMainData.isNavigating)
            {
                spannablestringbuilder.append(nativemanager.getLanguageString(DisplayStrings.DS_DRIVING_TO));
            } else
            {
                spannablestringbuilder.append(nativemanager.getLanguageString(DisplayStrings.DS_DROVE_TO));
            }
        } else
        {
            spannablestringbuilder.append(nativemanager.getLanguageString(DisplayStrings.DS_DROVE_LLL));
        }
        if (flag)
        {
            _append_highlight_span(spannablestringbuilder, (new StringBuilder(" ")).append(s1).toString());
        }
        if (mFriends != null && mFriends.length > 0)
        {
            spannablestringbuilder.append((new StringBuilder(" ")).append(nativemanager.getLanguageString(DisplayStrings.DS_WITH__LLL)).toString());
            _append_highlight_span(spannablestringbuilder, (new StringBuilder(" ")).append(mFriends[0].name).toString());
            if (mFriends.length > 1)
            {
                spannablestringbuilder.append((new StringBuilder(" ")).append(nativemanager.getLanguageString(DisplayStrings.DS_AND)).toString());
                if (mFriends.length == 2)
                {
                    _append_highlight_span(spannablestringbuilder, (new StringBuilder(" ")).append(mFriends[1].name).toString());
                } else
                {
                    String s2 = String.valueOf(-1 + mFriends.length);
                    _append_highlight_span(spannablestringbuilder, (new StringBuilder(" ")).append(s2).append(" ").append(nativemanager.getLanguageString(DisplayStrings.DS_OTHERS__LLL)).toString());
                }
            }
        }
        spannablestringbuilder.append((new StringBuilder(" ")).append(nativemanager.getLanguageString(DisplayStrings.DS_USING_WAZE)).toString());
        _highlight_span(spannablestringbuilder, -4 + spannablestringbuilder.length(), spannablestringbuilder.length());
        mTripText.setText(spannablestringbuilder);
    }

    private void updateTripFriends(ShareFbFriend asharefbfriend[])
    {
        mFriends = asharefbfriend;
        String s = new String();
        int i = 0;
        do
        {
            if (i >= asharefbfriend.length)
            {
                mTripText.setText(s);
                return;
            }
            s = (new StringBuilder(String.valueOf(s))).append(asharefbfriend[i].name).append(", ").toString();
            i++;
        } while (true);
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

        case 1: // '\001'
            updateTripFriends(ShareFbWithActivity.getSelected());
            setTripText();
            return;

        case 2: // '\002'
            setResult(-1);
            finish();
            return;

        case 3: // '\003'
            mLocation = ShareFbLocationActivity.getSelected(intent.getStringExtra("Position id"));
            break;
        }
        setTripText();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        ShareNativeManager sharenativemanager = ShareNativeManager.getInstance();
        setContentView(0x7f030104);
        sharenativemanager.getShareFbMainData(this, NativeManager.getInstance().isNavigatingNTV());
        String s = getIntent().getStringExtra("message");
        ((TextView)findViewById(0x7f0906bd)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_WITH));
        ((TextView)findViewById(0x7f0906bb)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ADD_LOCATION));
        mPostText = (EditText)findViewById(0x7f0902b3);
        mPostText.addTextChangedListener(mPostTextWatcher);
        mTripText = (TextView)findViewById(0x7f0902b5);
        if (s != null)
        {
            mPostText.setText(s);
            bIsAction = false;
        }
        findViewById(0x7f0906bc).setOnClickListener(new android.view.View.OnClickListener() {

            final ShareFbActivity this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent(ShareFbActivity.this, com/waze/share/ShareFbWithActivity);
                intent.putExtra("Friends list", _friends());
                startActivityForResult(intent, 2);
            }

            
            {
                this$0 = ShareFbActivity.this;
                super();
            }
        });
        findViewById(0x7f0906ba).setOnClickListener(new android.view.View.OnClickListener() {

            final ShareFbActivity this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent(ShareFbActivity.this, com/waze/share/ShareFbLocationActivity);
                startActivityForResult(intent, 3);
            }

            
            {
                this$0 = ShareFbActivity.this;
                super();
            }
        });
        findViewById(0x7f0902b6).setOnClickListener(new android.view.View.OnClickListener() {

            final ShareFbActivity this$0;

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
                this$0 = ShareFbActivity.this;
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
            setTripText();
        }
    }

    public void onPostResult(int i, String s)
    {
        android.content.DialogInterface.OnClickListener onclicklistener = new android.content.DialogInterface.OnClickListener() {

            final ShareFbActivity this$0;

            public void onClick(DialogInterface dialoginterface, int j)
            {
                finish();
            }

            
            {
                this$0 = ShareFbActivity.this;
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
            MsgBox.openMessageBoxTimeout(mFbMainData.postMsgBoxFailureTitle, mFbMainData.postMsgBoxFailureText, 8, onclicklistener);
            return;
        }
    }






}
