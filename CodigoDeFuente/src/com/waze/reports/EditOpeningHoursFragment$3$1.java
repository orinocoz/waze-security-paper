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

class val.toSet
    implements android.app.tener
{

    final val.toSet this$1;
    private final EditText val$toSet;

    public void onTimeSet(TimePicker timepicker, int i, int j)
    {
        EditText edittext = val$toSet;
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(i);
        aobj[1] = Integer.valueOf(j);
        edittext.setText(String.format("%02d:%02d", aobj));
    }

    is._cls0()
    {
        this$1 = final__pcls0;
        val$toSet = EditText.this;
        super();
    }

    // Unreferenced inner class com/waze/reports/EditOpeningHoursFragment$3

/* anonymous class */
    class EditOpeningHoursFragment._cls3
        implements android.view.View.OnClickListener
    {

        final EditOpeningHoursFragment this$0;

        public void onClick(View view)
        {
            EditText edittext = (EditText)view;
            String s = edittext.getText().toString();
            int i = Integer.parseInt(s.substring(0, s.indexOf(':')));
            int j = Integer.parseInt(s.substring(1 + s.indexOf(':')));
            ContextThemeWrapper contextthemewrapper;
            String s1;
            EditOpeningHoursFragment.DurationTimePickDialog durationtimepickdialog;
            if (android.os.Build.VERSION.SDK_INT < 11)
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
            durationtimepickdialog = new EditOpeningHoursFragment.DurationTimePickDialog(EditOpeningHoursFragment.this, contextthemewrapper, edittext. new EditOpeningHoursFragment._cls3._cls1(), i, j, true, 5, s1);
            durationtimepickdialog.show();
            durationtimepickdialog.setOnDismissListener(new EditOpeningHoursFragment._cls3._cls2());
        }


            
            {
                this$0 = EditOpeningHoursFragment.this;
                super();
            }

        // Unreferenced inner class com/waze/reports/EditOpeningHoursFragment$3$2

/* anonymous class */
        class EditOpeningHoursFragment._cls3._cls2
            implements android.content.DialogInterface.OnDismissListener
        {

            final EditOpeningHoursFragment._cls3 this$1;

            public void onDismiss(DialogInterface dialoginterface)
            {
                refreashPressedState();
            }

                    
                    {
                        this$1 = EditOpeningHoursFragment._cls3.this;
                        super();
                    }
        }

    }

}
