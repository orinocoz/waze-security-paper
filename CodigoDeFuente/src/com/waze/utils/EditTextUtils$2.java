// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.utils;

import android.content.Context;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.waze.view.text.TypingLockListener;

// Referenced classes of package com.waze.utils:
//            EditTextUtils

class val.editText
    implements TypingLockListener
{

    private final Context val$context;
    private final EditText val$editText;

    public void shouldLock()
    {
        ((InputMethodManager)val$context.getSystemService("input_method")).hideSoftInputFromWindow(val$editText.getWindowToken(), 0);
    }

    ethodManager()
    {
        val$context = context1;
        val$editText = edittext;
        super();
    }
}
