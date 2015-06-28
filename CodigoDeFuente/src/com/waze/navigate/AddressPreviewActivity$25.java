// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity, AddFavoriteNameActivity

class this._cls0
    implements android.view.y._cls25
{

    final AddressPreviewActivity this$0;

    public void onClick(View view)
    {
        Intent intent = new Intent(AddressPreviewActivity.this, com/waze/navigate/AddFavoriteNameActivity);
        intent.putExtra("AddressItem", AddressPreviewActivity.access$6(AddressPreviewActivity.this));
        startActivityForResult(intent, 1);
    }

    ()
    {
        this$0 = AddressPreviewActivity.this;
        super();
    }
}
