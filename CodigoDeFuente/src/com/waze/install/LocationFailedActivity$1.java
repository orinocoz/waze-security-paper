// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.waze.install:
//            LocationFailedActivity, SelectCountryActivity

class this._cls0
    implements android.view.y._cls1
{

    final LocationFailedActivity this$0;

    public void onClick(View view)
    {
        Intent intent = new Intent(LocationFailedActivity.this, com/waze/install/SelectCountryActivity);
        startActivityForResult(intent, 1);
    }

    ()
    {
        this$0 = LocationFailedActivity.this;
        super();
    }
}
