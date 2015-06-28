// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import com.waze.MapView;

// Referenced classes of package com.waze.reports:
//            EditPlaceFragment

class timesWaited
    implements Runnable
{

    final EditPlaceFragment this$0;
    int timesWaited;

    public void run()
    {
        timesWaited = 1 + timesWaited;
        EditPlaceFragment.access$15(EditPlaceFragment.this).setImageViewToRender(EditPlaceFragment.access$16(EditPlaceFragment.this), new com.waze.OGLRenderer.OnRenderListener() {

            final EditPlaceFragment._cls10 this$1;

            public void onRender()
            {
                EditPlaceFragment.access$15(this$0).setImageViewToRender(null, null);
                if (timesWaited > 3)
                {
                    EditPlaceFragment.access$15(this$0).setVisibility(8);
                }
            }

            
            {
                this$1 = EditPlaceFragment._cls10.this;
                super();
            }
        });
        if (timesWaited <= 3)
        {
            EditPlaceFragment.access$15(EditPlaceFragment.this).postDelayed(EditPlaceFragment.access$17(EditPlaceFragment.this), 1000 * timesWaited);
        }
    }


    _cls1.this._cls1()
    {
        this$0 = EditPlaceFragment.this;
        super();
        timesWaited = 0;
    }
}
