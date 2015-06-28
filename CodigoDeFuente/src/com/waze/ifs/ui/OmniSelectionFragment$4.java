// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.view.KeyEvent;
import android.widget.TextView;
import com.waze.settings.SettingsValue;

// Referenced classes of package com.waze.ifs.ui:
//            OmniSelectionFragment

class this._cls0
    implements android.widget.istener
{

    final OmniSelectionFragment this$0;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        if (OmniSelectionFragment.access$8(OmniSelectionFragment.this))
        {
            if (OmniSelectionFragment.access$9(OmniSelectionFragment.this).getCount() > 0)
            {
                SettingsValue settingsvalue = (SettingsValue)OmniSelectionFragment.access$9(OmniSelectionFragment.this).getItem(0);
                if (settingsvalue.rank >= 2.0F)
                {
                    int j = OmniSelectionFragment.access$9(OmniSelectionFragment.this).getOriginalIndex(settingsvalue);
                    OmniSelectionFragment.access$4(OmniSelectionFragment.this, j, settingsvalue, false);
                }
            }
            return true;
        }
        if (OmniSelectionFragment.access$5(OmniSelectionFragment.this) && OmniSelectionFragment.access$6(OmniSelectionFragment.this).value.length() >= 2)
        {
            OmniSelectionFragment.access$4(OmniSelectionFragment.this, OmniSelectionFragment.access$10(OmniSelectionFragment.this).length, OmniSelectionFragment.access$6(OmniSelectionFragment.this), true);
        }
        return false;
    }

    toCompleteOmniSelectAdapter()
    {
        this$0 = OmniSelectionFragment.this;
        super();
    }
}
