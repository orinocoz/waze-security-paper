// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import com.waze.NativeManager;
import com.waze.ifs.async.RunnableUICallback;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.share:
//            ShareNativeManager, ShareFbMainData

class k extends RunnableUICallback
{

    final ShareFbMainData mData = new ShareFbMainData();
    final ShareNativeManager this$0;
    private final hareFbMainDataHandler val$dataHandler;
    private final boolean val$shareDestination;

    public void callback()
    {
        if (val$dataHandler != null)
        {
            val$dataHandler.onFbMainData(mData);
        }
    }

    public void event()
    {
        NativeManager nativemanager = NativeManager.getInstance();
        mData.title = nativemanager.getLanguageString(DisplayStrings.DS_SHARE);
        mData.hint = nativemanager.getLanguageString(DisplayStrings.DS_SAY_ANYTHING___);
        mData.post_to_fb = nativemanager.getLanguageString(DisplayStrings.DS_POST_TO_FACEBOOK);
        mData.postMsgBoxSuccessTitle = nativemanager.getLanguageString(DisplayStrings.DS_GREAT_X);
        mData.postMsgBoxSuccessText = nativemanager.getLanguageString(DisplayStrings.DS_THE_POST_WAS_PUBLISHED);
        mData.postMsgBoxFailureTitle = nativemanager.getLanguageString(DisplayStrings.DS_UHHOHE);
        mData.postMsgBoxFailureText = nativemanager.getLanguageString(DisplayStrings.DS_THE_POST_COULD_NOT_BE_PUBLISHED);
        mData.isNavigating = nativemanager.isNavigatingNTV();
        mData.location = ShareNativeManager.access$1(ShareNativeManager.this, val$shareDestination);
        mData.nickname = ShareNativeManager.access$2(ShareNativeManager.this);
        mData.eta = getEtaNTV();
        ShareNativeManager.access$4(ShareNativeManager.this, ShareNativeManager.access$3(ShareNativeManager.this));
    }

    hareFbMainDataHandler()
    {
        this$0 = final_sharenativemanager;
        val$shareDestination = flag;
        val$dataHandler = hareFbMainDataHandler.this;
        super();
    }
}
