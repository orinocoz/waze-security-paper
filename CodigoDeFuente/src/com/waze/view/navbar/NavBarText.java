// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.navbar;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import com.waze.navbar.NavBar;

public class NavBarText extends TextView
{

    private NavBar navBar;

    public NavBarText(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
        if (navBar != null)
        {
            navBar.adjustImages();
        }
    }

    public void setNavBar(NavBar navbar)
    {
        navBar = navbar;
    }
}
