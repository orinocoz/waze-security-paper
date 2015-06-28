// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.view.View;
import com.waze.social.facebook.FacebookWrapper;

// Referenced classes of package com.waze.profile:
//            WelcomeSocialActivity

class this._cls0
    implements android.view.y._cls1
{

    final WelcomeSocialActivity this$0;

    public void onClick(View view)
    {
        FacebookWrapper.getInstance().authorize(WelcomeSocialActivity.this, null, false);
    }

    ()
    {
        this$0 = WelcomeSocialActivity.this;
        super();
    }
}
