// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import android.view.View;
import android.widget.TextView;

// Referenced classes of package com.waze.navigate:
//            AddressOptionsActivity

class this._cls0
    implements android.view.ty._cls7
{

    final AddressOptionsActivity this$0;

    public void onClick(View view)
    {
        String s = ((TextView)view).getText().toString();
        Log.d("WAZE", (new StringBuilder("Opening dialer for: ")).append(s).toString());
        AddressOptionsActivity.access$2(AddressOptionsActivity.this, "ADS_PREVIEW_PHONE_CLICKED");
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse((new StringBuilder("tel:")).append(s).toString()));
        intent.setFlags(0x10000000);
        startActivity(intent);
    }

    ()
    {
        this$0 = AddressOptionsActivity.this;
        super();
    }
}
