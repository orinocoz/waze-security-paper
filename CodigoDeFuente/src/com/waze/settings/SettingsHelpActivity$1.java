// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import com.waze.ConfigItem;
import java.util.List;

// Referenced classes of package com.waze.settings:
//            SettingsHelpActivity, DrillDownSettingView

class this._cls0
    implements com.waze.dater
{

    final SettingsHelpActivity this$0;

    public void updateConfigItems(List list)
    {
label0:
        {
            if (list.size() > 0)
            {
                editVideoUrl = (ConfigItem)list.get(0);
                if (((ConfigItem)list.get(1)).getValue().equalsIgnoreCase("yes"))
                {
                    showGuidedTour = true;
                } else
                {
                    showGuidedTour = false;
                    ((DrillDownSettingView)findViewById(0x7f090639)).setVisibility(8);
                }
                if (!((ConfigItem)list.get(2)).getValue().equalsIgnoreCase("yes"))
                {
                    break label0;
                }
                showHowToEditMap = true;
            }
            return;
        }
        showHowToEditMap = false;
        ((DrillDownSettingView)findViewById(0x7f09063a)).setVisibility(8);
    }

    ()
    {
        this$0 = SettingsHelpActivity.this;
        super();
    }
}
