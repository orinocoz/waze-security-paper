// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;

import com.waze.NativeManager;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.strings.DisplayStrings;
import java.util.HashMap;
import java.util.concurrent.Executor;

// Referenced classes of package com.waze.rtalerts:
//            RTAlertsNativeManager

class  extends RunnableExecutor
{

    final RTAlertsNativeManager this$0;

    public void event()
    {
        HashMap hashmap = new HashMap();
        NativeManager nativemanager = NativeManager.getInstance();
        String s = nativemanager.getLanguageString(DisplayStrings.DS_COMMENTS);
        hashmap.put(Integer.valueOf(0x7f070187), s);
        String s1 = nativemanager.getLanguageString(DisplayStrings.DS_THANKS);
        hashmap.put(Integer.valueOf(0x7f070188), s1);
        String s2 = nativemanager.getLanguageString(DisplayStrings.DS_AWAY);
        hashmap.put(Integer.valueOf(0x7f070189), s2);
        String s3 = nativemanager.getLanguageString(DisplayStrings.DS_COMMENTS);
        hashmap.put(Integer.valueOf(0x7f07018a), s3);
        String s4 = nativemanager.getLanguageString(DisplayStrings.DS_ADD_COMMENT);
        hashmap.put(Integer.valueOf(0x7f07018b), s4);
        mLangHash = hashmap;
    }

    (Executor executor)
    {
        this$0 = RTAlertsNativeManager.this;
        super(executor);
    }
}
