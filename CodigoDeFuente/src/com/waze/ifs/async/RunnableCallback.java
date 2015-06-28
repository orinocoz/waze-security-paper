// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.async;

import android.app.Activity;
import android.view.View;
import java.util.concurrent.Executor;

public abstract class RunnableCallback
    implements Runnable
{

    private final Executor mExecutor;

    public RunnableCallback(final Activity callbackExecutor)
    {
        if (callbackExecutor == null)
        {
            mExecutor = null;
            return;
        } else
        {
            mExecutor = new Executor() {

                final RunnableCallback this$0;
                private final Activity val$callbackExecutor;

                public void execute(Runnable runnable)
                {
                    callbackExecutor.runOnUiThread(runnable);
                }

            
            {
                this$0 = RunnableCallback.this;
                callbackExecutor = activity;
                super();
            }
            };
            return;
        }
    }

    public RunnableCallback(final View callbackExecutor)
    {
        if (callbackExecutor == null)
        {
            mExecutor = null;
            return;
        } else
        {
            mExecutor = new Executor() {

                final RunnableCallback this$0;
                private final View val$callbackExecutor;

                public void execute(Runnable runnable)
                {
                    callbackExecutor.post(runnable);
                }

            
            {
                this$0 = RunnableCallback.this;
                callbackExecutor = view;
                super();
            }
            };
            return;
        }
    }

    public RunnableCallback(Executor executor)
    {
        mExecutor = executor;
    }

    public abstract void callback();

    public abstract void event();

    public void run()
    {
        event();
        if (mExecutor != null)
        {
            Runnable runnable = new Runnable() {

                final RunnableCallback this$0;

                public void run()
                {
                    callback();
                }

            
            {
                this$0 = RunnableCallback.this;
                super();
            }
            };
            mExecutor.execute(runnable);
        }
    }
}
