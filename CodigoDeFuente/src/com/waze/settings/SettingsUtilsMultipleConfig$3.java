// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.content.Context;
import android.view.View;
import com.waze.NativeManager;

// Referenced classes of package com.waze.settings:
//            SettingsUtilsMultipleConfig, SettingsDialogListener

class val.listener
    implements android.view.ig._cls3
{

    private final Context val$context;
    private final String val$langDisplayStr;
    private final SettingsDialogListener val$listener;
    private final String val$options[];

    public void onClick(View view)
    {
        String as[] = new String[val$options.length];
        int i = 0;
        String as1[] = val$options;
        int j = as1.length;
        int k = 0;
        do
        {
            if (k >= j)
            {
                SettingsUtilsMultipleConfig.showSubmenu(val$context, val$langDisplayStr, as, val$listener);
                return;
            }
            String s = as1[k];
            as[i] = NativeManager.getInstance().getLanguageString(s);
            i++;
            k++;
        } while (true);
    }

    ()
    {
        val$options = as;
        val$context = context1;
        val$langDisplayStr = s;
        val$listener = settingsdialoglistener;
        super();
    }
}
