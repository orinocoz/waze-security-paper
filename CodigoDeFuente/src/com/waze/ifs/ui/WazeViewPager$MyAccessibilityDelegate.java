// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

// Referenced classes of package com.waze.ifs.ui:
//            WazeViewPager, WazePagerAdapter

class nit> extends AccessibilityDelegateCompat
{

    final WazeViewPager this$0;

    private boolean canScroll()
    {
        return WazeViewPager.access$1(WazeViewPager.this) != null && WazeViewPager.access$1(WazeViewPager.this).getCount() > 1;
    }

    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityevent)
    {
        super.onInitializeAccessibilityEvent(view, accessibilityevent);
        accessibilityevent.setClassName(com/waze/ifs/ui/WazeViewPager.getName());
        AccessibilityRecordCompat accessibilityrecordcompat = AccessibilityRecordCompat.obtain();
        accessibilityrecordcompat.setScrollable(canScroll());
        if (accessibilityevent.getEventType() == 4096 && WazeViewPager.access$1(WazeViewPager.this) != null)
        {
            accessibilityrecordcompat.setItemCount(WazeViewPager.access$1(WazeViewPager.this).getCount());
            accessibilityrecordcompat.setFromIndex(WazeViewPager.access$2(WazeViewPager.this));
            accessibilityrecordcompat.setToIndex(WazeViewPager.access$2(WazeViewPager.this));
        }
    }

    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilitynodeinfocompat)
    {
        super.onInitializeAccessibilityNodeInfo(view, accessibilitynodeinfocompat);
        accessibilitynodeinfocompat.setClassName(com/waze/ifs/ui/WazeViewPager.getName());
        accessibilitynodeinfocompat.setScrollable(canScroll());
        if (canScrollHorizontally(1))
        {
            accessibilitynodeinfocompat.addAction(4096);
        }
        if (canScrollHorizontally(-1))
        {
            accessibilitynodeinfocompat.addAction(8192);
        }
    }

    public boolean performAccessibilityAction(View view, int i, Bundle bundle)
    {
        if (super.performAccessibilityAction(view, i, bundle))
        {
            return true;
        }
        switch (i)
        {
        default:
            return false;

        case 4096: 
            if (canScrollHorizontally(1))
            {
                setCurrentItem(1 + WazeViewPager.access$2(WazeViewPager.this));
                return true;
            } else
            {
                return false;
            }

        case 8192: 
            break;
        }
        if (canScrollHorizontally(-1))
        {
            setCurrentItem(-1 + WazeViewPager.access$2(WazeViewPager.this));
            return true;
        } else
        {
            return false;
        }
    }

    eInfoCompat()
    {
        this$0 = WazeViewPager.this;
        super();
    }
}
