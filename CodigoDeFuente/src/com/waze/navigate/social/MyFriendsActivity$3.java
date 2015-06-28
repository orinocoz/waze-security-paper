// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.waze.autocomplete.ContactsCompletionView;
import com.waze.user.FriendUserData;
import com.waze.utils.ImageRepository;

// Referenced classes of package com.waze.navigate.social:
//            MyFriendsActivity

class this._cls0
    implements com.waze.autocomplete.ew.IGetViewForObject
{

    final MyFriendsActivity this$0;

    public View getViewForObject(Object obj)
    {
        FriendUserData frienduserdata = (FriendUserData)obj;
        LinearLayout linearlayout = (LinearLayout)MyFriendsActivity.access$8(MyFriendsActivity.this).inflate(0x7f030043, (ViewGroup)MyFriendsActivity.access$6(MyFriendsActivity.this).getParent(), false);
        ((TextView)linearlayout.findViewById(0x7f090236)).setText(frienduserdata.name);
        ImageView imageview = (ImageView)linearlayout.findViewById(0x7f090235);
        imageview.setImageResource(0x7f02011b);
        ImageRepository.instance.getImage(frienduserdata.pictureUrl, true, imageview, null, MyFriendsActivity.this);
        linearlayout.findViewById(0x7f090234).setPadding(0, 0, 0, 0);
        return linearlayout;
    }

    IGetViewForObject()
    {
        this$0 = MyFriendsActivity.this;
        super();
    }
}
