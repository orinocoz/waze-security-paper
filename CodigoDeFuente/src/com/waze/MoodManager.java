// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.waze.menus.MainMenu;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze:
//            NativeManager, ResManager, Logger, AppService, 
//            MainActivity, LayoutManager

public class MoodManager
{

    private static MoodManager instance;
    private Integer addon;
    private Boolean baby;
    private int exclusiveMoodLevel;
    private NativeManager nativeManager;
    private int newbieMilage;
    private String newbieMilageUnit;
    private String wazerMood;

    private MoodManager()
    {
        exclusiveMoodLevel = -1;
        newbieMilage = 0;
        newbieMilageUnit = "";
        nativeManager = NativeManager.getInstance();
        InitMoodManagerNTV();
    }

    private native void InitMoodManagerNTV();

    private native int getExclusiveMoodLevelNTV();

    public static MoodManager getInstance()
    {
        if (instance == null)
        {
            instance = new MoodManager();
        }
        return instance;
    }

    private native int getMoodAddonNTV();

    public static Drawable getMoodDrawable(Context context, String s)
    {
        Drawable drawable = ResManager.GetSkinDrawable((new StringBuilder("moods/")).append(s).append(".bin").toString());
        if (drawable == null)
        {
            drawable = ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(s))).append(".bin").toString());
        }
        return drawable;
    }

    private native String getMoodNTV();

    private native int getNewbieMilageNTV();

    private native String getNewbieMilageUnitNTV();

    private native boolean isBabyNTV();

    private native void setMoodNTV(String s);

    private String toAndroidNaming(String s)
    {
        return s.replace("-", "_").toLowerCase();
    }

    public boolean canSetMood(Context context, String s)
    {
        boolean flag = true;
        if (!isBaby()) goto _L2; else goto _L1
_L1:
        flag = s.equals(context.getResources().getString(0x7f0701a6));
_L4:
        return flag;
_L2:
        if (exclusiveMoodLevel < 0)
        {
            Logger.w("Check exclusive mode before initializing");
            exclusiveMoodLevel = 0;
        }
        if (!"wazer_dino".equals(s))
        {
            break; /* Loop/switch isn't completed */
        }
        if (exclusiveMoodLevel < 3)
        {
            return false;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (!"wazer_8bit".equals(s))
        {
            continue; /* Loop/switch isn't completed */
        }
        if (exclusiveMoodLevel >= 2) goto _L4; else goto _L5
_L5:
        return false;
        if (!"wazer_robot".equals(s) || exclusiveMoodLevel >= flag) goto _L4; else goto _L6
_L6:
        return false;
    }

    public int getBigAddonDrawble(Context context)
    {
        if (addon == null)
        {
            Logger.w("Get addon before initializing");
            return 0;
        }
        if (addon.intValue() == 13)
        {
            addon = Integer.valueOf(4);
        }
        if (addon.intValue() == 10)
        {
            addon = Integer.valueOf(6);
        }
        String as[] = context.getResources().getStringArray(0x7f0c0007);
        int i = addon.intValue();
        int j = 0;
        if (i >= 0)
        {
            int k = addon.intValue();
            int l = as.length;
            j = 0;
            if (k < l)
            {
                j = ResManager.GetDrawableId(as[addon.intValue()]);
            }
        }
        return j;
    }

    public int getBigMoodDrawble()
    {
        return ResManager.GetDrawableId(toAndroidNaming(getWazerMood()));
    }

    public Drawable getMenuMoodDrawable(Context context)
    {
        Drawable drawable = getMoodDrawable(context, getWazerMood());
        if (drawable == null)
        {
            drawable = getMoodDrawable(context, "happy");
        }
        return drawable;
    }

    public int getMenuMoodDrawableByName(Context context, String s)
    {
        if (s != null)
        {
            return ResManager.GetDrawableId(toAndroidNaming(s));
        } else
        {
            return 0x7f020189;
        }
    }

    public Drawable getMoodDrawable(Context context)
    {
        Drawable drawable = getMoodDrawable(context, getWazerMood());
        if (drawable == null)
        {
            drawable = getMoodDrawable(context, "happy");
        }
        return drawable;
    }

    public String getNewbieMessage(DisplayStrings displaystrings)
    {
        String s = nativeManager.getLanguageString(displaystrings);
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(newbieMilage);
        aobj[1] = newbieMilageUnit;
        return String.format(s, aobj);
    }

    public String getWazerMood()
    {
        if (wazerMood == null)
        {
            Logger.w("Get wazer mood before initializing");
            wazerMood = "wazer_baby";
        }
        return wazerMood;
    }

    public boolean isBaby()
    {
        if (baby == null)
        {
            Logger.w("Get baby mode before initializing");
            baby = Boolean.valueOf(true);
        }
        return baby.booleanValue();
    }

    public void refreshMood()
    {
        AppService.Post(new Runnable() {

            final MoodManager this$0;
            private final int val$addon;
            private final boolean val$baby;
            private final int val$exclusive;
            private final int val$milage;
            private final String val$mood;
            private final String val$unit;

            public void run()
            {
                wazerMood = mood;
                MoodManager.this.baby = Boolean.valueOf(baby);
                MoodManager.this.addon = Integer.valueOf(addon);
                exclusiveMoodLevel = exclusive;
                newbieMilage = milage;
                newbieMilageUnit = unit;
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

            
            {
                this$0 = MoodManager.this;
                mood = s;
                baby = flag;
                addon = i;
                exclusive = j;
                milage = k;
                unit = s1;
                super();
            }
        });
    }

    public void setWazerMood(final String mood)
    {
        if (!wazerMood.equals(mood))
        {
            wazerMood = mood;
            nativeManager.PostRunnable(new Runnable() {

                final MoodManager this$0;
                private final String val$mood;

                public void run()
                {
                    setMoodNTV(mood);
                }

            
            {
                this$0 = MoodManager.this;
                mood = s;
                super();
            }
            });
        }
    }







}
