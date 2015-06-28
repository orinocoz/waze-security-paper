// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.main.navigate;

import android.os.Handler;
import android.widget.ImageView;
import com.waze.view.anim.AnimationUtils;
import java.util.List;

// Referenced classes of package com.waze.main.navigate:
//            NavigationResult

class this._cls0
    implements Runnable
{

    final NavigationResult this$0;

    public void run()
    {
        if (NavigationResult.access$1(NavigationResult.this) >= NavigationResult.access$2(NavigationResult.this).size())
        {
            return;
        } else
        {
            ImageView imageview = (ImageView)NavigationResult.access$2(NavigationResult.this).get(NavigationResult.access$1(NavigationResult.this));
            imageview.setVisibility(0);
            AnimationUtils.overshootCustomPopView(imageview);
            NavigationResult navigationresult = NavigationResult.this;
            NavigationResult.access$3(navigationresult, 1 + NavigationResult.access$1(navigationresult));
            NavigationResult.access$0(NavigationResult.this).postDelayed(NavigationResult.access$4(NavigationResult.this), 100L);
            return;
        }
    }

    ()
    {
        this$0 = NavigationResult.this;
        super();
    }
}
