// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.app.TimePickerDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.widget.NumberPicker;
import android.widget.TimePicker;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.waze.reports:
//            EditOpeningHoursFragment

private class setTitle extends TimePickerDialog
{

    final int increment;
    final android.app.alog mCallback;
    TimePicker mTimePicker;
    final EditOpeningHoursFragment this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (mCallback != null && mTimePicker != null)
        {
            mTimePicker.clearFocus();
            mCallback.mCallback(mTimePicker, mTimePicker.getCurrentHour().intValue(), mTimePicker.getCurrentMinute().intValue() * increment);
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        NumberPicker numberpicker;
        ArrayList arraylist;
        Class class1 = Class.forName("com.android.internal.R$id");
        mTimePicker = (TimePicker)findViewById(class1.getField("timePicker").getInt(null));
        Field field = class1.getField("minute");
        numberpicker = (NumberPicker)mTimePicker.findViewById(field.getInt(null));
        numberpicker.setMinValue(0);
        numberpicker.setMaxValue(-1 + 60 / increment);
        arraylist = new ArrayList();
        int i = 0;
_L2:
        if (i >= 60)
        {
            Object aobj[];
            int j;
            try
            {
                numberpicker.setDisplayedValues((String[])arraylist.toArray(new String[0]));
                return;
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
            break; /* Loop/switch isn't completed */
        }
        aobj = new Object[1];
        aobj[0] = Integer.valueOf(i);
        arraylist.add(String.format("%02d", aobj));
        j = increment;
        i += j;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected void onStop()
    {
    }

    public void onTimeChanged(TimePicker timepicker, int i, int j)
    {
    }

    public (Context context, android.app.alog alog, int i, int j, boolean flag, int k, 
            String s)
    {
        this$0 = EditOpeningHoursFragment.this;
        super(context, alog, i, j / k, flag);
        mCallback = alog;
        increment = k;
        setTitle(s);
    }
}
