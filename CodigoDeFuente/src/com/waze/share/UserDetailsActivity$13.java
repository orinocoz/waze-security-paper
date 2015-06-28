// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import com.waze.navigate.social.EndDriveData;
import com.waze.view.text.WazeTextView;

// Referenced classes of package com.waze.share:
//            UserDetailsActivity

class val.toSet
    implements com.waze.navigate.dDriveListener
{

    final UserDetailsActivity this$0;
    private final WazeTextView val$toSet;

    public void onComplete(EndDriveData enddrivedata)
    {
        if (enddrivedata != null)
        {
            val$toSet.setText(enddrivedata.address);
        }
    }

    .EndDriveListener()
    {
        this$0 = final_userdetailsactivity;
        val$toSet = WazeTextView.this;
        super();
    }
}
