// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.inbox;

import android.app.Activity;
import com.waze.AppService;
import com.waze.Logger;

// Referenced classes of package com.waze.inbox:
//            InboxPreviewActivity, InboxMessage

class lt extends com.waze.leResult
{

    private final Activity val$context;
    private final InboxMessage val$msg;
    private final Boolean val$showInbox;

    public void event()
    {
        if (result)
        {
            Logger.d_("INBOX", "Url was handled - ignoring preview");
            return;
        } else
        {
            AppService.Post(new Runnable() {

                final InboxPreviewActivity._cls1 this$1;
                private final Activity val$context;
                private final InboxMessage val$msg;
                private final Boolean val$showInbox;

                public void run()
                {
                    InboxPreviewActivity.access$0(context, msg, showInbox);
                }

            
            {
                this$1 = InboxPreviewActivity._cls1.this;
                context = activity;
                msg = inboxmessage;
                showInbox = boolean1;
                super();
            }
            });
            return;
        }
    }

    _cls1.val.showInbox()
    {
        val$context = activity;
        val$msg = inboxmessage;
        val$showInbox = boolean1;
        super();
    }
}
