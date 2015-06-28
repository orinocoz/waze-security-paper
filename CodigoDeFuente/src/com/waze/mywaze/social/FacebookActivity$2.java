// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze.social;

import android.content.Intent;
import android.view.View;
import com.waze.navigate.social.AddFromActivity;

// Referenced classes of package com.waze.mywaze.social:
//            FacebookActivity

class this._cls0
    implements android.view.r
{

    final FacebookActivity this$0;

    public void onClick(View view)
    {
        if (FacebookActivity.access$1(FacebookActivity.this))
        {
            Intent intent = new Intent(FacebookActivity.this, com/waze/navigate/social/AddFromActivity);
            intent.putExtra(FacebookActivity.INTENT_FROM_WHERE, AddFromActivity.INTENT_FROM_FB);
            startActivityForResult(intent, 1003);
        }
    }

    ()
    {
        this$0 = FacebookActivity.this;
        super();
    }
}
