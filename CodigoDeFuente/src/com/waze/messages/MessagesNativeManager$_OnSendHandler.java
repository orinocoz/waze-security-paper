// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.messages;

import com.waze.NativeManager;
import com.waze.user.UserData;

// Referenced classes of package com.waze.messages:
//            OnSendHandler, MessagesNativeManager

protected static class _cls1.val.text extends OnSendHandler
{

    protected static final long serialVersionUID = 0x1000001L;

    public void onSend(final boolean isPrivate, final UserData userData, final String text)
    {
        NativeManager.Post(new Runnable() {

            final MessagesNativeManager._OnSendHandler this$1;
            private final boolean val$isPrivate;
            private final String val$text;
            private final UserData val$userData;

            public void run()
            {
                MessagesNativeManager.access$0(MessagesNativeManager.getInstance(), isPrivate, userData, text);
            }

            
            {
                this$1 = MessagesNativeManager._OnSendHandler.this;
                isPrivate = flag;
                userData = userdata;
                text = s;
                super();
            }
        });
    }

    protected _cls1.val.text()
    {
    }
}
