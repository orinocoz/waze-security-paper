// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package com.waze.share:
//            ShareFbLocationActivity, ShareFbLocListAdapter, ShareFbLocation

class this._cls0
    implements android.widget.tener
{

    final ShareFbLocationActivity this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        ShareFbLocationActivity.access$0((ShareFbLocation)((ShareFbLocListAdapter)adapterview.getAdapter()).getItem(i));
        Intent intent = new Intent();
        intent.putExtra("Position id", ShareFbLocationActivity.access$1().name);
        setResult(3, intent);
        finish();
    }

    tener()
    {
        this$0 = ShareFbLocationActivity.this;
        super();
    }
}
