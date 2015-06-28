// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnticipateOvershootInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.tokenautocomplete.FilteredArrayAdapter;
import com.waze.NativeManager;
import com.waze.ResManager;
import com.waze.analytics.Analytics;
import com.waze.autocomplete.ContactsCompletionView;
import com.waze.autocomplete.Person;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.mywaze.social.FacebookActivity;
import com.waze.navigate.DriveToNativeManager;
import com.waze.phone.AddressBook;
import com.waze.share.ShareUtility;
import com.waze.share.UserDetailsActivity;
import com.waze.social.AddFriendDialog;
import com.waze.strings.DisplayStrings;
import com.waze.user.FriendUserData;
import com.waze.user.PersonBase;
import com.waze.utils.ImageRepository;
import com.waze.view.title.TitleButtonBar;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.waze.navigate.social:
//            EndDriveData, AddFriendsData, FriendsListData, AddFriendsUtils, 
//            AddFriendsActivity, ShareHelpActivity, AddFromActivity

public class MyFriendsActivity extends ActivityBase
    implements com.waze.mywaze.MyWazeNativeManager.IFriendsChanged
{
    private static final class FriendUserDataFilteredArrayAdapter extends FilteredArrayAdapter
    {

        ActivityBase ab;

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            if (view == null)
            {
                view = ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f03009f, viewgroup, false);
            }
            Object obj = getItem(i);
            PersonBase personbase = (PersonBase)obj;
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
                    view.findViewById(0x7f09008a).setOnClickListener(personbase. new android.view.View.OnClickListener() {

                        final FriendUserDataFilteredArrayAdapter this$1;
                        private final FriendUserData val$fud;
                        private final PersonBase val$pr;

                        public void onClick(View view)
                        {
                            int ai[] = new int[1];
                            ai[0] = fud.getID();
                            String s = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PS_ADDED);
                            Object aobj[] = new Object[1];
                            aobj[0] = pr.getName();
                            String s1 = String.format(s, aobj);
                            MyWazeNativeManager.getInstance().sendSocialAddFriends(ai, s1);
                        }

            
            {
                this$1 = final_frienduserdatafilteredarrayadapter;
                fud = frienduserdata;
                pr = PersonBase.this;
                super();
            }
                    });
                }
            } else
            {
                view.findViewById(0x7f09008a).setVisibility(0);
                view.findViewById(0x7f09008a).setOnClickListener(personbase. new android.view.View.OnClickListener() {

                    final FriendUserDataFilteredArrayAdapter this$1;
                    private final PersonBase val$pr;

                    public void onClick(View view)
                    {
                        int ai[] = new int[1];
                        ai[0] = pr.getID();
                        String as[] = new String[1];
                        as[0] = pr.getPhone();
                        if (pr.getIsOnWaze())
                        {
                            String s2 = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PS_ADDED);
                            Object aobj1[] = new Object[1];
                            aobj1[0] = pr.getName();
                            String s3 = String.format(s2, aobj1);
                            MyWazeNativeManager.getInstance().sendSocialAddFriends(ai, s3);
                            return;
                        } else
                        {
                            String s = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PS_INVITED);
                            Object aobj[] = new Object[1];
                            aobj[0] = pr.getName();
                            String s1 = String.format(s, aobj);
                            MyWazeNativeManager.getInstance().sendSocialInviteFriends(ai, as, s1);
                            return;
                        }
                    }

            
            {
                this$1 = final_frienduserdatafilteredarrayadapter;
                pr = PersonBase.this;
                super();
            }
                });
                if (!((PersonBase)obj).getIsOnWaze())
                {
                    if (personbase.getPhone() != null && personbase.getPhone().length() > 0)
                    {
                        TextView textview = (TextView)view.findViewById(0x7f0904d0);
                        String s = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_INVITE_VIA_PS);
                        Object aobj[] = new Object[1];
                        aobj[0] = personbase.getPhone();
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
            ((TextView)view.findViewById(0x7f090236)).setText(personbase.getName());
            imageview = (ImageView)view.findViewById(0x7f090235);
            imageview.setImageResource(0x7f02011b);
            ImageRepository.instance.getImage(personbase.getImage(), true, imageview, null, ab);
            view.setOnClickListener(personbase. new android.view.View.OnClickListener() {

                final FriendUserDataFilteredArrayAdapter this$1;
                private final PersonBase val$pr;

                public void onClick(View view)
                {
                    ((MyFriendsActivity)ab).userSelected(pr);
                }

            
            {
                this$1 = final_frienduserdatafilteredarrayadapter;
                pr = PersonBase.this;
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

        public FriendUserDataFilteredArrayAdapter(ActivityBase activitybase, List list)
        {
            super(activitybase, 0, list);
            ab = activitybase;
        }
    }

    private class PersonArrayAdapter extends ArrayAdapter
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
            FriendUserData frienduserdata = (FriendUserData)obj;
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
            view1.setTag(frienduserdata);
            AddFriendsUtils.setNameAndImage(MyFriendsActivity.this, view1, frienduserdata.getName(), frienduserdata.getImage());
            if (frienduserdata.statusLine == null || frienduserdata.statusLine.length() == 0)
            {
                view1.findViewById(0x7f090087).setVisibility(8);
            } else
            {
                view1.findViewById(0x7f090087).setVisibility(0);
                ((TextView)view1.findViewById(0x7f090087)).setText(frienduserdata.statusLine);
            }
            view2 = view1.findViewById(0x7f09007f);
            if (frienduserdata.isOnline)
            {
                j = 0;
            } else
            {
                j = 4;
            }
            view2.setVisibility(j);
            imageview = (ImageView)view1.findViewById(0x7f09008a);
            view3 = view1.findViewById(0x7f090089);
            if (mSuggested.get(frienduserdata.mID) != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (frienduserdata.mIsPendingMy || flag)
            {
                view1.setOnClickListener(null);
                if (mAcceptedFriendsArray.contains(frienduserdata))
                {
                    imageview.setImageResource(0x7f020171);
                    imageview.setOnClickListener(null);
                    view3.setVisibility(8);
                } else
                {
                    if (frienduserdata.mIsPendingMy)
                    {
                        view3.setVisibility(0);
                        view3.setOnClickListener(frienduserdata. new android.view.View.OnClickListener() {

                            final PersonArrayAdapter this$1;
                            private final FriendUserData val$fud;

                            public void onClick(View view)
                            {
                                int ai[] = new int[1];
                                ai[0] = fud.getID();
                                String s = nativeManager.getLanguageString(DisplayStrings.DS_PS_REMOVED);
                                Object aobj[] = new Object[1];
                                aobj[0] = fud.getName();
                                String s1 = String.format(s, aobj);
                                MyWazeNativeManager.getInstance().sendSocialRemoveFriends(ai, s1);
                            }

            
            {
                this$1 = final_personarrayadapter;
                fud = FriendUserData.this;
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
                    imageview.setOnClickListener(frienduserdata. new android.view.View.OnClickListener() {

                        final PersonArrayAdapter this$1;
                        private final FriendUserData val$fud;

                        public void onClick(View view)
                        {
                            int ai[] = new int[1];
                            ai[0] = fud.getID();
                            String s = nativeManager.getLanguageString(DisplayStrings.DS_PS_ADDED);
                            Object aobj[] = new Object[1];
                            aobj[0] = fud.getName();
                            String s1 = String.format(s, aobj);
                            if (fud.mIsPendingMy && MyFriendsActivity.mShouldAskToAddMoreFriends)
                            {
                                askToAddMoreFriends();
                                s1 = null;
                            }
                            MyWazeNativeManager.getInstance().sendSocialAddFriends(ai, s1);
                        }

            
            {
                this$1 = final_personarrayadapter;
                fud = FriendUserData.this;
                super();
            }
                    });
                }
            } else
            {
                view3.setVisibility(8);
                imageview.setVisibility(8);
            }
            view1.setOnClickListener(frienduserdata. new android.view.View.OnClickListener() {

                final PersonArrayAdapter this$1;
                private final FriendUserData val$fud;

                public void onClick(View view)
                {
                    userSelected(fud);
                }

            
            {
                this$1 = final_personarrayadapter;
                fud = FriendUserData.this;
                super();
            }
            });
            imageview1 = (ImageView)view1.findViewById(0x7f09008b);
            if (frienduserdata.mMeetingIdSharedWithMe.length() > 0)
            {
                imageview1.setVisibility(0);
                imageview1.setImageResource(0x7f020164);
                ((TextView)view1.findViewById(0x7f090087)).setText(nativeManager.getLanguageString(DisplayStrings.DS_SHARING_A_DRIVE_WITH_YOU));
                ((TextView)view1.findViewById(0x7f090087)).setTextColor(Color.rgb(255, 109, 59));
                ((TextView)view1.findViewById(0x7f090087)).invalidate();
                return view1;
            }
            if (frienduserdata.mMeetingIdSharedByMe.length() > 0)
            {
                imageview1.setVisibility(0);
                imageview1.setImageResource(0x7f020165);
                ((TextView)view1.findViewById(0x7f090087)).setText(nativeManager.getLanguageString(DisplayStrings.DS_ON_YOUR_SHARED_DRIVE));
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


        public PersonArrayAdapter(ActivityBase activitybase, ArrayList arraylist)
        {
            this$0 = MyFriendsActivity.this;
            super(activitybase, 0, arraylist);
            inflater = (LayoutInflater)activitybase.getSystemService("layout_inflater");
            activity = activitybase;
            _numTotal = arraylist.size();
            _nativeManager = NativeManager.getInstance();
        }
    }


    private static final int ADD_FRIENDS = 1001;
    public static final int MY_FRIENDS_REFRESH = 201;
    protected static final long TIMEOUT_BETWEEN_EVENTS = 100L;
    private static boolean mShouldAskToAddMoreFriends = true;
    protected EndDriveData endDriveData;
    private LayoutInflater inflater;
    private ArrayList mAcceptedFriendsArray;
    private AddFriendDialog mAddFriendDialog;
    protected AddFriendsData mAddFriendsData;
    private SparseArray mContactsByUid;
    private FriendUserDataFilteredArrayAdapter mFriendUserDataFilteredArrayAdapter;
    private ArrayList mFriendsArray;
    protected FriendsListData mFriendsListData;
    private ListView mFriendsListView;
    private SparseBooleanArray mIdsAlreadyInSharedDrive;
    private ArrayList mPersonArray;
    private PersonArrayAdapter mPersonArrayAdapter;
    private SparseArray mPreSelected;
    protected FriendsListData mSharedDriveUsers;
    private SparseArray mSuggested;
    private NativeManager nativeManager;
    private ContactsCompletionView searchBox;

    public MyFriendsActivity()
    {
        mPreSelected = new SparseArray();
        mSuggested = new SparseArray();
    }

    private void askToAddMoreFriends()
    {
        if (!mShouldAskToAddMoreFriends)
        {
            return;
        } else
        {
            mAddFriendDialog = new AddFriendDialog(this, nativeManager.getLanguageString(DisplayStrings.DS_WAZE_IS_MORE_FUN_WITH_FRIENDSE), nativeManager.getLanguageString(DisplayStrings.DS_ADD_MORE_PEOPLE), 0x7f020172, new com.waze.social.AddFriendDialog.IAddFriendDialog() {

                final MyFriendsActivity this$0;

                public void onNotNowClicked()
                {
                    MyFriendsActivity.mShouldAskToAddMoreFriends = false;
                    mAddFriendDialog.dismiss();
                    Analytics.log("ADD_FRIEND_FROM_FRIEND_REQUEST", "ACTION", "NOT_NOW");
                }

                public void onSendRequestClicked()
                {
                    mAddFriendDialog.dismiss();
                    Intent intent = new Intent(MyFriendsActivity.this, com/waze/navigate/social/AddFromActivity);
                    intent.putExtra(AddFromActivity.INTENT_FROM_WHERE, AddFromActivity.INTENT_FROM_DEFAULT);
                    startActivityForResult(intent, 1001);
                    Analytics.log("ADD_FRIEND_FROM_FRIEND_REQUEST", "ACTION", "ADD");
                }

            
            {
                this$0 = MyFriendsActivity.this;
                super();
            }
            });
            mAddFriendDialog.show();
            return;
        }
    }

    private void friendsListPopulateFriends()
    {
        if (mFriendsArray == null || mFriendsArray.isEmpty())
        {
            mFriendsListView.setVisibility(8);
            findViewById(0x7f09040d).setVisibility(0);
            ((ImageView)findViewById(0x7f09040e)).setImageDrawable(ResManager.GetSkinDrawable("moods/sad.bin"));
            ((TextView)findViewById(0x7f09040f)).setText(nativeManager.getLanguageString(DisplayStrings.DS_NO_FRIENDS_TO_WAZE_WITH));
            return;
        }
        mFriendsListView.setVisibility(0);
        findViewById(0x7f09040d).setVisibility(8);
        mPersonArrayAdapter = new PersonArrayAdapter(this, mFriendsArray);
        mFriendsListView.setAdapter(mPersonArrayAdapter);
        mPersonArrayAdapter.notifyDataSetChanged();
        if (mPersonArray != null && !mPersonArray.isEmpty())
        {
            mFriendUserDataFilteredArrayAdapter = new FriendUserDataFilteredArrayAdapter(this, mPersonArray);
        } else
        {
            mFriendUserDataFilteredArrayAdapter = new FriendUserDataFilteredArrayAdapter(this, mFriendsArray);
        }
        searchBox.setAdapter(mFriendUserDataFilteredArrayAdapter);
    }

    private void getAddressBookAndFriendsData()
    {
        AddressBook.GetPersonArrayWithMapping(new com.waze.navigate.DriveToNativeManager.PersonMappingListener() {

            final MyFriendsActivity this$0;

            public void onComplete(ArrayList arraylist)
            {
                mPersonArray = new ArrayList();
                if (mFriendsArray == null) goto _L2; else goto _L1
_L1:
                Iterator iterator1;
                mContactsByUid = new SparseArray(mFriendsArray.size());
                iterator1 = mFriendsArray.iterator();
_L6:
                if (iterator1.hasNext()) goto _L3; else goto _L2
_L2:
                if (arraylist == null) goto _L5; else goto _L4
_L4:
                Iterator iterator = arraylist.iterator();
_L7:
                if (iterator.hasNext())
                {
                    break MISSING_BLOCK_LABEL_153;
                }
_L5:
                readDone();
                return;
_L3:
                Object obj = iterator1.next();
                if (obj instanceof FriendUserData)
                {
                    FriendUserData frienduserdata = (FriendUserData)obj;
                    mPersonArray.add(frienduserdata);
                    mContactsByUid.put(frienduserdata.getID(), frienduserdata);
                }
                  goto _L6
                PersonBase personbase = (PersonBase)iterator.next();
                PersonBase personbase1 = (PersonBase)mContactsByUid.get(personbase.getID());
                if (personbase1 != null)
                {
                    if (personbase1.getImage() == null)
                    {
                        personbase1.setImage(personbase.getImage());
                    }
                    if (!personbase1.getIsOnWaze() && personbase.getIsOnWaze())
                    {
                        personbase1.setIsOnWaze(true);
                    }
                } else
                {
                    mPersonArray.add(personbase);
                }
                  goto _L7
            }

            
            {
                this$0 = MyFriendsActivity.this;
                super();
            }
        });
    }

    public static boolean nameContains(PersonBase personbase, String s)
    {
        String s1;
        String s2;
        s1 = s.toLowerCase();
        s2 = personbase.getName().toLowerCase();
        if (!s2.startsWith(s1)) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        int i = s2.indexOf(' ');
        do
        {
            if (i < 0)
            {
                return false;
            }
            s2 = s2.substring(i + 1);
            if (s2.startsWith(s1))
            {
                continue;
            }
            i = s2.indexOf(' ');
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
    }

    private void readDone()
    {
        if (mPersonArray != null && !mPersonArray.isEmpty())
        {
            friendsListPopulateFriends();
        }
    }

    private void readFriendListData()
    {
        DriveToNativeManager.getInstance().getFriendsListData(new com.waze.navigate.DriveToNativeManager.FriendsListListener() {

            final MyFriendsActivity this$0;

            public void onComplete(FriendsListData friendslistdata)
            {
                FriendsListData friendslistdata1;
                int i;
                mFriendsListData = friendslistdata;
                friendslistdata1 = mFriendsListData;
                i = 0;
                if (friendslistdata1 == null) goto _L2; else goto _L1
_L1:
                int i1;
                i1 = mFriendsListData.friends.length;
                i = 0;
                if (i1 <= 0) goto _L2; else goto _L3
_L3:
                boolean flag;
                boolean flag1;
                int j1;
                FriendUserData afrienduserdata1[];
                int k1;
                int l1;
                Arrays.sort(mFriendsListData.friends, new Comparator() {

                    final _cls5 this$1;

                    public int compare(FriendUserData frienduserdata, FriendUserData frienduserdata1)
                    {
                        if (frienduserdata.mIsPendingFriend || !frienduserdata1.mIsPendingFriend)
                        {
                            if (frienduserdata.mIsPendingFriend && !frienduserdata1.mIsPendingFriend)
                            {
                                return 1;
                            }
                            if (!frienduserdata.isOnline && frienduserdata1.isOnline)
                            {
                                return 1;
                            }
                            if (!frienduserdata.isOnline || frienduserdata1.isOnline)
                            {
                                if (frienduserdata.mStatusTimeInSeconds == 0 && frienduserdata1.mStatusTimeInSeconds == 0)
                                {
                                    return 0;
                                }
                                if (frienduserdata.mStatusTimeInSeconds == 0)
                                {
                                    return 1;
                                }
                                if (frienduserdata1.mStatusTimeInSeconds != 0 && frienduserdata.mStatusTimeInSeconds >= frienduserdata1.mStatusTimeInSeconds)
                                {
                                    return frienduserdata.mStatusTimeInSeconds <= frienduserdata1.mStatusTimeInSeconds ? 0 : 1;
                                }
                            }
                        }
                        return -1;
                    }

                    public volatile int compare(Object obj, Object obj1)
                    {
                        return compare((FriendUserData)obj, (FriendUserData)obj1);
                    }

            
            {
                this$1 = _cls5.this;
                super();
            }
                });
                flag = false;
                flag1 = true;
                j1 = -1;
                afrienduserdata1 = mFriendsListData.friends;
                k1 = afrienduserdata1.length;
                l1 = 0;
_L9:
                if (l1 < k1) goto _L5; else goto _L4
_L4:
                if (j1 >= 0)
                {
                    ArrayList arraylist2 = mFriendsArray;
                    String s2 = nativeManager.getLanguageString(DisplayStrings.DS_ALL_FRIENDS_PD);
                    Object aobj2[] = new Object[1];
                    aobj2[0] = Integer.valueOf(i);
                    arraylist2.set(j1, String.format(s2, aobj2));
                }
_L2:
                if (i >= nativeManager.getNumberOfFriendsToStopShowingFriendSuggestions() || mAddFriendsData == null) goto _L7; else goto _L6
_L6:
                int j = mAddFriendsData.SuggestionFriends.length;
                if (j <= 0) goto _L7; else goto _L8
_L8:
                FriendUserData afrienduserdata[];
                int k;
                int l;
                ArrayList arraylist = mFriendsArray;
                String s = nativeManager.getLanguageString(DisplayStrings.DS_WAZERS_YOU_MAY_KNOW_PD);
                Object aobj[] = new Object[1];
                aobj[0] = Integer.valueOf(j);
                arraylist.add(String.format(s, aobj));
                afrienduserdata = mAddFriendsData.SuggestionFriends;
                k = afrienduserdata.length;
                l = 0;
_L10:
                if (l < k)
                {
                    break MISSING_BLOCK_LABEL_492;
                }
_L7:
                getAddressBookAndFriendsData();
                return;
_L5:
                FriendUserData frienduserdata1 = afrienduserdata1[l1];
                if (!mIdsAlreadyInSharedDrive.get(frienduserdata1.getID()))
                {
                    if (frienduserdata1.mIsPendingFriend)
                    {
                        if (!flag)
                        {
                            mFriendsArray.add(nativeManager.getLanguageString(DisplayStrings.DS_PENDING_FRIENDS_APPROVAL));
                            flag = true;
                        }
                    } else
                    {
                        if (flag1)
                        {
                            j1 = mFriendsArray.size();
                            ArrayList arraylist1 = mFriendsArray;
                            String s1 = nativeManager.getLanguageString(DisplayStrings.DS_ALL_FRIENDS_PD);
                            Object aobj1[] = new Object[1];
                            aobj1[0] = Integer.valueOf(0);
                            arraylist1.add(String.format(s1, aobj1));
                            flag1 = false;
                        }
                        i++;
                    }
                    if (frienduserdata1.mContactID != -1)
                    {
                        Person person = AddressBook.GetPersonFromID(frienduserdata1.mContactID);
                        if (person != null && person.getImage() != null)
                        {
                            frienduserdata1.setImage(person.getImage());
                        }
                    }
                    mFriendsArray.add(frienduserdata1);
                }
                l1++;
                  goto _L9
                FriendUserData frienduserdata = afrienduserdata[l];
                mFriendsArray.add(frienduserdata);
                mSuggested.put(frienduserdata.mID, frienduserdata);
                l++;
                  goto _L10
            }

            
            {
                this$0 = MyFriendsActivity.this;
                super();
            }
        });
    }

    private void readFriendSuggestions()
    {
        DriveToNativeManager.getInstance().getAddFriendsData(new com.waze.navigate.DriveToNativeManager.AddFriendsListener() {

            final MyFriendsActivity this$0;

            public void onComplete(AddFriendsData addfriendsdata)
            {
                mAddFriendsData = addfriendsdata;
                if (mAddFriendsData.WaitingForApprovalFriends.length <= 0) goto _L2; else goto _L1
_L1:
                FriendUserData afrienduserdata[];
                int i;
                int j;
                mFriendsArray.add(nativeManager.getLanguageString(DisplayStrings.DS_WAITING_FOR_MY_APPROVAL));
                afrienduserdata = mAddFriendsData.WaitingForApprovalFriends;
                i = afrienduserdata.length;
                j = 0;
_L5:
                if (j < i) goto _L3; else goto _L2
_L2:
                readSharedDriveUsers();
                return;
_L3:
                FriendUserData frienduserdata = afrienduserdata[j];
                mFriendsArray.add(frienduserdata);
                j++;
                if (true) goto _L5; else goto _L4
_L4:
            }

            
            {
                this$0 = MyFriendsActivity.this;
                super();
            }
        });
    }

    private void readSharedDriveUsers()
    {
        DriveToNativeManager.getInstance().getUsersWithDriveSharing(true, true, false, new com.waze.navigate.DriveToNativeManager.FriendsListListener() {

            final MyFriendsActivity this$0;

            public void onComplete(FriendsListData friendslistdata)
            {
                int i;
                i = 0;
                mSharedDriveUsers = friendslistdata;
                mIdsAlreadyInSharedDrive = new SparseBooleanArray();
                if (friendslistdata == null || friendslistdata.friends == null || friendslistdata.friends.length <= 0) goto _L2; else goto _L1
_L1:
                FriendUserData afrienduserdata[];
                int j;
                ArrayList arraylist = mFriendsArray;
                String s = nativeManager.getLanguageString(DisplayStrings.DS_NOW_SHARING_PD);
                Object aobj[] = new Object[1];
                aobj[0] = Integer.valueOf(friendslistdata.friends.length);
                arraylist.add(String.format(s, aobj));
                afrienduserdata = friendslistdata.friends;
                j = afrienduserdata.length;
_L5:
                if (i < j) goto _L3; else goto _L2
_L2:
                readFriendListData();
                return;
_L3:
                FriendUserData frienduserdata = afrienduserdata[i];
                mIdsAlreadyInSharedDrive.put(frienduserdata.getID(), true);
                if (frienduserdata.mContactID != -1)
                {
                    Person person = AddressBook.GetPersonFromID(frienduserdata.mContactID);
                    if (person != null && person.getImage() != null)
                    {
                        frienduserdata.setImage(person.getImage());
                    }
                }
                mFriendsArray.add(frienduserdata);
                i++;
                if (true) goto _L5; else goto _L4
_L4:
            }

            
            {
                this$0 = MyFriendsActivity.this;
                super();
            }
        });
    }

    private void setupPromoBox()
    {
        final View promoLayout = findViewById(0x7f0902ea);
        if (nativeManager.wasFriendsListBannerDismissed())
        {
            View view1 = findViewById(0x7f09040b);
            android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)view1.getLayoutParams();
            layoutparams.addRule(3, 0x7f090409);
            view1.setLayoutParams(layoutparams);
            promoLayout.setVisibility(8);
            return;
        } else
        {
            View view = promoLayout.findViewById(0x7f09040a);
            ((TextView)promoLayout.findViewById(0x7f0902ec)).setText(nativeManager.getLanguageString(DisplayStrings.DS_TRY_DRIVE_SHARING));
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final MyFriendsActivity this$0;
                private final View val$promoLayout;

                public void onClick(View view2)
                {
                    nativeManager.setFriendsListBannerDismissed();
                    AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
                    alphaanimation.setDuration(400L);
                    alphaanimation.setFillAfter(true);
                    promoLayout.startAnimation(alphaanimation);
                    int i = searchBox.getTop();
                    View view3 = findViewById(0x7f09040b);
                    android.widget.RelativeLayout.LayoutParams layoutparams1 = (android.widget.RelativeLayout.LayoutParams)view3.getLayoutParams();
                    layoutparams1.addRule(3, 0x7f090409);
                    view3.setLayoutParams(layoutparams1);
                    view3.requestLayout();
                    findViewById(0x7f090409).bringToFront();
                    view3.getViewTreeObserver().addOnGlobalLayoutListener(i. new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

                        final _cls9 this$1;
                        private final int val$oldTop;

                        public void onGlobalLayout()
                        {
                            View view = findViewById(0x7f09040b);
                            view.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                            int i = view.getTop();
                            View view1 = findViewById(0x7f09040c);
                            View view2 = findViewById(0x7f09040d);
                            TranslateAnimation translateanimation = new TranslateAnimation(0.0F, 0.0F, oldTop - i, 0.0F);
                            translateanimation.setDuration(500L);
                            translateanimation.setInterpolator(new AnticipateOvershootInterpolator());
                            view.startAnimation(translateanimation);
                            view1.startAnimation(translateanimation);
                            view2.startAnimation(translateanimation);
                        }

            
            {
                this$1 = final__pcls9;
                oldTop = I.this;
                super();
            }
                    });
                }


            
            {
                this$0 = MyFriendsActivity.this;
                promoLayout = view;
                super();
            }
            });
            promoLayout.setOnClickListener(new android.view.View.OnClickListener() {

                final MyFriendsActivity this$0;

                public void onClick(View view2)
                {
                    Analytics.log("FRIENDS_SHARE_BANNER_CLICK");
                    if (nativeManager.isNavigatingNTV())
                    {
                        ShareUtility.OpenShareActivity(com.waze.share.ShareUtility.ShareType.ShareType_ShareDrive, null, null, null);
                        return;
                    } else
                    {
                        Intent intent = new Intent(MyFriendsActivity.this, com/waze/navigate/social/ShareHelpActivity);
                        startActivityForResult(intent, 1);
                        return;
                    }
                }

            
            {
                this$0 = MyFriendsActivity.this;
                super();
            }
            });
            return;
        }
    }

    private void userSelected(PersonBase personbase)
    {
        Intent intent = new Intent(this, com/waze/share/UserDetailsActivity);
        intent.putExtra("FriendUserData", personbase);
        startActivityForResult(intent, 0);
    }

    protected void facebookPrivacyClicked()
    {
        MyWazeNativeManager.getInstance().getFacebookSettings(new com.waze.mywaze.MyWazeNativeManager.FacebookCallback() {

            final MyFriendsActivity this$0;

            public void onFacebookSettings(com.waze.mywaze.MyWazeNativeManager.FacebookSettings facebooksettings)
            {
                Intent intent = new Intent(MyFriendsActivity.this, com/waze/mywaze/social/FacebookActivity);
                intent.putExtra("com.waze.mywaze.facebooksettings", facebooksettings);
                startActivityForResult(intent, 0);
            }

            
            {
                this$0 = MyFriendsActivity.this;
                super();
            }
        });
    }

    public void getFriendsList()
    {
        if (mPersonArrayAdapter != null)
        {
            mPersonArrayAdapter.notifyDataSetInvalidated();
            mPersonArrayAdapter = null;
        }
        mFriendsArray = new ArrayList();
        mAcceptedFriendsArray = new ArrayList();
        readFriendSuggestions();
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (j != -1) goto _L2; else goto _L1
_L1:
        setResult(-1);
        finish();
_L4:
        super.onActivityResult(i, j, intent);
        return;
_L2:
        if (j == 201)
        {
            getFriendsList();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        getWindow().setSoftInputMode(3);
        ImageRepository.instance.initExecutor();
        setContentView(0x7f03008b);
        Analytics.log("FRIENDS_LIST", null, null);
        nativeManager = NativeManager.getInstance();
        ((TitleButtonBar)findViewById(0x7f090409)).init(this, NativeManager.getInstance().getLanguageString("FRIENDS"), 0, 0x7f02000d);
        ((TitleButtonBar)findViewById(0x7f090409)).setButtonTwoListener(new android.view.View.OnClickListener() {

            final MyFriendsActivity this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent(MyFriendsActivity.this, com/waze/navigate/social/AddFriendsActivity);
                startActivityForResult(intent, 1001);
            }

            
            {
                this$0 = MyFriendsActivity.this;
                super();
            }
        });
        inflater = (LayoutInflater)getSystemService("layout_inflater");
        mFriendsListView = (ListView)findViewById(0x7f09040c);
        setupPromoBox();
        searchBox = (ContactsCompletionView)findViewById(0x7f09040b);
        searchBox.setHint(nativeManager.getLanguageString(DisplayStrings.DS_SEARCH_FRIENDS));
        searchBox.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final MyFriendsActivity this$0;

            public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
            {
                if (searchBox.enoughToFilter() && mFriendUserDataFilteredArrayAdapter != null)
                {
                    if (mFriendUserDataFilteredArrayAdapter.getCount() > 0)
                    {
                        PersonBase personbase = (PersonBase)mFriendUserDataFilteredArrayAdapter.getItem(0);
                        userSelected(personbase);
                    } else
                    {
                        searchBox.setText("");
                    }
                }
                return true;
            }

            
            {
                this$0 = MyFriendsActivity.this;
                super();
            }
        });
        searchBox.setIGetViewForObject(new com.waze.autocomplete.ContactsCompletionView.IGetViewForObject() {

            final MyFriendsActivity this$0;

            public View getViewForObject(Object obj)
            {
                FriendUserData frienduserdata = (FriendUserData)obj;
                LinearLayout linearlayout = (LinearLayout)inflater.inflate(0x7f030043, (ViewGroup)searchBox.getParent(), false);
                ((TextView)linearlayout.findViewById(0x7f090236)).setText(frienduserdata.name);
                ImageView imageview = (ImageView)linearlayout.findViewById(0x7f090235);
                imageview.setImageResource(0x7f02011b);
                ImageRepository.instance.getImage(frienduserdata.pictureUrl, true, imageview, null, MyFriendsActivity.this);
                linearlayout.findViewById(0x7f090234).setPadding(0, 0, 0, 0);
                return linearlayout;
            }

            
            {
                this$0 = MyFriendsActivity.this;
                super();
            }
        });
        getFriendsList();
        MyWazeNativeManager.getInstance().addFriendsChangedListener(this);
    }

    protected void onDestroy()
    {
        MyWazeNativeManager.getInstance().removeFriendsChangedListener(this);
        ImageRepository.instance.endExecutor();
        super.onDestroy();
    }

    public void onFriendsChanged()
    {
        getFriendsList();
    }

    protected void onPause()
    {
        super.onPause();
        searchBox.setText("");
    }

    protected void onResume()
    {
        super.onResume();
        mFriendsListView.invalidateViews();
    }























}
