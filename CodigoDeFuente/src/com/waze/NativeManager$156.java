// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager, EditBox

class val.aEditBox
    implements Runnable
{

    final NativeManager this$0;
    private final EditBox val$aEditBox;

    public void run()
    {
        val$aEditBox.HideSoftInput();
    }

    ()
    {
        this$0 = final_nativemanager;
        val$aEditBox = EditBox.this;
        super();
    }
}
