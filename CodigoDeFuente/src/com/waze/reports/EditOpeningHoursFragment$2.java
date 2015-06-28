// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;

// Referenced classes of package com.waze.reports:
//            EditOpeningHoursFragment

class this._cls0
    implements android.view.t._cls2
{

    final EditOpeningHoursFragment this$0;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if (motionevent.getAction() == 1)
        {
            Button button = (Button)view;
            int i = ((Integer)view.getTag()).intValue();
            boolean aflag[] = EditOpeningHoursFragment.access$1(EditOpeningHoursFragment.this);
            boolean flag;
            if (EditOpeningHoursFragment.access$1(EditOpeningHoursFragment.this)[i])
            {
                flag = false;
            } else
            {
                flag = true;
            }
            aflag[i] = flag;
            button.setPressed(EditOpeningHoursFragment.access$1(EditOpeningHoursFragment.this)[i]);
            setAddButtonEnabledState();
        }
        return true;
    }

    ()
    {
        this$0 = EditOpeningHoursFragment.this;
        super();
    }
}
