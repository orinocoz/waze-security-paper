// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.push;

import android.content.DialogInterface;
import com.waze.NativeManager;

// Referenced classes of package com.waze.push:
//            Alerter

class this._cls0
    implements android.content.rface.OnClickListener
{

    final Alerter this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.cancel();
        final NativeManager nm = NativeManager.getInstance();
        if (i == 1)
        {
            NativeManager.Post(new Runnable() {

                final Alerter._cls3 this$1;
                private final NativeManager val$nm;

                public void run()
                {
                    nm.UrlHandler("waze://?a=pickup");
                    nm.ClearNotifications();
                }

            
            {
                this$1 = Alerter._cls3.this;
                nm = nativemanager;
                super();
            }
            });
            return;
        } else
        {
            nm.SetPickUpLater(true);
            return;
        }
    }

    _cls1.val.nm()
    {
        this$0 = Alerter.this;
        super();
    }
}
