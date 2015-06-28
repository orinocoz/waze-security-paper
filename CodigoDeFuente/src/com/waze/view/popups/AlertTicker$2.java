// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.view.View;
import com.waze.NativeManager;
import com.waze.user.AlertTickerData;
import java.util.ArrayList;

// Referenced classes of package com.waze.view.popups:
//            AlertTicker

class this._cls0
    implements android.view.stener
{

    final AlertTicker this$0;

    public void onClick(View view)
    {
        int ai[] = new int[AlertTicker.access$0(AlertTicker.this)];
        int ai1[] = new int[AlertTicker.access$0(AlertTicker.this)];
        int i = 0;
        do
        {
            if (i >= AlertTicker.access$0(AlertTicker.this))
            {
                NativeManager.getInstance().OpenTickersPopups(ai, ai1);
                return;
            }
            AlertTickerData alerttickerdata = (AlertTickerData)AlertTicker.access$1(AlertTicker.this).get(i);
            ai[i] = alerttickerdata.mType;
            ai1[i] = alerttickerdata.mIndex;
            i++;
        } while (true);
    }

    ()
    {
        this$0 = AlertTicker.this;
        super();
    }
}
