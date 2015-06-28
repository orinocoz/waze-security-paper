// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.view.View;
import android.widget.ScrollView;

// Referenced classes of package com.waze.profile:
//            MyProfileActivity

class this._cls0
    implements android.view.stener
{

    final MyProfileActivity this$0;

    public void onFocusChange(View view, boolean flag)
    {
        if (flag)
        {
            ((ScrollView)findViewById(0x7f090412)).scrollTo(0, findViewById(0x7f09041c).getTop());
        }
    }

    er()
    {
        this$0 = MyProfileActivity.this;
        super();
    }
}
