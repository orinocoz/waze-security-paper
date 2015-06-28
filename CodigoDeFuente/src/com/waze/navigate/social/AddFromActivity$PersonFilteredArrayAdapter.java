// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tokenautocomplete.FilteredArrayAdapter;
import com.waze.ifs.ui.ActivityBase;
import com.waze.user.PersonBase;
import com.waze.utils.ImageRepository;
import java.util.List;

// Referenced classes of package com.waze.navigate.social:
//            MyFriendsActivity, AddFromActivity

public static final class ab extends FilteredArrayAdapter
{

    ActivityBase ab;

    public PersonBase getItem(int i)
    {
        return (PersonBase)super.getItem(i);
    }

    public volatile Object getItem(int i)
    {
        return getItem(i);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f03009f, viewgroup, false);
        }
        PersonBase personbase = getItem(i);
        ((TextView)view.findViewById(0x7f090236)).setText(personbase.getName());
        ((TextView)view.findViewById(0x7f0904d0)).setText(personbase.getPhone());
        ImageView imageview = (ImageView)view.findViewById(0x7f090235);
        imageview.setImageResource(0x7f02011b);
        ImageRepository.instance.getImage(personbase.getImage(), true, imageview, null, ab);
        if (personbase.getIsOnWaze())
        {
            view.findViewById(0x7f0904d1).setVisibility(0);
            return view;
        } else
        {
            view.findViewById(0x7f0904d1).setVisibility(8);
            return view;
        }
    }

    protected boolean keepObject(PersonBase personbase, String s)
    {
        return MyFriendsActivity.nameContains(personbase, s);
    }

    protected volatile boolean keepObject(Object obj, String s)
    {
        return keepObject((PersonBase)obj, s);
    }

    public I(ActivityBase activitybase, List list)
    {
        super(activitybase, 0, list);
        ab = activitybase;
    }
}
