// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.view.View;
import android.widget.TextView;

// Referenced classes of package com.waze.profile:
//            RegisterActivity

class this._cls0
    implements android.view.istener
{

    final RegisterActivity this$0;

    public void onFocusChange(View view, boolean flag)
    {
        if (!flag)
        {
            String s = String.valueOf(RegisterActivity.access$2(RegisterActivity.this).getText());
            if (s == null || s.length() == 0)
            {
                String s1 = String.valueOf(RegisterActivity.access$0(RegisterActivity.this).getText());
                RegisterActivity.access$2(RegisterActivity.this).setText(s1);
            }
        }
    }

    ner()
    {
        this$0 = RegisterActivity.this;
        super();
    }
}
