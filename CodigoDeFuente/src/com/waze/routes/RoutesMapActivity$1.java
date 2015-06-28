// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.routes;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.waze.routes:
//            RoutesMapActivity, RoutesActivity

class this._cls0
    implements android.view.
{

    final RoutesMapActivity this$0;

    public void onClick(View view)
    {
        setResult(-1);
        finish();
        Intent intent = new Intent(RoutesMapActivity.this, com/waze/routes/RoutesActivity);
        startActivity(intent);
    }

    ()
    {
        this$0 = RoutesMapActivity.this;
        super();
    }
}
