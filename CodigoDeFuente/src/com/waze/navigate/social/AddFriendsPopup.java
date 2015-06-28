// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.MainActivity;
import com.waze.NativeManager;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.navigate.DriveToNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.user.FriendUserData;
import com.waze.user.PersonBase;
import java.util.Collection;
import java.util.HashMap;

// Referenced classes of package com.waze.navigate.social:
//            AddFriendsUtils, AddFriendsData

public class AddFriendsPopup extends Dialog
{

    private AddFriendsData mAddFriendsData;
    private Context mContext;
    private LinearLayout mFriendsSuggestionLayout;
    private HashMap mFriendsToAdd;
    private NativeManager nativeManager;
    private TextView signButton;

    public AddFriendsPopup(Context context)
    {
        super(context, 0x7f06000f);
        mAddFriendsData = null;
        mContext = null;
        mFriendsToAdd = new HashMap();
        mContext = context;
        nativeManager = AppService.getNativeManager();
    }

    private void AddFriendInLayout(final FriendUserData friend)
    {
        View view = ((LayoutInflater)mContext.getSystemService("layout_inflater")).inflate(0x7f03000a, null);
        AddFriendsUtils.setNameAndImage(AppService.getMainActivity(), view, friend.getName(), friend.getImage());
        ((TextView)view.findViewById(0x7f090087)).setVisibility(8);
        view.setOnClickListener(new android.view.View.OnClickListener() {

            final AddFriendsPopup this$0;
            private final FriendUserData val$friend;

            public void onClick(View view1)
            {
                TextView textview;
                NativeManager nativemanager;
                DisplayStrings displaystrings;
                if (!((CheckBox)view1.findViewById(0x7f09008f)).isChecked())
                {
                    ((CheckBox)view1.findViewById(0x7f09008f)).setChecked(true);
                    mFriendsToAdd.put(Integer.valueOf(friend.getID()), friend);
                } else
                {
                    ((CheckBox)view1.findViewById(0x7f09008f)).setChecked(false);
                    mFriendsToAdd.remove(Integer.valueOf(friend.getID()));
                }
                textview = signButton;
                nativemanager = nativeManager;
                if (mFriendsToAdd.size() > 0)
                {
                    displaystrings = DisplayStrings.DS_ADD;
                } else
                {
                    displaystrings = DisplayStrings.DS_NEXT;
                }
                textview.setText(nativemanager.getLanguageString(displaystrings));
            }

            
            {
                this$0 = AddFriendsPopup.this;
                friend = frienduserdata;
                super();
            }
        });
        ((CheckBox)view.findViewById(0x7f09008f)).setVisibility(0);
        view.findViewById(0x7f090085).setVisibility(8);
        view.findViewById(0x7f09007f).setVisibility(4);
        view.findViewById(0x7f09008e).setVisibility(8);
        mFriendsSuggestionLayout.addView(view);
    }

    private void initLayout()
    {
        setContentView(0x7f030009);
        getWindow().setLayout(-1, -1);
        ((TextView)findViewById(0x7f090090)).setText(nativeManager.getLanguageString(DisplayStrings.DS_ADD_FRIENDS));
        ((TextView)findViewById(0x7f090099)).setText(nativeManager.getLanguageString(DisplayStrings.DS_FRIENDS_HEADING_TO_THE_SAME));
        mFriendsSuggestionLayout = (LinearLayout)findViewById(0x7f090096);
        signButton = (TextView)findViewById(0x7f09009a);
        signButton.setText(nativeManager.getLanguageString(DisplayStrings.DS_NEXT));
        signButton.setOnClickListener(new android.view.View.OnClickListener() {

            final AddFriendsPopup this$0;

            public void onClick(View view)
            {
                onContinueClicked();
            }

            
            {
                this$0 = AddFriendsPopup.this;
                super();
            }
        });
        readFriendSuggestions();
    }

    private void onContinueClicked()
    {
        if (mFriendsToAdd.size() <= 0) goto _L2; else goto _L1
_L1:
        Object aobj[];
        String as[];
        int ai[];
        int i;
        int j;
        int k;
        aobj = mFriendsToAdd.values().toArray();
        as = new String[aobj.length];
        ai = new int[aobj.length];
        i = 0;
        j = aobj.length;
        k = 0;
_L6:
        if (k < j) goto _L4; else goto _L3
_L3:
        String s = (new StringBuilder("Added ")).append(aobj.length).append(" friends.").toString();
        MyWazeNativeManager.getInstance().sendSocialAddFriends(ai, s);
_L2:
        NativeManager.getInstance().SignUplogAnalytics("ADD_FRIENDS_POPUP_CLICK", "VAUE", (new StringBuilder()).append(mFriendsToAdd.size()).toString(), true);
        close();
        return;
_L4:
        PersonBase personbase = (PersonBase)aobj[k];
        as[i] = personbase.getPhone();
        ai[i] = personbase.getID();
        i++;
        k++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void readFriendSuggestions()
    {
        DriveToNativeManager.getInstance().getAddFriendsData(new com.waze.navigate.DriveToNativeManager.AddFriendsListener() {

            final AddFriendsPopup this$0;

            public void onComplete(AddFriendsData addfriendsdata)
            {
                int i;
                i = 0;
                mAddFriendsData = addfriendsdata;
                if (mAddFriendsData != null) goto _L2; else goto _L1
_L1:
                return;
_L2:
                FriendUserData afrienduserdata[] = mAddFriendsData.SuggestionFriends;
                int j = 0;
                if (afrienduserdata != null)
                {
                    j = 0 + mAddFriendsData.SuggestionFriends.length;
                }
                if (mAddFriendsData.WaitingForApprovalFriends != null)
                {
                    j += mAddFriendsData.WaitingForApprovalFriends.length;
                }
                NativeManager.getInstance().SignUplogAnalytics("ADD_FRIENDS_POPUP_SHOWN", "VAUE", (new StringBuilder()).append(j).toString(), true);
                mFriendsSuggestionLayout.removeAllViews();
                FriendUserData afrienduserdata1[] = mAddFriendsData.SuggestionFriends;
                int k = afrienduserdata1.length;
                int l = 0;
                do
                {
label0:
                    {
                        if (l < k)
                        {
                            break label0;
                        }
                        FriendUserData afrienduserdata2[] = mAddFriendsData.WaitingForApprovalFriends;
                        int i1 = afrienduserdata2.length;
                        while (i < i1) 
                        {
                            FriendUserData frienduserdata1 = afrienduserdata2[i];
                            AddFriendInLayout(frienduserdata1);
                            i++;
                        }
                    }
                    if (true)
                    {
                        continue;
                    }
                    FriendUserData frienduserdata = afrienduserdata1[l];
                    AddFriendInLayout(frienduserdata);
                    l++;
                } while (true);
                if (true) goto _L1; else goto _L3
_L3:
            }

            
            {
                this$0 = AddFriendsPopup.this;
                super();
            }
        });
    }

    protected void close()
    {
        AppService.getMainActivity().EnableOrientation();
        NativeManager.getInstance().signup_finished();
        dismiss();
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
    }

    public void onBackPressed()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        initLayout();
    }








}
