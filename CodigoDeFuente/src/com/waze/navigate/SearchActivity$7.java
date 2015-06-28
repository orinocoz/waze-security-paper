// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;


// Referenced classes of package com.waze.navigate:
//            SearchActivity, SearchEngine

class val.finalEngine
    implements Runnable
{

    final SearchActivity this$0;
    private final SearchEngine val$finalEngine;

    public void run()
    {
        setActiveEngine(val$finalEngine);
    }

    ()
    {
        this$0 = final_searchactivity;
        val$finalEngine = SearchEngine.this;
        super();
    }
}
