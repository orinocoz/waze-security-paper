// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.view.View;
import android.widget.AdapterView;
import com.waze.settings.SettingsValue;

// Referenced classes of package com.waze.ifs.ui:
//            OmniSelectionFragment

class this._cls0
    implements android.widget.istener
{

    final OmniSelectionFragment this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        boolean flag = true;
        if (OmniSelectionFragment.access$10(OmniSelectionFragment.this) != null)
        {
            if (!OmniSelectionFragment.access$1(OmniSelectionFragment.this))
            {
                if (OmniSelectionFragment.access$3(OmniSelectionFragment.this).getSelectedItem() != null)
                {
                    OmniSelectionFragment.access$3(OmniSelectionFragment.this).getSelectedItem().isSelected = false;
                }
                SettingsValue settingsvalue;
                if (OmniSelectionFragment.access$15(OmniSelectionFragment.this))
                {
                    settingsvalue = (SettingsValue)((lteredOmniSelectAdapter)OmniSelectionFragment.access$3(OmniSelectionFragment.this)).getItem(i);
                } else
                {
                    settingsvalue = (SettingsValue)OmniSelectionFragment.access$3(OmniSelectionFragment.this).getItem(i);
                }
                settingsvalue.isSelected = flag;
                if (settingsvalue != OmniSelectionFragment.access$6(OmniSelectionFragment.this))
                {
                    flag = false;
                }
                if (!flag || OmniSelectionFragment.access$6(OmniSelectionFragment.this).value != null && OmniSelectionFragment.access$6(OmniSelectionFragment.this).value.length() != 0)
                {
                    OmniSelectionFragment.access$4(OmniSelectionFragment.this, i, settingsvalue, flag);
                    return;
                }
            } else
            {
                OmniSelectionFragment.access$10(OmniSelectionFragment.this)[i].isSelected = flag;
                return;
            }
        }
    }

    lteredOmniSelectAdapter()
    {
        this$0 = OmniSelectionFragment.this;
        super();
    }
}
