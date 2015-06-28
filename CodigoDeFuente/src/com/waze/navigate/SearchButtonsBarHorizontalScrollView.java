// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.widget.HorizontalScrollView;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package com.waze.navigate:
//            SearchActivity, SearchEngine, SearchButton

public class SearchButtonsBarHorizontalScrollView extends HorizontalScrollView
{

    public SearchButtonsBarHorizontalScrollView(Context context)
    {
        super(context);
    }

    public SearchButtonsBarHorizontalScrollView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public SearchButtonsBarHorizontalScrollView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        super.onTouchEvent(motionevent);
        Log.d("WAZE", "ontouchevent");
        if (motionevent.getAction() != 1) goto _L2; else goto _L1
_L1:
        Integer integer;
        SearchEngine searchengine;
        Iterator iterator;
        Log.d("WAZE", "action up");
        integer = null;
        searchengine = null;
        iterator = ((Map)getTag(0x7f09002a)).values().iterator();
_L6:
        if (iterator.hasNext()) goto _L4; else goto _L3
_L3:
        ((SearchActivity)getTag(0x7f09002b)).setActiveEngine(searchengine);
_L2:
        return true;
_L4:
        SearchEngine searchengine1 = (SearchEngine)iterator.next();
        int i = Math.abs(searchengine1.getButton().getButtonXPosition() - getScrollX() - getWidth() / 2);
        if (integer == null || i < integer.intValue())
        {
            integer = Integer.valueOf(i);
            searchengine = searchengine1;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
