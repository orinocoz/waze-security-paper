// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.messages;

import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import com.waze.AppService;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.messages:
//            UserMessageEditorActivity, OnSendHandler

class this._cls0
    implements android.view.ty._cls2
{

    final UserMessageEditorActivity this$0;

    public void onClick(View view)
    {
        if (!AppService.isNetworkAvailable())
        {
            UserMessageEditorActivity.access$1(UserMessageEditorActivity.this, DisplayStrings.DS_SENDING_PING_FAILED__PLEASE_TRY_AGAIN_LATER);
        } else
        {
            String s = UserMessageEditorActivity.access$2(UserMessageEditorActivity.this).getText().toString();
            if (!s.isEmpty())
            {
                if (UserMessageEditorActivity.access$3(UserMessageEditorActivity.this) != null)
                {
                    UserMessageEditorActivity.access$3(UserMessageEditorActivity.this).onSend(UserMessageEditorActivity.access$4(UserMessageEditorActivity.this), UserMessageEditorActivity.access$5(UserMessageEditorActivity.this), s);
                }
                setResult(3);
                finish();
                return;
            }
        }
    }

    ()
    {
        this$0 = UserMessageEditorActivity.this;
        super();
    }
}
