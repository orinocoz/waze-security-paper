// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.support.v4.view.ViewPager;
import com.waze.view.popups.PopUp;

// Referenced classes of package com.waze:
//            LayoutManager

class ewPager
    implements Runnable
{

    final LayoutManager this$0;
    private final ViewPager val$myPager;

    public void run()
    {
label0:
        {
            if (LayoutManager.access$14(LayoutManager.this))
            {
                if (LayoutManager.access$15(LayoutManager.this) != 1 || !LayoutManager.access$16(LayoutManager.this))
                {
                    break label0;
                }
                callCloseAllPopups(0);
            }
            return;
        }
        if (LayoutManager.access$16(LayoutManager.this))
        {
            if (LayoutManager.access$15(LayoutManager.this) <= 1 + LayoutManager.access$17(LayoutManager.this))
            {
                callCloseAllPopups(0);
                return;
            }
            LayoutManager layoutmanager = LayoutManager.this;
            LayoutManager.access$12(layoutmanager, 1 + LayoutManager.access$17(layoutmanager));
            if (LayoutManager.access$18(LayoutManager.this)[LayoutManager.access$17(LayoutManager.this)] == null)
            {
                callCloseAllPopups(0);
                return;
            } else
            {
                val$myPager.setCurrentItem(LayoutManager.access$17(LayoutManager.this));
                val$myPager.postDelayed(this, 1000 * ((PopUp)LayoutManager.access$18(LayoutManager.this)[LayoutManager.access$17(LayoutManager.this)]).GetTimer());
                return;
            }
        } else
        {
            LayoutManager.access$13(LayoutManager.this, true);
            val$myPager.postDelayed(this, 1000 * LayoutManager.access$19(LayoutManager.this));
            return;
        }
    }

    ewPager()
    {
        this$0 = final_layoutmanager;
        val$myPager = ViewPager.this;
        super();
    }
}
