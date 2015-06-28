// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import com.waze.MapView;

// Referenced classes of package com.waze.reports:
//            EditPlaceFragment

class this._cls1
    implements com.waze.tener
{

    final is._cls0 this$1;

    public void onRender()
    {
        EditPlaceFragment.access$15(_fld0).setImageViewToRender(null, null);
        if (mesWaited > 3)
        {
            EditPlaceFragment.access$15(_fld0).setVisibility(8);
        }
    }

    mesWaited()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/reports/EditPlaceFragment$10

/* anonymous class */
    class EditPlaceFragment._cls10
        implements Runnable
    {

        final EditPlaceFragment this$0;
        int timesWaited;

        public void run()
        {
            timesWaited = 1 + timesWaited;
            EditPlaceFragment.access$15(EditPlaceFragment.this).setImageViewToRender(EditPlaceFragment.access$16(EditPlaceFragment.this), new EditPlaceFragment._cls10._cls1());
            if (timesWaited <= 3)
            {
                EditPlaceFragment.access$15(EditPlaceFragment.this).postDelayed(EditPlaceFragment.access$17(EditPlaceFragment.this), 1000 * timesWaited);
            }
        }


            
            {
                this$0 = EditPlaceFragment.this;
                super();
                timesWaited = 0;
            }
    }

}
