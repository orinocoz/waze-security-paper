// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.view.KeyEvent;
import android.widget.TextView;

// Referenced classes of package com.waze.profile:
//            NameYourWazerPopup

class this._cls0
    implements android.widget.onListener
{

    final NameYourWazerPopup this$0;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        if (i == 6)
        {
            NameYourWazerPopup.access$2(NameYourWazerPopup.this);
            return true;
        } else
        {
            return false;
        }
    }

    Listener()
    {
        this$0 = NameYourWazerPopup.this;
        super();
    }
}
