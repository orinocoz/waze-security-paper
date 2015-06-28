// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.view.View;
import android.widget.TextView;
import com.waze.mywaze.MyWazeNativeManager;

// Referenced classes of package com.waze.install:
//            InstallNickNameActivity

class this._cls0
    implements android.view.
{

    final InstallNickNameActivity this$0;

    public void onFocusChange(View view, boolean flag)
    {
        if (!flag)
        {
            if (InstallNickNameActivity.access$0(InstallNickNameActivity.this).validateNickname(String.valueOf(InstallNickNameActivity.access$1(InstallNickNameActivity.this).getText())))
            {
                InstallNickNameActivity.access$2(InstallNickNameActivity.this, String.valueOf(InstallNickNameActivity.access$1(InstallNickNameActivity.this).getText()));
            } else
            if (InstallNickNameActivity.access$3(InstallNickNameActivity.this) != null)
            {
                InstallNickNameActivity.access$1(InstallNickNameActivity.this).setText(InstallNickNameActivity.access$3(InstallNickNameActivity.this));
                return;
            }
        }
    }

    ()
    {
        this$0 = InstallNickNameActivity.this;
        super();
    }
}
