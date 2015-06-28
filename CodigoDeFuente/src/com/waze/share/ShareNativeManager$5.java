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

    String mTitle;
    final ShareNativeManager this$0;
    private final hareFbLocationDataHandler val$dataHandler;

    public void callback()
    {
        if (val$dataHandler != null)
        {
            val$dataHandler.onFbLocationData(mTitle);
        }
    }

    public void event()
    {
        mTitle = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_LOCATION);
    }

    hareFbLocationDataHandler()
    {
        this$0 = final_sharenativemanager;
        val$dataHandler = hareFbLocationDataHandler.this;
        super();
    }
}
