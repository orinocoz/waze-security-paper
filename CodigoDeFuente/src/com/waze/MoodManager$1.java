// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.menus.MainMenu;

// Referenced classes of package com.waze:
//            MoodManager, AppService, MainActivity, LayoutManager

class 
    implements Runnable
{

    final MoodManager this$0;
    private final int val$addon;
    private final boolean val$baby;
    private final int val$exclusive;
    private final int val$milage;
    private final String val$mood;
    private final String val$unit;

    public void run()
    {
        MoodManager.access$0(MoodManager.this, val$mood);
        MoodManager.access$1(MoodManager.this, Boolean.valueOf(val$baby));
        MoodManager.access$2(MoodManager.this, Integer.valueOf(val$addon));
        MoodManager.access$3(MoodManager.this, val$exclusive);
        MoodManager.access$4(MoodManager.this, val$milage);
        MoodManager.access$5(MoodManager.this, val$unit);
        MainActivity mainactivity = AppService.getMainActivity();
        if (mainactivity != null && mainactivity.getLayoutMgr() != null)
        {
            MainMenu mainmenu = mainactivity.getLayoutMgr().getMainMenu();
            if (mainmenu != null)
            {
                mainmenu.refresh();
            }
        }
    }

    ()
    {
        this$0 = final_moodmanager;
        val$mood = s;
        val$baby = flag;
        val$addon = i;
        val$exclusive = j;
        val$milage = k;
        val$unit = String.this;
        super();
    }
}
