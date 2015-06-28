// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.async;

import android.app.Activity;
import android.view.View;
import java.util.concurrent.Executor;

public abstract class RunnableExecutor
    implements Runnable
{

    private Executor mExecutor;

    public RunnableExecutor()
    {
        mExecutor = null;
    }

    public RunnableExecutor(final Activity executor)
    {
        mExecutor = null;
        if (executor != null)
        {
            mExecutor = new Executor() {

                final RunnableExecutor this$0;
                private final Activity val$executor;

                public void execute(Runnable runnable)
                {
                    executor.runOnUiThread(runnable);
                }

            
            {
                this$0 = RunnableExecutor.this;
                executor = activity;
                super();
            }
            };
        }
    }

    public RunnableExecutor(final View executor)
    {
        mExecutor = null;
        if (executor != null)
        {
            mExecutor = new Executor() {

                final RunnableExecutor this$0;
                private final View val$executor;

                public void execute(Runnable runnable)
                {
                    executor.post(runnable);
                }

            
            {
                this$0 = RunnableExecutor.this;
                executor = view;
                super();
            }
            };
        }
    }

    public RunnableExecutor(Executor executor)
    {
        mExecutor = null;
        mExecutor = executor;
    }

    public abstract void event();

    public void run()
    {
        if (mExecutor != null)
        {
            Runnable runnable = new Runnable() {

                final RunnableExecutor this$0;

                public void run()
                {
                    event();
                }

            
            {
                this$0 = RunnableExecutor.this;
                super();
            }
            };
            mExecutor.execute(runnable);
            return;
        } else
        {
            event();
            return;
        }
    }
}
