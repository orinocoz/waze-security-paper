// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.view.View;
import android.widget.TextView;
import com.waze.mywaze.MyWazeNativeManager;

// Referenced classes of package com.waze.profile:
//            RegisterActivity

class this._cls0
    implements android.view.r
{

    final RegisterActivity this$0;

    public void onClick(View view)
    {
        String s = String.valueOf(RegisterActivity.access$0(RegisterActivity.this).getText());
        String s1 = String.valueOf(RegisterActivity.access$1(RegisterActivity.this).getText());
        String s2 = String.valueOf(RegisterActivity.access$2(RegisterActivity.this).getText());
        String s3 = String.valueOf(RegisterActivity.access$3(RegisterActivity.this).getText());
        if (RegisterActivity.access$4(RegisterActivity.this).registerUser(s, s1, s1, s2, s3, false, RegisterActivity.this))
        {
            RegisterActivity.access$5(RegisterActivity.this).setEnabled(false);
        }
    }

    ()
    {
        this$0 = RegisterActivity.this;
        super();
    }
}
