// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;

import android.content.Context;
import android.text.Editable;
import android.util.AttributeSet;
import android.widget.EditText;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.rtalerts:
//            RTAlertsCommentsEditor

public static class mContext extends TitleBar
{

    private RTAlertsCommentsEditor mContext;

    public void onCloseClicked()
    {
        RTAlertsCommentsEditor.access$1(mContext, RTAlertsCommentsEditor.access$0(mContext).getText().toString());
    }

    public (Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mContext = (RTAlertsCommentsEditor)context;
    }
}
