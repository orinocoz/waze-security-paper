// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;

// Referenced classes of package com.waze:
//            MainActivity, LayoutManager, AppService, NativeManager, 
//            Logger, SpeechttManagerBase

public class EditBox extends EditText
{
    public static abstract class EditBoxCallback
        implements Runnable
    {

        private boolean calledCallback;
        private volatile long mCbContext;
        private volatile boolean mResult;
        private volatile String mText;

        public abstract void CallbackDone(int i, String s, long l);

        protected void Post(boolean flag, String s)
        {
            mText = s;
            mResult = flag;
            AppService.getNativeManager().PostRunnable(this);
        }

        public void run()
        {
            int i;
            if (mResult)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            if (calledCallback)
            {
                Logger.ee("Calling EditBox callback twice?");
                return;
            } else
            {
                calledCallback = true;
                CallbackDone(i, mText, mCbContext);
                return;
            }
        }

        EditBoxCallback(long l)
        {
            calledCallback = false;
            mText = null;
            mResult = false;
            mCbContext = 0L;
            mCbContext = l;
        }
    }


    public static final int WAZE_EDITBOX_FLAG_PASSWORD = 1;
    public static final int WAZE_EDITBOX_FLAG_SPEECHTT = 2;
    public static String WAZE_EDITBOX_TAG = "@WazeEditBox";
    private EditBoxCallback mCallback;
    private MainActivity mContext;
    private int mFlags;
    private int mImeAction;
    private boolean mStayOnAction;
    private String mValue;

    public EditBox(Context context)
    {
        super(context);
        mContext = null;
        mImeAction = 0;
        mStayOnAction = false;
        mCallback = null;
        mValue = null;
        mFlags = 0;
        Init(context);
    }

    public EditBox(Context context, int i, boolean flag, String s, EditBoxCallback editboxcallback)
    {
        super(context);
        mContext = null;
        mImeAction = 0;
        mStayOnAction = false;
        mCallback = null;
        mValue = null;
        mFlags = 0;
        Init(context);
        setEditBoxAction(i);
        setEditBoxStayOnAction(flag);
        setEditBoxValue(s);
        setEditBoxCallback(editboxcallback);
    }

    public EditBox(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mContext = null;
        mImeAction = 0;
        mStayOnAction = false;
        mCallback = null;
        mValue = null;
        mFlags = 0;
        Init(context);
    }

    private InputMethodManager getInputMethodManager()
    {
        return (InputMethodManager)getContext().getSystemService("input_method");
    }

    protected void ActionHandler()
    {
        mCallback.Post(true, getText().toString());
        if (!mStayOnAction && mContext != null)
        {
            mContext.getLayoutMgr().HideEditBox();
        }
    }

    public void HideSoftInput()
    {
        getInputMethodManager().hideSoftInputFromWindow(getWindowToken(), 0);
    }

    protected void Init(Context context)
    {
        if (context instanceof MainActivity)
        {
            mContext = (MainActivity)context;
        }
        setSingleLine();
        setFocusableInTouchMode(true);
        setInputType(0x10001);
        setTag(WAZE_EDITBOX_TAG);
        setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final EditBox this$0;

            public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
            {
                int j = mImeAction;
                boolean flag = false;
                if (i == j)
                {
                    flag = onKeyDown(66, new KeyEvent(0, 66));
                    if (!mStayOnAction)
                    {
                        HideSoftInput();
                    }
                }
                return flag;
            }

            
            {
                this$0 = EditBox.this;
                super();
            }
        });
        addTextChangedListener(new TextWatcher() {

            final EditBox this$0;

            public void afterTextChanged(Editable editable)
            {
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
                if (charsequence.length() == 1)
                {
                    AppService.getNativeManager().EditBoxCheckTypingLock(EditBox.this);
                }
            }

            
            {
                this$0 = EditBox.this;
                super();
            }
        });
    }

    protected void PrepareSpeechTTHandler()
    {
        android.view.View.OnClickListener onclicklistener = new android.view.View.OnClickListener() {

            final EditBox this$0;
            private final SpeechttManagerBase.Callback val$speechTTCb;

            public void onClick(View view1)
            {
                SpeechttManagerBase speechttmanagerbase = AppService.getNativeManager().getSpeechttManager();
                HideSoftInput();
                SpeechttManagerBase.Callback callback = speechTTCb;
                speechTTCb.getClass();
                speechttmanagerbase.Start(callback, 0L, 5, null, null, 0);
            }

            
            {
                this$0 = EditBox.this;
                speechTTCb = callback;
                super();
            }
        };
        View view = getRootView().findViewById(0x7f090285);
        if (view != null)
        {
            view.setOnClickListener(onclicklistener);
        }
    }

    public void ShowSoftInput()
    {
        getInputMethodManager().restartInput(this);
        getInputMethodManager().showSoftInput(this, 2);
    }

    public boolean dispatchKeyEventPreIme(KeyEvent keyevent)
    {
        if (keyevent.getAction() != 0 && keyevent.getAction() != 2)
        {
            return false;
        }
        switch (keyevent.getKeyCode())
        {
        default:
            return false;

        case 4: // '\004'
            mCallback.Post(false, null);
            mContext.getLayoutMgr().HideEditBox();
            return true;

        case 66: // 'B'
            ActionHandler();
            break;
        }
        return true;
    }

    public boolean onCheckIsTextEditor()
    {
        return true;
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        switch (keyevent.getKeyCode())
        {
        default:
            return super.onKeyDown(i, keyevent);

        case 66: // 'B'
            ActionHandler();
            break;
        }
        return true;
    }

    public void setEditBoxAction(int i)
    {
        mImeAction = i;
        setImeOptions(getImeOptions() | mImeAction);
    }

    public void setEditBoxCallback(EditBoxCallback editboxcallback)
    {
        mCallback = editboxcallback;
    }

    public void setEditBoxFlags(int i)
    {
        mFlags = i;
        int j = 1;
        if ((1 & mFlags) > 0)
        {
            j |= 0x80;
        }
        if ((2 & mFlags) > 0)
        {
            PrepareSpeechTTHandler();
        }
        setInputType(j);
    }

    public void setEditBoxStayOnAction(boolean flag)
    {
        mStayOnAction = flag;
    }

    public void setEditBoxValue(String s)
    {
        mValue = s;
        setText(mValue);
    }




    // Unreferenced inner class com/waze/EditBox$3

/* anonymous class */
    class _cls3 extends SpeechttManagerBase.Callback
    {

        final EditBox this$0;

        protected void onResults(long l, String s, int i)
        {
            if (i == 1)
            {
                setText(s);
            } else
            {
                Log.e("WAZE", "Got error result from the speech to text manager");
            }
            ShowSoftInput();
        }

            
            {
                this$0 = EditBox.this;
                super();
            }
    }

}
