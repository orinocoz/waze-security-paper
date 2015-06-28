// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager, LayoutManager, EditBox

class val.aTopMargin
    implements Runnable
{

    final NativeManager this$0;
    private final int val$aAction;
    private final int val$aFlags;
    private final int val$aStayOnAction;
    private final byte val$aText[];
    private final int val$aTopMargin;
    private final lback val$editBoxCb;
    private final LayoutManager val$layoutMgr;

    public void run()
    {
        boolean flag = true;
        int i = 2 & val$aFlags;
        int j = 0;
        if (i > 0)
        {
            j = 1;
        }
        EditBox editbox = val$layoutMgr.CreateEditBox(j);
        editbox.setEditBoxAction(val$aAction);
        if (val$aStayOnAction != flag)
        {
            flag = false;
        }
        editbox.setEditBoxStayOnAction(flag);
        editbox.setHint(new String(val$aText));
        editbox.setEditBoxCallback(val$editBoxCb);
        editbox.setEditBoxFlags(val$aFlags);
        val$layoutMgr.ShowEditBox(val$aTopMargin, j);
    }

    lback()
    {
        this$0 = final_nativemanager;
        val$aFlags = i;
        val$layoutMgr = layoutmanager;
        val$aAction = j;
        val$aStayOnAction = k;
        val$aText = abyte0;
        val$editBoxCb = lback;
        val$aTopMargin = I.this;
        super();
    }
}
