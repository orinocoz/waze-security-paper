// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.social.facebook;

import com.waze.NativeManager;
import com.waze.ifs.async.RunnableUICallback;
import java.util.Arrays;

// Referenced classes of package com.waze.social.facebook:
//            FacebookWrapper

class > extends RunnableUICallback
{

    final FacebookWrapper this$0;
    private final boolean val$bIsReadPermissions;
    private final boolean val$bIsStreamPermission;
    private final Runnable val$callback;

    public void callback()
    {
        val$callback.run();
    }

    public void event()
    {
        NativeManager nativemanager = NativeManager.getInstance();
        if (val$bIsReadPermissions)
        {
            String as2[] = nativemanager.getFbPermissionsNTV();
            if (as2 != null)
            {
                FacebookWrapper.access$1(FacebookWrapper.this, Arrays.asList(as2));
            }
        } else
        {
            if (val$bIsStreamPermission)
            {
                String as[] = {
                    "publish_stream"
                };
                FacebookWrapper.access$2(FacebookWrapper.this, Arrays.asList(as));
                return;
            }
            String as1[] = nativemanager.getPublishFbPermissionsNTV();
            if (as1 != null)
            {
                FacebookWrapper.access$3(FacebookWrapper.this, Arrays.asList(as1));
                return;
            }
        }
    }

    ()
    {
        this$0 = final_facebookwrapper;
        val$bIsReadPermissions = flag;
        val$bIsStreamPermission = flag1;
        val$callback = Runnable.this;
        super();
    }
}
