// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;

public class WazeAppWidgetGraphActivity extends Activity
{
    private final class OnCloseListener
        implements android.view.View.OnClickListener
    {

        final WazeAppWidgetGraphActivity this$0;

        public void onClick(View view)
        {
            finish();
        }

        private OnCloseListener()
        {
            this$0 = WazeAppWidgetGraphActivity.this;
            super();
        }

        OnCloseListener(OnCloseListener oncloselistener)
        {
            this();
        }
    }


    public WazeAppWidgetGraphActivity()
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03001e);
        ((ImageButton)findViewById(0x7f0901ac)).setOnClickListener(new OnCloseListener(null));
    }
}
