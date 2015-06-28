// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.async;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.waze.ifs.async:
//            UpdateHandlers

class this._cls1 extends Handler
{

    final st_messagesString this$1;

    public boolean sendMessageAtTime(Message message, long l)
    {
        st_messagesString = message.getData().getString("string");
        return true;
    }

    ()
    {
        this$1 = this._cls1.this;
        super();
    }
}
