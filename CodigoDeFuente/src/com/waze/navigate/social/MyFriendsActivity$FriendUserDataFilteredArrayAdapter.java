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
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.user.FriendUserData;
import com.waze.user.PersonBase;
import com.waze.utils.ImageRepository;
import java.util.List;

// Referenced classes of package com.waze.navigate.social:
//            MyFriendsActivity

private static final class ab extends FilteredArrayAdapter
{

    ActivityBase ab;

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f03009f, viewgroup, false);
        }
        Object obj = getItem(i);
        final PersonBase pr = (PersonBase)obj;
        if (!(obj instanceof PersonBase))
        {
            return null;
        }
        if (obj instanceof FriendUserData)
        {
            final FriendUserData fud = (FriendUserData)obj;
            ((TextView)view.findViewById(0x7f0904d0)).setText(fud.mFaceBookNickName);
            ImageView imageview;
            if (fud.mIsFriend)
            {
                view.findViewById(0x7f09008a).setVisibility(8);
            } else
            {
                view.findViewById(0x7f09008a).setVisibility(0);
                view.findViewById(0x7f09008a).setOnClickListener(new android.view.View.OnClickListener() {

                    final MyFriendsActivity.FriendUserDataFilteredArrayAdapter this$1;
                    private final FriendUserData val$fud;
                    private final PersonBase val$pr;

                    public void onClick(View view1)
                    {
                        int ai[] = new int[1];
                        ai[0] = fud.getID();
                        String s1 = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PS_ADDED);
                        Object aobj1[] = new Object[1];
                        aobj1[0] = pr.getName();
                        String s2 = String.format(s1, aobj1);
                        MyWazeNativeManager.getInstance().sendSocialAddFriends(ai, s2);
                    }

            
            {
                this$1 = MyFriendsActivity.FriendUserDataFilteredArrayAdapter.this;
                fud = frienduserdata;
                pr = personbase;
                super();
            }
                });
            }
        } else
        {
            view.findViewById(0x7f09008a).setVisibility(0);
            view.findViewById(0x7f09008a).setOnClickListener(new android.view.View.OnClickListener() {

                final MyFriendsActivity.FriendUserDataFilteredArrayAdapter this$1;
                private final PersonBase val$pr;

                public void onClick(View view1)
                {
                    int ai[] = new int[1];
                    ai[0] = pr.getID();
                    String as[] = new String[1];
                    as[0] = pr.getPhone();
                    if (pr.getIsOnWaze())
                    {
                        String s3 = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PS_ADDED);
                        Object aobj2[] = new Object[1];
                        aobj2[0] = pr.getName();
                        String s4 = String.format(s3, aobj2);
                        MyWazeNativeManager.getInstance().sendSocialAddFriends(ai, s4);
                        return;
                    } else
                    {
                        String s1 = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PS_INVITED);
                        Object aobj1[] = new Object[1];
                        aobj1[0] = pr.getName();
                        String s2 = String.format(s1, aobj1);
                        MyWazeNativeManager.getInstance().sendSocialInviteFriends(ai, as, s2);
                        return;
                    }
                }

            
            {
                this$1 = MyFriendsActivity.FriendUserDataFilteredArrayAdapter.this;
                pr = personbase;
                super();
            }
            });
            if (!((PersonBase)obj).getIsOnWaze())
            {
                if (pr.getPhone() != null && pr.getPhone().length() > 0)
                {
                    TextView textview = (TextView)view.findViewById(0x7f0904d0);
                    String s = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_INVITE_VIA_PS);
                    Object aobj[] = new Object[1];
                    aobj[0] = pr.getPhone();
                    textview.setText(String.format(s, aobj));
                } else
                {
                    ((TextView)view.findViewById(0x7f0904d0)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_NOT_ON_WAZE_SEND_INVITE));
                }
            } else
            {
                ((TextView)view.findViewById(0x7f0904d0)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ADD_AS_A_FRIEND));
            }
        }
        ((TextView)view.findViewById(0x7f090236)).setText(pr.getName());
        imageview = (ImageView)view.findViewById(0x7f090235);
        imageview.setImageResource(0x7f02011b);
        ImageRepository.instance.getImage(pr.getImage(), true, imageview, null, ab);
        view.setOnClickListener(new android.view.View.OnClickListener() {

            final MyFriendsActivity.FriendUserDataFilteredArrayAdapter this$1;
            private final PersonBase val$pr;

            public void onClick(View view1)
            {
                MyFriendsActivity.access$5((MyFriendsActivity)ab, pr);
            }

            
            {
                this$1 = MyFriendsActivity.FriendUserDataFilteredArrayAdapter.this;
                pr = personbase;
                super();
            }
        });
        return view;
    }

    protected boolean keepObject(Object obj, String s)
    {
        if (!(obj instanceof PersonBase))
        {
            return false;
        } else
        {
            return MyFriendsActivity.nameContains((PersonBase)obj, s);
        }
    }

    public _cls3.val.pr(ActivityBase activitybase, List list)
    {
        super(activitybase, 0, list);
        ab = activitybase;
    }
}
