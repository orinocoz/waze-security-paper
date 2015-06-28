// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager, SortPreferences

class t> extends RunnableUICallback
{

    private SortPreferences sortPreferences;
    final DriveToNativeManager this$0;
    private final String val$category;
    private final tPreferencesListener val$listener;

    public void callback()
    {
        val$listener.onComplete(sortPreferences);
    }

    public void event()
    {
        sortPreferences = DriveToNativeManager.access$13(DriveToNativeManager.this, val$category);
    }

    tPreferencesListener()
    {
        this$0 = final_drivetonativemanager;
        val$category = s;
        val$listener = tPreferencesListener.this;
        super();
    }
}
