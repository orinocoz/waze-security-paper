// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.view.View;

// Referenced classes of package com.waze.profile:
//            MyProfileActivity, ImageTaker

class this._cls0
    implements android.view.
{

    final MyProfileActivity this$0;

    public void onClick(View view)
    {
        if (MyProfileActivity.access$2(MyProfileActivity.this) == null)
        {
            MyProfileActivity.access$3(MyProfileActivity.this, new ImageTaker(MyProfileActivity.this, "ProfileImage"));
        }
        MyProfileActivity.access$2(MyProfileActivity.this).sendIntent();
    }

    ()
    {
        this$0 = MyProfileActivity.this;
        super();
    }
}
