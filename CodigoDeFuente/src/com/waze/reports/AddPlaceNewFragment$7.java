// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import com.waze.MapView;

// Referenced classes of package com.waze.reports:
//            AddPlaceNewFragment

class timesWaited
    implements Runnable
{

    final AddPlaceNewFragment this$0;
    int timesWaited;

    public void run()
    {
        timesWaited = 1 + timesWaited;
        AddPlaceNewFragment.access$6(AddPlaceNewFragment.this).setImageViewToRender(AddPlaceNewFragment.access$9(AddPlaceNewFragment.this), new com.waze.OGLRenderer.OnRenderListener() {

            final AddPlaceNewFragment._cls7 this$1;

            public void onRender()
            {
                AddPlaceNewFragment.access$6(this$0).setImageViewToRender(null, null);
                if (timesWaited > 3)
                {
                    AddPlaceNewFragment.access$6(this$0).setVisibility(8);
                }
            }

            
            {
                this$1 = AddPlaceNewFragment._cls7.this;
                super();
            }
        });
        if (timesWaited <= 3)
        {
            AddPlaceNewFragment.access$6(AddPlaceNewFragment.this).postDelayed(AddPlaceNewFragment.access$7(AddPlaceNewFragment.this), 1000 * timesWaited);
        }
    }


    _cls1.this._cls1()
    {
        this$0 = AddPlaceNewFragment.this;
        super();
        timesWaited = 0;
    }
}
