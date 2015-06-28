// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.utils;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.view.text.TypingLockListener;

// Referenced classes of package com.waze.utils:
//            EditTextUtils

class val.editText
    implements TypingLockListener
{

    final Token this$1;
    private final Context val$context;
    private final EditText val$editText;

    public void shouldLock()
    {
        ((InputMethodManager)val$context.getSystemService("input_method")).hideSoftInputFromWindow(val$editText.getWindowToken(), 0);
    }

    l.editText()
    {
        this$1 = final_edittext;
        val$context = context1;
        val$editText = EditText.this;
        super();
    }

    // Unreferenced inner class com/waze/utils/EditTextUtils$1

/* anonymous class */
    class EditTextUtils._cls1
        implements android.view.View.OnTouchListener
    {

        private final Context val$context;
        private final EditText val$editText;
        private final EditTextUtils.OnTouchListenerDoneListener val$listener;

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            if (motionevent.getAction() == 0)
            {
                AppService.getNativeManager().checkTypingLock(editText. new EditTextUtils._cls1._cls1());
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
    }

}
