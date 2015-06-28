// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import com.waze.NativeManager;
import com.waze.ifs.async.RunnableUICallback;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.share:
//            ShareNativeManager

class k extends RunnableUICallback
{

    String mHint;
    String mTitle;
    final ShareNativeManager this$0;
    private final hareFbWithDataHandler val$dataHandler;

    public void callback()
    {
        if (val$dataHandler != null)
        {
            val$dataHandler.onFbWithData(mTitle, mHint);
        }
    }

    public void event()
    {
        NativeManager nativemanager = NativeManager.getInstance();
        mTitle = nativemanager.getLanguageString(DisplayStrings.DS_WITH);
        mHint = nativemanager.getLanguageString(DisplayStrings.DS_SEARCH_FRIENDS);
    }

    hareFbWithDataHandler()
    {
        this$0 = final_sharenativemanager;
        val$dataHandler = hareFbWithDataHandler.this;
        super();
    }
}
