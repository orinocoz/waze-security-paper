// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Intent;
import android.view.View;
import com.waze.NativeManager;
import java.util.ArrayList;
import java.util.Arrays;

// Referenced classes of package com.waze.navigate:
//            SearchActivity, DriveToNativeManager, SearchEngine, SearchMapActivity

class this._cls0
    implements android.view.ner
{

    final SearchActivity this$0;

    public void onClick(View view)
    {
        if (SearchActivity.access$4(SearchActivity.this) != null)
        {
            SearchActivity.access$2(SearchActivity.this).cancelStopPointAndRemoveDeparturePoi();
            SearchActivity.access$0(SearchActivity.this).setSearchResults(new ArrayList(Arrays.asList(SearchActivity.access$4(SearchActivity.this).getResults())));
            Intent intent = new Intent(SearchActivity.this, com/waze/navigate/SearchMapActivity);
            intent.putExtra("category", SearchActivity.access$5(SearchActivity.this));
            intent.putExtra("provider", SearchActivity.access$4(SearchActivity.this).getProvider());
            startActivityForResult(intent, 32779);
        }
    }

    ()
    {
        this$0 = SearchActivity.this;
        super();
    }
}
