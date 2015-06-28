// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import android.view.View;
import android.widget.TextView;

// Referenced classes of package com.waze.mywaze:
//            NicknameActivity, MyWazeNativeManager

class this._cls0
    implements android.view.istener
{

    final NicknameActivity this$0;

    public void onFocusChange(View view, boolean flag)
    {
        if (!flag)
        {
            if (NicknameActivity.access$0(NicknameActivity.this).validateNickname(String.valueOf(NicknameActivity.access$1(NicknameActivity.this).getText())))
            {
                NicknameActivity.access$2(NicknameActivity.this, String.valueOf(NicknameActivity.access$1(NicknameActivity.this).getText()));
            } else
            if (NicknameActivity.access$3(NicknameActivity.this) != null)
            {
                NicknameActivity.access$1(NicknameActivity.this).setText(NicknameActivity.access$3(NicknameActivity.this));
                return;
            }
        }
    }

    ()
    {
        this$0 = NicknameActivity.this;
        super();
    }
}
