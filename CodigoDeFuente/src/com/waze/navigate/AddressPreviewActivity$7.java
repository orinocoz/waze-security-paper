// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.view.MotionEvent;
import android.view.View;
import com.waze.ifs.ui.ObservableScrollView;

// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity

class rollAndTouchListener
    implements android.view.ty._cls7
{

    final AddressPreviewActivity this$0;
    private final rollAndTouchListener val$scrollAndTouchListener;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if (rollAndTouchListener.access._mth3(val$scrollAndTouchListener))
        {
            if (motionevent.getAction() == 0)
            {
                AddressPreviewActivity.access$0(AddressPreviewActivity.this).requestDisallowInterceptTouchEvent(true);
            }
            if (motionevent.getAction() == 1)
            {
                AddressPreviewActivity.access$0(AddressPreviewActivity.this).requestDisallowInterceptTouchEvent(false);
            }
        }
        return false;
    }

    rollAndTouchListener()
    {
        this$0 = final_addresspreviewactivity;
        val$scrollAndTouchListener = rollAndTouchListener.this;
        super();
    }
}
