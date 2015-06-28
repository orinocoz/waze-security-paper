// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze.moods;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.waze.AppService;
import com.waze.MoodManager;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.waze.mywaze.moods:
//            MoodItem, MoodArrayAdapter

public class MoodsActivity extends ActivityBase
{

    private MoodManager moodManager;
    private NativeManager nativeManager;

    public MoodsActivity()
    {
        nativeManager = AppService.getNativeManager();
        moodManager = MoodManager.getInstance();
    }

    private MoodItem[] getItems()
    {
        ArrayList arraylist;
        String as[];
        int i;
        arraylist = new ArrayList();
        if (moodManager.isBaby())
        {
            arraylist.add(new MoodItem(null, (new StringBuilder(String.valueOf(nativeManager.getLanguageString(DisplayStrings.DS_WAZE_NEWBIE)))).append(" ").append(moodManager.getNewbieMessage(DisplayStrings.DS_OGOTTA_DRIVE_PDP_PS_TO_ACCESS_OTHER_MOODSU)).toString(), null, true, false, false, false));
            arraylist.add(new MoodItem(getResources().getString(0x7f0701a6), getLocalizedName(getResources().getString(0x7f0701a7)), MoodManager.getMoodDrawable(this, getResources().getString(0x7f0701a6)), false, true, true, true));
        }
        arraylist.add(new MoodItem(null, nativeManager.getLanguageString(DisplayStrings.DS_EXCLUSIVES_FOR_MAP_EDITORS), null, true, false, false, false));
        as = getResources().getStringArray(0x7f0c0005);
        i = 0;
_L3:
        if (i < as.length) goto _L2; else goto _L1
_L1:
        String as1[];
        int j;
        arraylist.add(new MoodItem(null, (new StringBuilder(String.valueOf(nativeManager.getLanguageString(DisplayStrings.DS_EVERYDAY_MOODS)))).append(" ").append(nativeManager.getLanguageString(DisplayStrings.DS_OAVAILABLE_TO_ALLU)).toString(), null, true, false, false, false));
        as1 = getResources().getStringArray(0x7f0c0006);
        j = 0;
_L4:
        if (j >= as1.length)
        {
            return (MoodItem[])arraylist.toArray(new MoodItem[0]);
        }
        break MISSING_BLOCK_LABEL_384;
_L2:
        String s = as[i];
        String s1 = getLocalizedName(as[i]);
        android.graphics.drawable.Drawable drawable = MoodManager.getMoodDrawable(this, as[i]);
        boolean flag = moodManager.canSetMood(this, as[i]);
        boolean flag1;
        boolean flag2;
        if (i == 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (i == -1 + as.length)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        arraylist.add(new MoodItem(s, s1, drawable, false, flag, flag1, flag2));
        i++;
          goto _L3
        String s2 = as1[j];
        String s3 = getLocalizedName(as1[j]);
        android.graphics.drawable.Drawable drawable1 = MoodManager.getMoodDrawable(this, as1[j]);
        boolean flag3 = moodManager.canSetMood(this, as1[j]);
        boolean flag4;
        boolean flag5;
        if (j == 0)
        {
            flag4 = true;
        } else
        {
            flag4 = false;
        }
        if (j == -1 + as1.length)
        {
            flag5 = true;
        } else
        {
            flag5 = false;
        }
        arraylist.add(new MoodItem(s2, s3, drawable1, false, flag3, flag4, flag5));
        j++;
          goto _L4
    }

    private String getLocalizedName(String s)
    {
        String s1 = nativeManager.getLanguageString(s);
        if (s1 != null && s1.endsWith("."))
        {
            s1 = s1.substring(0, -1 + s1.length());
        }
        return s1;
    }

    private void showBabyMessage()
    {
        MsgBox.openMessageBox(nativeManager.getLanguageString(DisplayStrings.DS_WANNA_PICK_A_NEW_MOODQ), moodManager.getNewbieMessage(DisplayStrings.DS_YOUSRE_A_BABY_WAZER_NOW_H_BUT_NOT_FOR_LONGE_DRIVE_PD_PS_TO_UNLOCK_MOODS___), false);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030089);
        ((TitleBar)findViewById(0x7f090406)).init(this, DisplayStrings.DS_MY_MOOD);
        final MoodArrayAdapter adapter = new MoodArrayAdapter(getApplicationContext(), 0x7f030087, getItems());
        ListView listview = (ListView)findViewById(0x7f090407);
        listview.setAdapter(adapter);
        listview.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final MoodsActivity this$0;
            private final MoodArrayAdapter val$adapter;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                MoodItem mooditem = (MoodItem)adapterview.getItemAtPosition(i);
                if (mooditem.enabled)
                {
                    moodManager.setWazerMood(mooditem.mood);
                    adapter.notifyDataSetChanged();
                    setResult(4);
                    finish();
                }
            }

            
            {
                this$0 = MoodsActivity.this;
                adapter = moodarrayadapter;
                super();
            }
        });
        if (moodManager.isBaby())
        {
            showBabyMessage();
        }
    }

}
