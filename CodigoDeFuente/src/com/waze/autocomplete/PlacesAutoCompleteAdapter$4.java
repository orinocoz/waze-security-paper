// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.autocomplete;

import android.webkit.WebView;

// Referenced classes of package com.waze.autocomplete:
//            PlacesAutoCompleteAdapter

class val.adsView
    implements Runnable
{

    final PlacesAutoCompleteAdapter this$0;
    private final WebView val$adsView;

    public void run()
    {
        PlacesAutoCompleteAdapter.access$11(PlacesAutoCompleteAdapter.this, null);
        val$adsView.requestLayout();
    }

    ()
    {
        this$0 = final_placesautocompleteadapter;
        val$adsView = WebView.this;
        super();
    }
}
