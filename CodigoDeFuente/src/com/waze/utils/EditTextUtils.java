// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.utils;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.view.text.TypingLockListener;

public class EditTextUtils
{
    public static interface OnTouchListenerDoneListener
    {

        public abstract void onDone();
    }


    public EditTextUtils()
    {
    }

    public static void checkTypeLockOnCreate(final Context context, final EditText editText)
    {
        AppService.getNativeManager().checkTypingLock(new TypingLockListener() {

            private final Context val$context;
            private final EditText val$editText;

            public void shouldLock()
            {
                ((InputMethodManager)context.getSystemService("input_method")).hideSoftInputFromWindow(editText.getWindowToken(), 0);
            }

            
            {
                context = context1;
                editText = edittext;
                super();
            }
        });
    }

    public static void closeKeyboard(Activity activity, View view)
    {
        ((InputMethodManager)activity.getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    public static android.view.View.OnTouchListener getKeyboardLockOnTouchListener(final Context context, final EditText editText, final OnTouchListenerDoneListener listener)
    {
        return new android.view.View.OnTouchListener() {

            private final Context val$context;
            private final EditText val$editText;
            private final OnTouchListenerDoneListener val$listener;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                if (motionevent.getAction() == 0)
                {
                    AppService.getNativeManager().checkTypingLock(editText. new TypingLockListener() {

                        final _cls1 this$1;
                        private final Context val$context;
                        private final EditText val$editText;

                        public void shouldLock()
                        {
                            ((InputMethodManager)context.getSystemService("input_method")).hideSoftInputFromWindow(editText.getWindowToken(), 0);
                        }

            
            {
                this$1 = final__pcls1;
                context = context1;
                editText = EditText.this;
                super();
            }
                    });
                    if (listener != null)
                    {
                        listener.onDone();
                        return false;
                    }
                }
                return false;
            }

            
            {
                listener = ontouchlistenerdonelistener;
                context = context1;
                editText = edittext;
                super();
            }
        };
    }

    public static void openKeyboard(Activity activity, View view)
    {
        ((InputMethodManager)activity.getSystemService("input_method")).showSoftInput(view, 0);
    }
}
