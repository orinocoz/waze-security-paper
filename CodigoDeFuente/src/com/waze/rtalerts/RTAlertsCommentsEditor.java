// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.utils.EditTextUtils;
import com.waze.view.title.TitleBar;
import java.util.List;

// Referenced classes of package com.waze.rtalerts:
//            RTAlertsNativeManager

public class RTAlertsCommentsEditor extends ActivityBase
{
    public static class CommentsEditorTitleBar extends TitleBar
    {

        private RTAlertsCommentsEditor mContext;

        public void onCloseClicked()
        {
            mContext.done(mContext.mEditBox.getText().toString());
        }

        public CommentsEditorTitleBar(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
            mContext = (RTAlertsCommentsEditor)context;
        }
    }


    private int mAlertId;
    private EditText mEditBox;

    public RTAlertsCommentsEditor()
    {
    }

    private void done(String s)
    {
        if (s != null && s.length() != 0)
        {
            RTAlertsNativeManager.getInstance().postComment(mAlertId, s);
            setResult(-1);
            finish();
            return;
        } else
        {
            setResult(0);
            finish();
            return;
        }
    }

    public static void start(Activity activity, int i)
    {
        Intent intent = new Intent(activity, com/waze/rtalerts/RTAlertsCommentsEditor);
        intent.putExtra("Comment alert id", i);
        activity.startActivityForResult(intent, 32773);
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        Log.d("WAZE", (new StringBuilder("Navigate onActRes requestCode=")).append(i).append(" resultCode=").append(j).append(" Intent=").append(intent).toString());
        if (i == 1234)
        {
            if (j == -1)
            {
                java.util.ArrayList arraylist = intent.getStringArrayListExtra("android.speech.extra.RESULTS");
                if (arraylist.size() > 0)
                {
                    mEditBox.setText((CharSequence)arraylist.get(0));
                    ((InputMethodManager)getSystemService("input_method")).showSoftInput(mEditBox, 2);
                }
            }
        } else
        if (j == -1)
        {
            setResult(-1);
            finish();
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300d6);
        mAlertId = getIntent().getIntExtra("Comment alert id", 0);
        ((TitleBar)findViewById(0x7f090058)).init(this, NativeManager.getInstance().getLanguageString(DisplayStrings.DS_COMMENT), 0x7f070049);
        mEditBox = (EditText)findViewById(0x7f090061);
        EditTextUtils.checkTypeLockOnCreate(this, mEditBox);
        mEditBox.setOnTouchListener(EditTextUtils.getKeyboardLockOnTouchListener(this, mEditBox, null));
        mEditBox.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final RTAlertsCommentsEditor this$0;

            public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
            {
                if (keyevent != null && keyevent.getAction() == 1)
                {
                    done(mEditBox.getText().toString());
                }
                return true;
            }

            
            {
                this$0 = RTAlertsCommentsEditor.this;
                super();
            }
        });
        mEditBox.requestFocus();
        findViewById(0x7f090062).setOnClickListener(new android.view.View.OnClickListener() {

            final RTAlertsCommentsEditor this$0;

            public void onClick(View view)
            {
                speechRecognitionClicked(view);
            }

            
            {
                this$0 = RTAlertsCommentsEditor.this;
                super();
            }
        });
    }

    protected void onDestroy()
    {
        super.onDestroy();
        mEditBox = null;
    }

    public void speechRecognitionClicked(View view)
    {
        Log.d("WAZE", "SR pressed");
        Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
        startActivityForResult(intent, 1234);
    }


}
