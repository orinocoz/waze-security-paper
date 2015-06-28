// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.view.View;
import android.widget.TextView;

// Referenced classes of package com.waze.profile:
//            LoginActivity

class this._cls0
    implements android.view.geListener
{

    final LoginActivity this$0;

    public void onFocusChange(View view, boolean flag)
    {
        if (!flag && (LoginActivity.access$4(LoginActivity.this) == null || LoginActivity.access$4(LoginActivity.this).length() == 0))
        {
            LoginActivity.access$3(LoginActivity.this, String.valueOf(LoginActivity.access$5(LoginActivity.this).getText()));
            LoginActivity.access$2(LoginActivity.this).setText(LoginActivity.access$4(LoginActivity.this));
        }
    }

    stener()
    {
        this$0 = LoginActivity.this;
        super();
    }
}
