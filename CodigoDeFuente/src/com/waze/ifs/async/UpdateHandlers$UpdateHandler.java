// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.async;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

// Referenced classes of package com.waze.ifs.async:
//            UpdateHandlers

static class _handler
{

    final WeakReference _handler;
    _handler next;

    public void sendMessage(int i, int j, int k)
    {
        if (_handler != null)
        {
            Handler handler = (Handler)_handler.get();
            if (handler != null)
            {
                handler.sendMessage(handler.obtainMessage(i, j, k));
            }
        }
    }

    void sendMessage(int i, Bundle bundle)
    {
        if (_handler != null)
        {
            Handler handler = (Handler)_handler.get();
            if (handler != null)
            {
                Message message = handler.obtainMessage(i);
                message.setData(bundle);
                handler.sendMessage(message);
            }
        }
    }

    boolean shouldRemove(Handler handler)
    {
        Handler handler1;
        if (_handler != null)
        {
            if ((handler1 = (Handler)_handler.get()) != null && handler1 != handler)
            {
                return false;
            }
        }
        return true;
    }

    (Handler handler)
    {
        next = null;
        _handler = new WeakReference(handler);
    }
}
