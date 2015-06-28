// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.graphics.drawable.Drawable;
import android.view.ViewParent;
import android.widget.HorizontalScrollView;
import android.widget.ImageButton;
import android.widget.ScrollView;

public class SearchButton
{

    private ImageButton button;
    private Drawable drawableIdle;
    private Drawable drawableSelected;

    SearchButton(ImageButton imagebutton, Drawable drawable, Drawable drawable1)
    {
        button = imagebutton;
        drawableSelected = drawable;
        drawableIdle = drawable1;
        idleButton();
    }

    public int getButtonXPosition()
    {
        return (button.getLeft() + button.getRight()) / 2;
    }

    public int getButtonYPosition()
    {
        return (button.getTop() + button.getBottom()) / 2;
    }

    public void idleButton()
    {
        button.setImageDrawable(drawableIdle);
    }

    public void selectButton()
    {
        button.setImageDrawable(drawableSelected);
        if (button == null || button.getParent() == null || button.getParent().getParent() == null)
        {
            return;
        }
        if (button.getParent().getParent() instanceof HorizontalScrollView)
        {
            HorizontalScrollView horizontalscrollview = (HorizontalScrollView)button.getParent().getParent();
            horizontalscrollview.smoothScrollTo(getButtonXPosition() - horizontalscrollview.getWidth() / 2, 0);
            return;
        } else
        {
            ScrollView scrollview = (ScrollView)button.getParent().getParent();
            scrollview.smoothScrollTo(0, getButtonYPosition() - scrollview.getHeight() / 2);
            return;
        }
    }
}
