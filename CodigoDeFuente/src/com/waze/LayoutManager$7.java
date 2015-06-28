// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Intent;
import android.view.View;
import com.waze.ifs.ui.ActivityBase;
import com.waze.navigate.social.MyFriendsActivity;

// Referenced classes of package com.waze:
//            LayoutManager, TooltipType

class this._cls0
    implements android.view.ener
{

    final LayoutManager this$0;

    public void onClick(View view)
    {
        LayoutManager.access$3(LayoutManager.this, LayoutManager.access$2(LayoutManager.this), TooltipType.FRIENDS);
        Intent intent = new Intent(LayoutManager.access$1(LayoutManager.this), com/waze/navigate/social/MyFriendsActivity);
        intent.putExtra("type", 0);
        LayoutManager.access$1(LayoutManager.this).startActivity(intent);
    }

    ase()
    {
        this$0 = LayoutManager.this;
        super();
    }
}
