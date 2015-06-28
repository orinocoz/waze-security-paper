// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.web;

import android.webkit.WebView;

// Referenced classes of package com.waze.view.web:
//            SimpleWebActivity

class this._cls0
    implements com.waze.Override
{

    final SimpleWebActivity this$0;

    public boolean onUrlOverride(WebView webview, String s)
    {
        return SimpleWebActivity.this.onUrlOverride(s);
    }

    ()
    {
        this$0 = SimpleWebActivity.this;
        super();
    }
}
