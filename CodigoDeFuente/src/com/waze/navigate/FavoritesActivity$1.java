// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package com.waze.navigate:
//            FavoritesActivity

class this._cls0
    implements android.widget.ickListener
{

    final FavoritesActivity this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        addressItemClicked(view);
    }

    Listener()
    {
        this$0 = FavoritesActivity.this;
        super();
    }
}
