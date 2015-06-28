// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.view.View;
import com.waze.navigate.AddressItem;
import com.waze.navigate.DriveToNativeManager;

// Referenced classes of package com.waze.share:
//            UserDetailsActivity

class val.ai
    implements android.view._cls2
{

    final UserDetailsActivity this$0;
    private final AddressItem val$ai;

    public void onClick(View view)
    {
        DriveToNativeManager.getInstance().navigate(val$ai, UserDetailsActivity.this);
    }

    ()
    {
        this$0 = final_userdetailsactivity;
        val$ai = AddressItem.this;
        super();
    }
}
