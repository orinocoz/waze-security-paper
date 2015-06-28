// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.view.View;
import com.waze.AppService;
import com.waze.NativeManager;

// Referenced classes of package com.waze.view.popups:
//            BonusWebPopUP

class this._cls0
    implements android.view.ener
{

    final BonusWebPopUP this$0;

    public void onClick(View view)
    {
        hide();
        NativeManager.Post(new Runnable() {

            final BonusWebPopUP._cls2 this$1;

            public void run()
            {
                AppService.getNativeManager().navigateToBonusPointNTV(BonusWebPopUP.access$2(), BonusWebPopUP.access$3(), BonusWebPopUP.access$4());
            }

            
            {
                this$1 = BonusWebPopUP._cls2.this;
                super();
            }
        });
    }

    _cls1.this._cls1()
    {
        this$0 = BonusWebPopUP.this;
        super();
    }
}
