// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.view.View;

// Referenced classes of package com.waze.ifs.ui:
//            OmniSelectionFragment

class this._cls0
    implements android.view.._cls1
{

    final OmniSelectionFragment this$0;

    public void onClick(View view)
    {
        if (OmniSelectionFragment.access$1(OmniSelectionFragment.this) || OmniSelectionFragment.access$2(OmniSelectionFragment.this))
        {
            com.waze.settings.SettingsValue settingsvalue = OmniSelectionFragment.access$3(OmniSelectionFragment.this).getSelectedItem();
            if (settingsvalue != null)
            {
                OmniSelectionFragment.access$4(OmniSelectionFragment.this, OmniSelectionFragment.access$3(OmniSelectionFragment.this).getSelectedPosition(), settingsvalue, false);
            }
        }
    }

    niSelectAdapter()
    {
        this$0 = OmniSelectionFragment.this;
        super();
    }
}
