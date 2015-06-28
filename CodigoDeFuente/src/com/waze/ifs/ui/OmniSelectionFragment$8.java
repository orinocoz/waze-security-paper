// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.view.View;
import android.widget.ExpandableListView;
import com.waze.settings.SettingsValue;

// Referenced classes of package com.waze.ifs.ui:
//            OmniSelectionFragment

class this._cls0
    implements android.widget.ldClickListener
{

    final OmniSelectionFragment this$0;

    public boolean onChildClick(ExpandableListView expandablelistview, View view, int i, int j, long l)
    {
        int k = ((niSelectExpandableAdapter)OmniSelectionFragment.access$3(OmniSelectionFragment.this)).getChildIndex(i, j);
        SettingsValue settingsvalue = (SettingsValue)((niSelectExpandableAdapter)OmniSelectionFragment.access$3(OmniSelectionFragment.this)).getItem(k);
        if (settingsvalue.isSelected)
        {
            OmniSelectionFragment.access$4(OmniSelectionFragment.this, k, settingsvalue, false);
        } else
        {
            if (OmniSelectionFragment.access$3(OmniSelectionFragment.this).getSelectedItem() != null)
            {
                OmniSelectionFragment.access$3(OmniSelectionFragment.this).getSelectedItem().isSelected = false;
            }
            settingsvalue.isSelected = true;
        }
        OmniSelectionFragment.access$3(OmniSelectionFragment.this).notifyDataSetChanged();
        return true;
    }

    niSelectAdapter()
    {
        this$0 = OmniSelectionFragment.this;
        super();
    }
}
