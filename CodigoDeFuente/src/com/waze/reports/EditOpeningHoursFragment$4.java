// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.widget.EditText;
import com.waze.settings.SwitchCheckedCallback;

// Referenced classes of package com.waze.reports:
//            EditOpeningHoursFragment

class this._cls0
    implements SwitchCheckedCallback
{

    final EditOpeningHoursFragment this$0;

    public void OnCallback(boolean flag)
    {
        float f = 0.5F;
        EditText edittext = EditOpeningHoursFragment.access$3(EditOpeningHoursFragment.this);
        boolean flag1;
        EditText edittext1;
        float f1;
        EditText edittext2;
        String s;
        EditText edittext3;
        boolean flag2;
        EditText edittext4;
        EditText edittext5;
        String s1;
        if (flag)
        {
            flag1 = false;
        } else
        {
            flag1 = true;
        }
        edittext.setEnabled(flag1);
        edittext1 = EditOpeningHoursFragment.access$3(EditOpeningHoursFragment.this);
        if (flag)
        {
            f1 = f;
        } else
        {
            f1 = 1.0F;
        }
        edittext1.setAlpha(f1);
        edittext2 = EditOpeningHoursFragment.access$3(EditOpeningHoursFragment.this);
        if (flag)
        {
            s = "00:00";
        } else
        {
            s = "19:00";
        }
        edittext2.setText(s);
        edittext3 = EditOpeningHoursFragment.access$4(EditOpeningHoursFragment.this);
        flag2 = false;
        if (!flag)
        {
            flag2 = true;
        }
        edittext3.setEnabled(flag2);
        edittext4 = EditOpeningHoursFragment.access$4(EditOpeningHoursFragment.this);
        if (!flag)
        {
            f = 1.0F;
        }
        edittext4.setAlpha(f);
        edittext5 = EditOpeningHoursFragment.access$4(EditOpeningHoursFragment.this);
        if (flag)
        {
            s1 = "00:00";
        } else
        {
            s1 = "10:00";
        }
        edittext5.setText(s1);
    }

    ()
    {
        this$0 = EditOpeningHoursFragment.this;
        super();
    }
}
