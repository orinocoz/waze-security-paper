// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.app.Dialog;
import android.content.DialogInterface;
import android.text.Editable;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.EditText;
import android.widget.TimePicker;
import com.waze.NativeManager;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.reports:
//            EditOpeningHoursFragment

class this._cls0
    implements android.view.t._cls3
{

    final EditOpeningHoursFragment this$0;

    public void onClick(View view)
    {
        final EditText toSet = (EditText)view;
        String s = toSet.getText().toString();
        int i = Integer.parseInt(s.substring(0, s.indexOf(':')));
        int j = Integer.parseInt(s.substring(1 + s.indexOf(':')));
        ContextThemeWrapper contextthemewrapper;
        String s1;
        rationTimePickDialog rationtimepickdialog;
        if (android.os.ent < 11)
        {
            contextthemewrapper = new ContextThemeWrapper(getActivity(), 0x103000b);
        } else
        {
            contextthemewrapper = new ContextThemeWrapper(getActivity(), 0x103006f);
        }
        if (view.getId() == 0x7f090279)
        {
            s1 = EditOpeningHoursFragment.access$2(EditOpeningHoursFragment.this).getLanguageString(DisplayStrings.DS_OPENING_TIME);
        } else
        if (view.getId() == 0x7f09027b)
        {
            s1 = EditOpeningHoursFragment.access$2(EditOpeningHoursFragment.this).getLanguageString(DisplayStrings.DS_CLOSING_TIME);
        } else
        {
            s1 = EditOpeningHoursFragment.access$2(EditOpeningHoursFragment.this).getLanguageString(DisplayStrings.DS_TIME);
        }
        rationtimepickdialog = new rationTimePickDialog(EditOpeningHoursFragment.this, contextthemewrapper, new android.app.TimePickerDialog.OnTimeSetListener() {

            final EditOpeningHoursFragment._cls3 this$1;
            private final EditText val$toSet;

            public void onTimeSet(TimePicker timepicker, int k, int l)
            {
                EditText edittext = toSet;
                Object aobj[] = new Object[2];
                aobj[0] = Integer.valueOf(k);
                aobj[1] = Integer.valueOf(l);
                edittext.setText(String.format("%02d:%02d", aobj));
            }

            
            {
                this$1 = EditOpeningHoursFragment._cls3.this;
                toSet = edittext;
                super();
            }
        }, i, j, true, 5, s1);
        rationtimepickdialog.show();
        rationtimepickdialog.setOnDismissListener(new android.content.DialogInterface.OnDismissListener() {

            final EditOpeningHoursFragment._cls3 this$1;

            public void onDismiss(DialogInterface dialoginterface)
            {
                refreashPressedState();
            }

            
            {
                this$1 = EditOpeningHoursFragment._cls3.this;
                super();
            }
        });
    }


    _cls2.this._cls1()
    {
        this$0 = EditOpeningHoursFragment.this;
        super();
    }
}
