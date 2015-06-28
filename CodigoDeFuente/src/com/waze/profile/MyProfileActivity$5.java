// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.text.Editable;
import android.text.TextWatcher;

// Referenced classes of package com.waze.profile:
//            MyProfileActivity

class this._cls0
    implements TextWatcher
{

    final MyProfileActivity this$0;

    public void afterTextChanged(Editable editable)
    {
        if (MyProfileActivity.access$4(MyProfileActivity.this))
        {
            return;
        } else
        {
            MyProfileActivity.access$6(MyProfileActivity.this, true);
            return;
        }
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    ()
    {
        this$0 = MyProfileActivity.this;
        super();
    }
}
