// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import java.util.ArrayList;

// Referenced classes of package com.waze.reports:
//            EditOpeningHoursFragment, OpeningHours

class this._cls0
    implements android.view.t._cls5
{

    final EditOpeningHoursFragment this$0;

    public void onClick(View view)
    {
        int i = 1;
        if (!EditOpeningHoursFragment.access$1(EditOpeningHoursFragment.this)[0] && !EditOpeningHoursFragment.access$1(EditOpeningHoursFragment.this)[i] && !EditOpeningHoursFragment.access$1(EditOpeningHoursFragment.this)[2] && !EditOpeningHoursFragment.access$1(EditOpeningHoursFragment.this)[3] && !EditOpeningHoursFragment.access$1(EditOpeningHoursFragment.this)[4] && !EditOpeningHoursFragment.access$1(EditOpeningHoursFragment.this)[5] && !EditOpeningHoursFragment.access$1(EditOpeningHoursFragment.this)[6])
        {
            return;
        }
        OpeningHours openinghours = new OpeningHours();
        if (OpeningHours.FIRST_DAY_IS_SUNDAY)
        {
            int ai7[] = openinghours.days;
            int l1;
            int ai8[];
            int i2;
            int ai9[];
            int j2;
            int ai10[];
            int k2;
            int ai11[];
            int l2;
            int ai12[];
            int i3;
            int ai13[];
            if (EditOpeningHoursFragment.access$1(EditOpeningHoursFragment.this)[0])
            {
                l1 = i;
            } else
            {
                l1 = 0;
            }
            ai7[0] = l1;
            ai8 = openinghours.days;
            if (EditOpeningHoursFragment.access$1(EditOpeningHoursFragment.this)[i])
            {
                i2 = i;
            } else
            {
                i2 = 0;
            }
            ai8[i] = i2;
            ai9 = openinghours.days;
            if (EditOpeningHoursFragment.access$1(EditOpeningHoursFragment.this)[2])
            {
                j2 = i;
            } else
            {
                j2 = 0;
            }
            ai9[2] = j2;
            ai10 = openinghours.days;
            if (EditOpeningHoursFragment.access$1(EditOpeningHoursFragment.this)[3])
            {
                k2 = i;
            } else
            {
                k2 = 0;
            }
            ai10[3] = k2;
            ai11 = openinghours.days;
            if (EditOpeningHoursFragment.access$1(EditOpeningHoursFragment.this)[4])
            {
                l2 = i;
            } else
            {
                l2 = 0;
            }
            ai11[4] = l2;
            ai12 = openinghours.days;
            if (EditOpeningHoursFragment.access$1(EditOpeningHoursFragment.this)[5])
            {
                i3 = i;
            } else
            {
                i3 = 0;
            }
            ai12[5] = i3;
            ai13 = openinghours.days;
            if (!EditOpeningHoursFragment.access$1(EditOpeningHoursFragment.this)[6])
            {
                i = 0;
            }
            ai13[6] = i;
        } else
        {
            int ai[] = openinghours.days;
            int j;
            int ai1[];
            int k;
            int ai2[];
            int l;
            int ai3[];
            int i1;
            int ai4[];
            int j1;
            int ai5[];
            int k1;
            int ai6[];
            if (EditOpeningHoursFragment.access$1(EditOpeningHoursFragment.this)[0])
            {
                j = i;
            } else
            {
                j = 0;
            }
            ai[i] = j;
            ai1 = openinghours.days;
            if (EditOpeningHoursFragment.access$1(EditOpeningHoursFragment.this)[i])
            {
                k = i;
            } else
            {
                k = 0;
            }
            ai1[2] = k;
            ai2 = openinghours.days;
            if (EditOpeningHoursFragment.access$1(EditOpeningHoursFragment.this)[2])
            {
                l = i;
            } else
            {
                l = 0;
            }
            ai2[3] = l;
            ai3 = openinghours.days;
            if (EditOpeningHoursFragment.access$1(EditOpeningHoursFragment.this)[3])
            {
                i1 = i;
            } else
            {
                i1 = 0;
            }
            ai3[4] = i1;
            ai4 = openinghours.days;
            if (EditOpeningHoursFragment.access$1(EditOpeningHoursFragment.this)[4])
            {
                j1 = i;
            } else
            {
                j1 = 0;
            }
            ai4[5] = j1;
            ai5 = openinghours.days;
            if (EditOpeningHoursFragment.access$1(EditOpeningHoursFragment.this)[5])
            {
                k1 = i;
            } else
            {
                k1 = 0;
            }
            ai5[6] = k1;
            ai6 = openinghours.days;
            if (!EditOpeningHoursFragment.access$1(EditOpeningHoursFragment.this)[6])
            {
                i = 0;
            }
            ai6[0] = i;
        }
        openinghours.from = EditOpeningHoursFragment.access$4(EditOpeningHoursFragment.this).getText().toString();
        openinghours.to = EditOpeningHoursFragment.access$3(EditOpeningHoursFragment.this).getText().toString();
        EditOpeningHoursFragment.access$0(EditOpeningHoursFragment.this).add(openinghours);
        addLine(openinghours);
    }

    ()
    {
        this$0 = EditOpeningHoursFragment.this;
        super();
    }
}
