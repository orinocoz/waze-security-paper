// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.autocomplete;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import com.tokenautocomplete.TokenCompleteTextView;

// Referenced classes of package com.waze.autocomplete:
//            Person

public class ContactsCompletionView extends TokenCompleteTextView
{
    public static interface IGetViewForObject
    {

        public abstract View getViewForObject(Object obj);
    }

    public static interface IOnBackPressed
    {

        public abstract void onBackPressed();
    }


    IGetViewForObject getViewForObject;
    int maxHeightLimit;
    IOnBackPressed onBackPressed;

    public ContactsCompletionView(Context context)
    {
        super(context);
        maxHeightLimit = -1;
        allowDuplicates(false);
        setTokenClickStyle(com.tokenautocomplete.TokenCompleteTextView.TokenClickStyle.Select);
    }

    public ContactsCompletionView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        maxHeightLimit = -1;
        allowDuplicates(false);
        setTokenClickStyle(com.tokenautocomplete.TokenCompleteTextView.TokenClickStyle.Select);
    }

    public ContactsCompletionView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        maxHeightLimit = -1;
        allowDuplicates(false);
        setTokenClickStyle(com.tokenautocomplete.TokenCompleteTextView.TokenClickStyle.Select);
    }

    protected CharSequence convertSelectionToString(Object obj)
    {
        super.convertSelectionToString(obj);
        return obj.toString();
    }

    protected Object defaultObject(String s)
    {
        int i = s.indexOf('@');
        if (i == -1)
        {
            return new Person(s, (new StringBuilder(String.valueOf(s.replace(" ", "")))).append("@example.com").toString(), null);
        } else
        {
            return new Person(s.substring(0, i), s, null);
        }
    }

    protected View getViewForObject(Object obj)
    {
        if (getViewForObject == null)
        {
            return null;
        } else
        {
            return getViewForObject.getViewForObject(obj);
        }
    }

    public void onFocusChanged(boolean flag, int i, Rect rect)
    {
        super.onFocusChanged(flag, i, rect);
        if (maxHeightLimit > 0)
        {
            setMaxHeight(maxHeightLimit);
        }
    }

    public boolean onKeyPreIme(int i, KeyEvent keyevent)
    {
        if (i == 4 && keyevent.getAction() == 1 && onBackPressed != null)
        {
            onBackPressed.onBackPressed();
        }
        return super.onKeyPreIme(i, keyevent);
    }

    public void setIGetViewForObject(IGetViewForObject igetviewforobject)
    {
        getViewForObject = igetviewforobject;
    }

    public void setIOnBackPressed(IOnBackPressed ionbackpressed)
    {
        onBackPressed = ionbackpressed;
    }

    public void setMaxHeightLimit(int i)
    {
        maxHeightLimit = i;
        setMaxHeight(maxHeightLimit);
        if (getHeight() > maxHeightLimit)
        {
            setHeight(maxHeightLimit);
        }
    }
}
