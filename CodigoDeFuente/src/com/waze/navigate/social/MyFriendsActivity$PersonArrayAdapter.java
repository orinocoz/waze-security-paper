// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Typeface;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.user.FriendUserData;
import com.waze.user.PersonBase;
import java.util.ArrayList;

// Referenced classes of package com.waze.navigate.social:
//            AddFriendsUtils, MyFriendsActivity

private class _nativeManager extends ArrayAdapter
{

    private NativeManager _nativeManager;
    private int _numTotal;
    private ActivityBase activity;
    private LayoutInflater inflater;
    final MyFriendsActivity this$0;

    private View makeFooter(String s)
    {
        TextView textview = new TextView(activity);
        textview.setTextAppearance(activity, 0x7f060049);
        textview.setText(s);
        textview.setBackgroundColor(activity.getResources().getColor(0x7f080043));
        textview.setTextSize(2, 14F);
        textview.setTypeface(Typeface.DEFAULT, 0);
        float f = activity.getResources().getDisplayMetrics().density;
        int i = (int)(15F * f);
        int j = (int)(5F * f);
        textview.setPadding(i, j, i, j);
        return textview;
    }

    private View makeHeader(String s)
    {
        TextView textview = new TextView(activity);
        textview.setText(s);
        textview.setBackgroundColor(Color.rgb(214, 232, 237));
        textview.setTextColor(Color.rgb(96, 114, 122));
        textview.setTextSize(2, 18F);
        float f = activity.getResources().getDisplayMetrics().density;
        int i = (int)(15F * f);
        int j = (int)(5F * f);
        textview.setPadding(i, j, i, j);
        return textview;
    }

    public int getCount()
    {
        return 1 + super.getCount();
    }

    public int getItemViewType(int i)
    {
        return i >= _numTotal || !(getItem(i) instanceof PersonBase) ? -1 : 0;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (i == _numTotal)
        {
            return makeFooter(_nativeManager.getLanguageString(DisplayStrings.DS_FRIENDS_SEE_EACH_OTHER));
        }
        Object obj = getItem(i);
        if (obj instanceof String)
        {
            return makeHeader((String)obj);
        }
        final FriendUserData fud = (FriendUserData)obj;
        View view1;
        View view2;
        int j;
        ImageView imageview;
        View view3;
        boolean flag;
        ImageView imageview1;
        if (view == null || isHeader(view))
        {
            view1 = inflater.inflate(0x7f030008, null);
        } else
        {
            view1 = view;
        }
        view1.setTag(fud);
        AddFriendsUtils.setNameAndImage(MyFriendsActivity.this, view1, fud.getName(), fud.getImage());
        if (fud.statusLine == null || fud.statusLine.length() == 0)
        {
            view1.findViewById(0x7f090087).setVisibility(8);
        } else
        {
            view1.findViewById(0x7f090087).setVisibility(0);
            ((TextView)view1.findViewById(0x7f090087)).setText(fud.statusLine);
        }
        view2 = view1.findViewById(0x7f09007f);
        if (fud.isOnline)
        {
            j = 0;
        } else
        {
            j = 4;
        }
        view2.setVisibility(j);
        imageview = (ImageView)view1.findViewById(0x7f09008a);
        view3 = view1.findViewById(0x7f090089);
        if (MyFriendsActivity.access$0(MyFriendsActivity.this).get(fud.mID) != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (fud.mIsPendingMy || flag)
        {
            view1.setOnClickListener(null);
            if (MyFriendsActivity.access$1(MyFriendsActivity.this).contains(fud))
            {
                imageview.setImageResource(0x7f020171);
                imageview.setOnClickListener(null);
                view3.setVisibility(8);
            } else
            {
                if (fud.mIsPendingMy)
                {
                    view3.setVisibility(0);
                    view3.setOnClickListener(new android.view.View.OnClickListener() {

                        final MyFriendsActivity.PersonArrayAdapter this$1;
                        private final FriendUserData val$fud;

                        public void onClick(View view4)
                        {
                            int ai[] = new int[1];
                            ai[0] = fud.getID();
                            String s = MyFriendsActivity.access$2(this$0).getLanguageString(DisplayStrings.DS_PS_REMOVED);
                            Object aobj[] = new Object[1];
                            aobj[0] = fud.getName();
                            String s1 = String.format(s, aobj);
                            MyWazeNativeManager.getInstance().sendSocialRemoveFriends(ai, s1);
                        }

            
            {
                this$1 = MyFriendsActivity.PersonArrayAdapter.this;
                fud = frienduserdata;
                super();
            }
                    });
                } else
                {
                    view3.setVisibility(8);
                    view3.setOnClickListener(null);
                }
                imageview.setVisibility(0);
                imageview.setImageResource(0x7f020009);
                imageview.setOnClickListener(new android.view.View.OnClickListener() {

                    final MyFriendsActivity.PersonArrayAdapter this$1;
                    private final FriendUserData val$fud;

                    public void onClick(View view4)
                    {
                        int ai[] = new int[1];
                        ai[0] = fud.getID();
                        String s = MyFriendsActivity.access$2(this$0).getLanguageString(DisplayStrings.DS_PS_ADDED);
                        Object aobj[] = new Object[1];
                        aobj[0] = fud.getName();
                        String s1 = String.format(s, aobj);
                        if (fud.mIsPendingMy && MyFriendsActivity.access$3())
                        {
                            MyFriendsActivity.access$4(this$0);
                            s1 = null;
                        }
                        MyWazeNativeManager.getInstance().sendSocialAddFriends(ai, s1);
                    }

            
            {
                this$1 = MyFriendsActivity.PersonArrayAdapter.this;
                fud = frienduserdata;
                super();
            }
                });
            }
        } else
        {
            view3.setVisibility(8);
            imageview.setVisibility(8);
        }
        view1.setOnClickListener(new android.view.View.OnClickListener() {

            final MyFriendsActivity.PersonArrayAdapter this$1;
            private final FriendUserData val$fud;

            public void onClick(View view4)
            {
                MyFriendsActivity.access$5(this$0, fud);
            }

            
            {
                this$1 = MyFriendsActivity.PersonArrayAdapter.this;
                fud = frienduserdata;
                super();
            }
        });
        imageview1 = (ImageView)view1.findViewById(0x7f09008b);
        if (fud.mMeetingIdSharedWithMe.length() > 0)
        {
            imageview1.setVisibility(0);
            imageview1.setImageResource(0x7f020164);
            ((TextView)view1.findViewById(0x7f090087)).setText(MyFriendsActivity.access$2(MyFriendsActivity.this).getLanguageString(DisplayStrings.DS_SHARING_A_DRIVE_WITH_YOU));
            ((TextView)view1.findViewById(0x7f090087)).setTextColor(Color.rgb(255, 109, 59));
            ((TextView)view1.findViewById(0x7f090087)).invalidate();
            return view1;
        }
        if (fud.mMeetingIdSharedByMe.length() > 0)
        {
            imageview1.setVisibility(0);
            imageview1.setImageResource(0x7f020165);
            ((TextView)view1.findViewById(0x7f090087)).setText(MyFriendsActivity.access$2(MyFriendsActivity.this).getLanguageString(DisplayStrings.DS_ON_YOUR_SHARED_DRIVE));
            ((TextView)view1.findViewById(0x7f090087)).setTextColor(Color.rgb(255, 109, 59));
            return view1;
        } else
        {
            ((TextView)view1.findViewById(0x7f090087)).setTextColor(Color.rgb(170, 170, 170));
            imageview1.setVisibility(8);
            return view1;
        }
    }

    boolean isHeader(View view)
    {
        return view instanceof TextView;
    }


    public _cls3.val.fud(ActivityBase activitybase, ArrayList arraylist)
    {
        this$0 = MyFriendsActivity.this;
        super(activitybase, 0, arraylist);
        inflater = (LayoutInflater)activitybase.getSystemService("layout_inflater");
        activity = activitybase;
        _numTotal = arraylist.size();
        _nativeManager = NativeManager.getInstance();
    }
}
