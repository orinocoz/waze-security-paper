// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.content.DialogInterface;
import com.waze.user.PersonBase;

// Referenced classes of package com.waze.share:
//            UserDetailsActivity

class val.p
    implements android.content.Listener
{

    final UserDetailsActivity this$0;
    private final PersonBase val$p;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (i == 1)
        {
            UserDetailsActivity.access$7(UserDetailsActivity.this, val$p);
        }
    }

    kListener()
    {
        this$0 = final_userdetailsactivity;
        val$p = PersonBase.this;
        super();
    }
}
