// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.waze.phone:
//            PhoneLoginActivity

class this._cls0
    implements android.view._cls4
{

    final PhoneLoginActivity this$0;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        setResult(0);
        finish();
        return true;
    }

    ()
    {
        this$0 = PhoneLoginActivity.this;
        super();
    }
}
