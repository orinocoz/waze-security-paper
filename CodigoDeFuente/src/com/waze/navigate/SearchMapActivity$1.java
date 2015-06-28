// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import com.waze.ifs.async.RunnableExecutor;

// Referenced classes of package com.waze.navigate:
//            SearchMapActivity, DriveToNativeManager

class nit> extends RunnableExecutor
{

    final SearchMapActivity this$0;

    public void event()
    {
        SearchMapActivity.access$0(SearchMapActivity.this).setSearchMapView();
        SearchMapActivity.access$0(SearchMapActivity.this).setSearchResultPins(SearchMapActivity.access$1(SearchMapActivity.this), SearchMapActivity.access$2(SearchMapActivity.this));
    }

    ()
    {
        this$0 = SearchMapActivity.this;
        super();
    }
}
