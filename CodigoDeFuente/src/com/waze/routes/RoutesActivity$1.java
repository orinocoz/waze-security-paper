// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.routes;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.waze.routes:
//            RoutesActivity, RoutesMapActivity

class this._cls0
    implements android.view.ner
{

    final RoutesActivity this$0;

    public void onClick(View view)
    {
        Intent intent = new Intent(RoutesActivity.this, com/waze/routes/RoutesMapActivity);
        startActivityForResult(intent, 1000);
    }

    ()
    {
        this$0 = RoutesActivity.this;
        super();
    }
}
