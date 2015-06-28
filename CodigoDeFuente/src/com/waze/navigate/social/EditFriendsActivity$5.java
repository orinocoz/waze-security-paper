// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.waze.autocomplete.ContactsCompletionView;
import com.waze.user.PersonBase;
import com.waze.utils.ImageRepository;

// Referenced classes of package com.waze.navigate.social:
//            EditFriendsActivity

class this._cls0
    implements com.waze.autocomplete..IGetViewForObject
{

    final EditFriendsActivity this$0;

    public View getViewForObject(Object obj)
    {
        PersonBase personbase = (PersonBase)obj;
        LinearLayout linearlayout = (LinearLayout)((LayoutInflater)EditFriendsActivity.access$3(EditFriendsActivity.this).getContext().getSystemService("layout_inflater")).inflate(0x7f030043, (ViewGroup)EditFriendsActivity.access$3(EditFriendsActivity.this).getParent(), false);
        ((TextView)linearlayout.findViewById(0x7f090236)).setText(personbase.getName());
        ImageView imageview = (ImageView)linearlayout.findViewById(0x7f090235);
        imageview.setImageResource(0x7f02011b);
        ImageRepository.instance.getImage(personbase.getImage(), true, imageview, null, EditFriendsActivity.this);
        linearlayout.findViewById(0x7f090234).setPadding(0, 0, 0, 0);
        return linearlayout;
    }

    etViewForObject()
    {
        this$0 = EditFriendsActivity.this;
        super();
    }
}
