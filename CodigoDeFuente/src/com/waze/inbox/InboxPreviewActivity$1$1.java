// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.inbox;

import android.app.Activity;
import com.waze.AppService;
import com.waze.Logger;

// Referenced classes of package com.waze.inbox:
//            InboxPreviewActivity, InboxMessage

class val.showInbox
    implements Runnable
{

    final val.showInbox this$1;
    private final Activity val$context;
    private final InboxMessage val$msg;
    private final Boolean val$showInbox;

    public void run()
    {
        InboxPreviewActivity.access$0(val$context, val$msg, val$showInbox);
    }

    ()
    {
        this$1 = final_;
        val$context = activity;
        val$msg = inboxmessage;
        val$showInbox = Boolean.this;
        super();
    }

    // Unreferenced inner class com/waze/inbox/InboxPreviewActivity$1

/* anonymous class */
    class InboxPreviewActivity._cls1 extends com.waze.NativeManager.OnUrlHandleResult
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
                AppService.Post(showInbox. new InboxPreviewActivity._cls1._cls1());
                return;
            }
        }

            
            {
                context = activity;
                msg = inboxmessage;
                showInbox = boolean1;
                super();
            }
    }

}
