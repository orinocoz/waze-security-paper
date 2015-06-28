// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze.moods;

import android.view.View;
import android.widget.AdapterView;
import com.waze.MoodManager;

// Referenced classes of package com.waze.mywaze.moods:
//            MoodsActivity, MoodItem, MoodArrayAdapter

class 
    implements android.widget.emClickListener
{

    final MoodsActivity this$0;
    private final MoodArrayAdapter val$adapter;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        MoodItem mooditem = (MoodItem)adapterview.getItemAtPosition(i);
        if (mooditem.enabled)
        {
            MoodsActivity.access$0(MoodsActivity.this).setWazerMood(mooditem.mood);
            val$adapter.notifyDataSetChanged();
            setResult(4);
            finish();
        }
    }

    ()
    {
        this$0 = final_moodsactivity;
        val$adapter = MoodArrayAdapter.this;
        super();
    }
}
