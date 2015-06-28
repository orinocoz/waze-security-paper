// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.tokenautocomplete.FilteredArrayAdapter;
import com.waze.autocomplete.ContactsCompletionView;
import com.waze.ifs.ui.ActivityBase;
import com.waze.user.PersonBase;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.waze.navigate.social:
//            EditFriendsActivity, AddFriendsUtils, MyFriendsActivity

private final class _numToRemove extends FilteredArrayAdapter
{

    ActivityBase _ab;
    int _numToRemove;
    final EditFriendsActivity this$0;

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        final PersonBase p = (PersonBase)getItem(i);
        boolean flag;
        View view1;
        if (EditFriendsActivity.access$2(EditFriendsActivity.this).indexOf(p) >= _numToRemove)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (view == null)
        {
            view1 = ((LayoutInflater)_ab.getSystemService("layout_inflater")).inflate(0x7f030008, null);
        } else
        {
            view1 = view;
        }
        view1.setTag(p);
        AddFriendsUtils.setNameAndImage(_ab, view1, p.getName(), p.getImage());
        if (flag)
        {
            view1.findViewById(0x7f090089).setVisibility(8);
            view1.findViewById(0x7f09008a).setVisibility(0);
        } else
        {
            view1.findViewById(0x7f09008a).setVisibility(8);
            view1.findViewById(0x7f090089).setVisibility(0);
        }
        view1.findViewById(0x7f09007f).setVisibility(4);
        if (flag)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final EditFriendsActivity.PersonFilteredArrayAdapter this$1;
                private final PersonBase val$p;

                public void onClick(View view2)
                {
                    EditFriendsActivity.access$0(this$0, p);
                    EditFriendsActivity.access$3(this$0).setText("");
                }

            
            {
                this$1 = EditFriendsActivity.PersonFilteredArrayAdapter.this;
                p = personbase;
                super();
            }
            });
            return view1;
        } else
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final EditFriendsActivity.PersonFilteredArrayAdapter this$1;
                private final PersonBase val$p;

                public void onClick(View view2)
                {
                    EditFriendsActivity.access$1(this$0, p);
                    EditFriendsActivity.access$3(this$0).setText("");
                }

            
            {
                this$1 = EditFriendsActivity.PersonFilteredArrayAdapter.this;
                p = personbase;
                super();
            }
            });
            return view1;
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


    public _cls2.val.p(ActivityBase activitybase, List list, int i)
    {
        this$0 = EditFriendsActivity.this;
        super(activitybase, 0, list);
        _ab = activitybase;
        _numToRemove = i;
    }
}
