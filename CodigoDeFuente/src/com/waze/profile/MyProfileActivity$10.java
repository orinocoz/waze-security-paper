// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.view.View;
import android.widget.EditText;

// Referenced classes of package com.waze.profile:
//            MyProfileActivity

class this._cls0
    implements android.view.._cls10
{

    final MyProfileActivity this$0;

    public void onClick(View view)
    {
        if (MyProfileActivity.access$13(MyProfileActivity.this) != null)
        {
            MyProfileActivity.access$14(MyProfileActivity.this).setText(MyProfileActivity.access$13(MyProfileActivity.this));
            MyProfileActivity.access$14(MyProfileActivity.this).setSelection(MyProfileActivity.access$13(MyProfileActivity.this).length());
        }
    }

    ()
    {
        this$0 = MyProfileActivity.this;
        super();
    }
}
