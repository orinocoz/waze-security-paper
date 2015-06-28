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
        SettingsValue settingsvalue = (SettingsValue)OmniSelectionFragment.access$9(OmniSelectionFragment.this).getItem(i);
        int j = OmniSelectionFragment.access$9(OmniSelectionFragment.this).getOriginalIndex(settingsvalue);
        OmniSelectionFragment.access$4(OmniSelectionFragment.this, j, settingsvalue, false);
    }

    toCompleteOmniSelectAdapter()
    {
        this$0 = OmniSelectionFragment.this;
        super();
    }
}
