// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Activity;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import com.waze.view.map.ProgressAnimation;

// Referenced classes of package com.waze:
//            ToastThread, MainActivity

private final class mProgressAnimation extends ToastThread
{

    private ProgressAnimation mProgressAnimation;
    final MainActivity this$0;

    protected void cancel()
    {
        super.cancel();
    }

    public Toast show()
    {
        MainActivity mainactivity = MainActivity.this;
        View view = mainactivity.getLayoutInflater().inflate(0x7f0300bc, (ViewGroup)mainactivity.findViewById(0x7f090559));
        mProgressAnimation = (ProgressAnimation)view.findViewById(0x7f09055a);
        mProgressAnimation.start();
        Toast toast = new Toast(mainactivity);
        toast.setGravity(16, 0, 0);
        toast.setDuration(1);
        toast.setView(view);
        toast.show();
        return toast;
    }

    public void stopToast()
    {
        Log.d("WAZE", "Cancelling progress toast");
        if (mProgressAnimation != null)
        {
            mProgressAnimation.stop();
        }
        super.stopToast();
    }

    public ()
    {
        this$0 = MainActivity.this;
        super("Progress Toast");
        mProgressAnimation = null;
    }
}
