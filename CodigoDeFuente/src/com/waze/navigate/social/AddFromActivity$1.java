// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.view.View;

// Referenced classes of package com.waze.navigate.social:
//            AddFromActivity

class this._cls0
    implements android.view.er
{

    final AddFromActivity this$0;

    public void onClick(View view)
    {
        if (AddFromActivity.access$0(AddFromActivity.this) == AddFromActivity.INTENT_FROM_FB)
        {
            addFromFacebook();
            setResult(201);
        } else
        if (AddFromActivity.access$0(AddFromActivity.this) == AddFromActivity.INTENT_FROM_SHARE)
        {
            AddFromActivity.access$1(AddFromActivity.this);
        } else
        {
            addFromContacts();
            setResult(201);
        }
        finish();
    }

    ()
    {
        this$0 = AddFromActivity.this;
        super();
    }
}
