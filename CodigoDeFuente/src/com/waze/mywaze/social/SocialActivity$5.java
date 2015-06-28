// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze.social;

import android.view.View;
import com.waze.mywaze.MyWazeNativeManager;

// Referenced classes of package com.waze.mywaze.social:
//            SocialActivity

class this._cls0
    implements android.view.ner
{

    final SocialActivity this$0;

    public void onClick(View view)
    {
        MyWazeNativeManager.getInstance().getFoursquareSettings(SocialActivity.this);
    }

    ()
    {
        this$0 = SocialActivity.this;
        super();
    }
}
