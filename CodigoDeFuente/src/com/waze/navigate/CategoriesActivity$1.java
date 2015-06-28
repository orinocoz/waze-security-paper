// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import com.waze.main.navigate.Category;

// Referenced classes of package com.waze.navigate:
//            CategoriesActivity, SearchActivity

class this._cls0
    implements android.widget.ckListener
{

    final CategoriesActivity this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        Intent intent = new Intent(CategoriesActivity.this, com/waze/navigate/SearchActivity);
        intent.putExtra("SearchCategory", CategoriesActivity.access$0(CategoriesActivity.this)[i].value);
        intent.putExtra("SearchMode", 2);
        startActivityForResult(intent, 1);
    }

    istener()
    {
        this$0 = CategoriesActivity.this;
        super();
    }
}
