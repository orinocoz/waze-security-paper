// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.web;

import android.view.View;
import com.waze.view.map.ProgressAnimation;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.view.web:
//            SimpleWebActivity

class this._cls0
    implements com.waze.eProgressCallback
{

    final SimpleWebActivity this$0;

    public void onWebViewPageFinished()
    {
        SimpleWebActivity.access$1(SimpleWebActivity.this).stop();
        SimpleWebActivity.access$1(SimpleWebActivity.this).setVisibility(8);
        SimpleWebActivity.access$0(SimpleWebActivity.this).findViewById(0x7f090740).setVisibility(0);
    }

    public void onWebViewPageStarted()
    {
        SimpleWebActivity.access$0(SimpleWebActivity.this).findViewById(0x7f090740).setVisibility(4);
        SimpleWebActivity.access$1(SimpleWebActivity.this).setVisibility(0);
        SimpleWebActivity.access$1(SimpleWebActivity.this).start();
    }

    Callback()
    {
        this$0 = SimpleWebActivity.this;
        super();
    }
}
