// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.social.facebook;

import android.content.Intent;
import com.facebook.Session;
import com.waze.Logger;
import com.waze.ifs.ui.ActivityBase;
import com.waze.ifs.ui.ActivityResultCallback;

// Referenced classes of package com.waze.social.facebook:
//            FacebookWrapper

class this._cls0
    implements ActivityResultCallback
{

    final FacebookWrapper this$0;

    public void onActivitResult(ActivityBase activitybase, int i, int j, Intent intent)
    {
        if (FacebookWrapper.session() != null)
        {
            Logger.d_("FBWrapper", (new StringBuilder("onActivityResult. Request code: ")).append(i).append(". Result: ").append(j).append(". Session state: ").append(FacebookWrapper.session().getState()).toString());
            if (i == 0x123456)
            {
                FacebookWrapper.session().onActivityResult(activitybase, i, j, intent);
            }
        }
    }

    ()
    {
        this$0 = FacebookWrapper.this;
        super();
    }
}
