// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.content.Intent;
import android.view.View;
import com.waze.PhoneList;

// Referenced classes of package com.waze.share:
//            ShareAddressesActivity

class this._cls0
    implements android.view._cls1
{

    final ShareAddressesActivity this$0;

    public void onClick(View view)
    {
        Intent intent = new Intent(ShareAddressesActivity.this, com/waze/PhoneList);
        intent.putExtra("SelectedTab", 0);
        startActivityForResult(intent, 1);
    }

    ()
    {
        this$0 = ShareAddressesActivity.this;
        super();
    }
}
