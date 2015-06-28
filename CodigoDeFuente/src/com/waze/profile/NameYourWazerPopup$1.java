// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.view.View;
import android.widget.EditText;

// Referenced classes of package com.waze.profile:
//            NameYourWazerPopup

class this._cls0
    implements android.view.p._cls1
{

    final NameYourWazerPopup this$0;

    public void onClick(View view)
    {
        if (NameYourWazerPopup.access$0(NameYourWazerPopup.this) != null)
        {
            NameYourWazerPopup.access$1(NameYourWazerPopup.this).setText(NameYourWazerPopup.access$0(NameYourWazerPopup.this));
            NameYourWazerPopup.access$1(NameYourWazerPopup.this).setSelection(NameYourWazerPopup.access$0(NameYourWazerPopup.this).length());
        }
    }

    ()
    {
        this$0 = NameYourWazerPopup.this;
        super();
    }
}
