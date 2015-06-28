// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.view.View;
import android.widget.ExpandableListView;
import com.waze.settings.SettingsValue;

// Referenced classes of package com.waze.ifs.ui:
//            OmniSelectionFragment

class val.lv
    implements android.widget.upClickListener
{

    final OmniSelectionFragment this$0;
    private final ExpandableListView val$lv;

    public boolean onGroupClick(ExpandableListView expandablelistview, View view, int i, long l)
    {
        int j = ((niSelectExpandableAdapter)OmniSelectionFragment.access$3(OmniSelectionFragment.this)).getChildIndex(i, -1);
        SettingsValue settingsvalue = (SettingsValue)((niSelectExpandableAdapter)OmniSelectionFragment.access$3(OmniSelectionFragment.this)).getItem(j);
        if (settingsvalue.isSelected)
        {
            OmniSelectionFragment.access$4(OmniSelectionFragment.this, j, settingsvalue, false);
            return true;
        }
        if (OmniSelectionFragment.access$3(OmniSelectionFragment.this).getSelectedItem() != null)
        {
            OmniSelectionFragment.access$3(OmniSelectionFragment.this).getSelectedItem().isSelected = false;
        }
        settingsvalue.isSelected = true;
        if (val$lv.isGroupExpanded(i))
        {
            val$lv.collapseGroup(i);
            OmniSelectionFragment.access$13(OmniSelectionFragment.this, -1);
            return true;
        }
        val$lv.expandGroup(i);
        if (OmniSelectionFragment.access$14(OmniSelectionFragment.this) != -1)
        {
            val$lv.collapseGroup(OmniSelectionFragment.access$14(OmniSelectionFragment.this));
        }
        OmniSelectionFragment.access$13(OmniSelectionFragment.this, i);
        val$lv.smoothScrollToPosition(i);
        return true;
    }

    niSelectAdapter()
    {
        this$0 = final_omniselectionfragment;
        val$lv = ExpandableListView.this;
        super();
    }
}
