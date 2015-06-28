// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.EditText;

// Referenced classes of package com.waze.ifs.ui:
//            EditBoxFadeBg

class this._cls0 extends EditText
{

    final EditBoxFadeBg this$0;

    protected void onFocusChanged(boolean flag, int i, Rect rect)
    {
        super.onFocusChanged(flag, i, rect);
        EditBoxFadeBg.access$0(EditBoxFadeBg.this, flag);
        EditBoxFadeBg.access$1(EditBoxFadeBg.this);
    }

    public (Context context, AttributeSet attributeset)
    {
        this$0 = EditBoxFadeBg.this;
        super(context, attributeset);
    }
}
