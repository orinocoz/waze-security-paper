// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import com.waze.MapView;

// Referenced classes of package com.waze.reports:
//            AddPlaceNewFragment

class this._cls1
    implements com.waze.ener
{

    final is._cls0 this$1;

    public void onRender()
    {
        AddPlaceNewFragment.access$6(_fld0).setImageViewToRender(null, null);
        if (mesWaited > 3)
        {
            AddPlaceNewFragment.access$6(_fld0).setVisibility(8);
        }
    }

    mesWaited()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/reports/AddPlaceNewFragment$7

/* anonymous class */
    class AddPlaceNewFragment._cls7
        implements Runnable
    {

        final AddPlaceNewFragment this$0;
        int timesWaited;

        public void run()
        {
            timesWaited = 1 + timesWaited;
            AddPlaceNewFragment.access$6(AddPlaceNewFragment.this).setImageViewToRender(AddPlaceNewFragment.access$9(AddPlaceNewFragment.this), new AddPlaceNewFragment._cls7._cls1());
            if (timesWaited <= 3)
            {
                AddPlaceNewFragment.access$6(AddPlaceNewFragment.this).postDelayed(AddPlaceNewFragment.access$7(AddPlaceNewFragment.this), 1000 * timesWaited);
            }
        }


            
            {
                this$0 = AddPlaceNewFragment.this;
                super();
                timesWaited = 0;
            }
    }

}
