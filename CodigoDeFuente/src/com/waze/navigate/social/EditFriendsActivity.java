// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.tokenautocomplete.FilteredArrayAdapter;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.ResManager;
import com.waze.autocomplete.ContactsCompletionView;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.mywaze.social.FacebookActivity;
import com.waze.navigate.DriveToNativeManager;
import com.waze.settings.SettingsTitleText;
import com.waze.share.SpreadTheWordActivity;
import com.waze.strings.DisplayStrings;
import com.waze.user.PersonBase;
import com.waze.utils.ImageRepository;
import com.waze.view.title.TitleBarTextButton;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.waze.navigate.social:
//            AddFriendsUtils, MyFriendsActivity, FriendsListData

public class EditFriendsActivity extends ActivityBase
    implements com.tokenautocomplete.TokenCompleteTextView.TokenListener, com.waze.mywaze.MyWazeNativeManager.IFriendsChanged
{
    private class PersonArrayAdapter extends ArrayAdapter
    {

        private ActivityBase _activity;
        private LayoutInflater _inflater;
        private int _numToAddBack;
        private int _numToRemove;
        final EditFriendsActivity this$0;

        private View makeFooter(String s)
        {
            TextView textview = new TextView(_activity);
            textview.setTextAppearance(_activity, 0x7f060049);
            textview.setText(s);
            textview.setBackgroundColor(_activity.getResources().getColor(0x7f080043));
            textview.setTextSize(2, 14F);
            textview.setTypeface(Typeface.DEFAULT, 0);
            float f = _activity.getResources().getDisplayMetrics().density;
            int i = (int)(15F * f);
            int j = (int)(5F * f);
            textview.setPadding(i, j, i, j);
            return textview;
        }

        private View makeHeader(String s)
        {
            SettingsTitleText settingstitletext = new SettingsTitleText(_activity, null);
            settingstitletext.setText(s);
            settingstitletext.setBackgroundColor(_activity.getResources().getColor(0x7f080043));
            int i = (int)(5F * _activity.getResources().getDisplayMetrics().density);
            settingstitletext.setPadding(0, i, 0, i);
            return settingstitletext;
        }

        public int getCount()
        {
            int i = super.getCount();
            if (_numToAddBack > 0)
            {
                return i + 3;
            } else
            {
                return i + 1;
            }
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            if (i == 0)
            {
                return makeFooter(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_FRIENDS_SEE_EACH_OTHER));
            }
            int j = i - 1;
            int k = _numToAddBack;
            boolean flag = false;
            if (k > 0)
            {
                if (j == _numToRemove && _numToAddBack > 0)
                {
                    return makeHeader(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_REMOVED_FRIENDS));
                }
                int l = _numToRemove;
                flag = false;
                if (j > l)
                {
                    flag = true;
                    j--;
                }
                if (j == _numToRemove + _numToAddBack)
                {
                    return makeFooter(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ADD_BACK_FRIENDS));
                }
            }
            PersonBase personbase = (PersonBase)getItem(j);
            View view1;
            if (view == null || isHeader(view))
            {
                view1 = _inflater.inflate(0x7f030008, null);
            } else
            {
                view1 = view;
            }
            view1.setTag(personbase);
            AddFriendsUtils.setNameAndImage(_activity, view1, personbase.getName(), personbase.getImage());
            if (flag)
            {
                view1.findViewById(0x7f090089).setVisibility(8);
                view1.findViewById(0x7f09008a).setVisibility(0);
                view1.findViewById(0x7f09008a).setOnClickListener(personbase. new android.view.View.OnClickListener() {

                    final PersonArrayAdapter this$1;
                    private final PersonBase val$p;

                    public void onClick(View view)
                    {
                        addFriend(p);
                    }

            
            {
                this$1 = final_personarrayadapter;
                p = PersonBase.this;
                super();
            }
                });
            } else
            {
                view1.findViewById(0x7f09008a).setVisibility(8);
                view1.findViewById(0x7f090089).setVisibility(0);
                view1.findViewById(0x7f090089).setOnClickListener(personbase. new android.view.View.OnClickListener() {

                    final PersonArrayAdapter this$1;
                    private final PersonBase val$p;

                    public void onClick(View view)
                    {
                        removeFriend(p);
                    }

            
            {
                this$1 = final_personarrayadapter;
                p = PersonBase.this;
                super();
            }
                });
            }
            view1.findViewById(0x7f09007f).setVisibility(4);
            return view1;
        }

        boolean isHeader(View view)
        {
            return (view instanceof TextView) || (view instanceof SettingsTitleText);
        }


        public PersonArrayAdapter(ActivityBase activitybase, List list, int i, int j)
        {
            this$0 = EditFriendsActivity.this;
            super(activitybase, 0, list);
            _inflater = (LayoutInflater)activitybase.getSystemService("layout_inflater");
            _activity = activitybase;
            _numToRemove = i;
            _numToAddBack = j;
        }
    }

    private final class PersonFilteredArrayAdapter extends FilteredArrayAdapter
    {

        ActivityBase _ab;
        int _numToRemove;
        final EditFriendsActivity this$0;

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            PersonBase personbase = (PersonBase)getItem(i);
            boolean flag;
            View view1;
            if (mPersonArray.indexOf(personbase) >= _numToRemove)
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
            view1.setTag(personbase);
            AddFriendsUtils.setNameAndImage(_ab, view1, personbase.getName(), personbase.getImage());
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
                view1.setOnClickListener(personbase. new android.view.View.OnClickListener() {

                    final PersonFilteredArrayAdapter this$1;
                    private final PersonBase val$p;

                    public void onClick(View view)
                    {
                        addFriend(p);
                        mCompletionView.setText("");
                    }

            
            {
                this$1 = final_personfilteredarrayadapter;
                p = PersonBase.this;
                super();
            }
                });
                return view1;
            } else
            {
                view1.setOnClickListener(personbase. new android.view.View.OnClickListener() {

                    final PersonFilteredArrayAdapter this$1;
                    private final PersonBase val$p;

                    public void onClick(View view)
                    {
                        removeFriend(p);
                        mCompletionView.setText("");
                    }

            
            {
                this$1 = final_personfilteredarrayadapter;
                p = PersonBase.this;
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


        public PersonFilteredArrayAdapter(ActivityBase activitybase, List list, int i)
        {
            this$0 = EditFriendsActivity.this;
            super(activitybase, 0, list);
            _ab = activitybase;
            _numToRemove = i;
        }
    }


    private ContactsCompletionView mCompletionView;
    private ListView mFriendsListView;
    private int mNumCurrent;
    private int mNumRemoved;
    private ArrayList mPersonArray;
    private PersonArrayAdapter mPersonArrayAdapter;
    private PersonFilteredArrayAdapter mPersonFilteredArrayAdapter;
    private PersonBase mPersonToAdd;
    private PersonBase mPersonToRemove;

    public EditFriendsActivity()
    {
        mNumCurrent = 0;
        mNumRemoved = 0;
        mPersonToRemove = null;
        mPersonToAdd = null;
    }

    private void addFriend(PersonBase personbase)
    {
        mPersonToAdd = personbase;
        int ai[] = new int[1];
        ai[0] = personbase.getID();
        String s = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PS_ADDED);
        Object aobj[] = new Object[1];
        aobj[0] = personbase.getName();
        String s1 = String.format(s, aobj);
        MyWazeNativeManager.getInstance().sendSocialAddFriends(ai, s1);
    }

    private void finishedReading()
    {
        if (mPersonArray.isEmpty())
        {
            NativeManager nativemanager = NativeManager.getInstance();
            ((ImageView)findViewById(0x7f09009e)).setImageDrawable(ResManager.GetSkinDrawable("moods/sad.bin"));
            findViewById(0x7f09009d).setVisibility(0);
            ((TextView)findViewById(0x7f09009f)).setText(nativemanager.getLanguageString(DisplayStrings.DS_NO_FRIENDS_TO_WAZE_WITH));
            return;
        } else
        {
            findViewById(0x7f09009d).setVisibility(8);
            friendsListPopulateFriends();
            return;
        }
    }

    private void friendsListPopulateFriends()
    {
        if (mPersonArray == null)
        {
            return;
        }
        if (mPersonArrayAdapter != null)
        {
            mPersonArrayAdapter.notifyDataSetInvalidated();
        }
        mPersonArrayAdapter = new PersonArrayAdapter(this, mPersonArray, mNumCurrent, mNumRemoved);
        mFriendsListView.setAdapter(mPersonArrayAdapter);
        mPersonArrayAdapter.notifyDataSetChanged();
        if (mPersonFilteredArrayAdapter != null)
        {
            mPersonFilteredArrayAdapter.notifyDataSetInvalidated();
        }
        mPersonFilteredArrayAdapter = new PersonFilteredArrayAdapter(this, mPersonArray, mNumCurrent);
        mCompletionView.setAdapter(mPersonFilteredArrayAdapter);
        mPersonFilteredArrayAdapter.notifyDataSetChanged();
        mCompletionView.setTokenListener(this);
        mCompletionView.setIGetViewForObject(new com.waze.autocomplete.ContactsCompletionView.IGetViewForObject() {

            final EditFriendsActivity this$0;

            public View getViewForObject(Object obj)
            {
                PersonBase personbase = (PersonBase)obj;
                LinearLayout linearlayout = (LinearLayout)((LayoutInflater)mCompletionView.getContext().getSystemService("layout_inflater")).inflate(0x7f030043, (ViewGroup)mCompletionView.getParent(), false);
                ((TextView)linearlayout.findViewById(0x7f090236)).setText(personbase.getName());
                ImageView imageview = (ImageView)linearlayout.findViewById(0x7f090235);
                imageview.setImageResource(0x7f02011b);
                ImageRepository.instance.getImage(personbase.getImage(), true, imageview, null, EditFriendsActivity.this);
                linearlayout.findViewById(0x7f090234).setPadding(0, 0, 0, 0);
                return linearlayout;
            }

            
            {
                this$0 = EditFriendsActivity.this;
                super();
            }
        });
    }

    private void getFriendsData()
    {
        final DriveToNativeManager driveToNativeManager = DriveToNativeManager.getInstance();
        driveToNativeManager.getFriendsListData(new com.waze.navigate.DriveToNativeManager.FriendsListListener() {

            final EditFriendsActivity this$0;
            private final DriveToNativeManager val$driveToNativeManager;

            public void onComplete(FriendsListData friendslistdata)
            {
                mPersonArray = new ArrayList();
                if (friendslistdata == null || friendslistdata.friends.length <= 0) goto _L2; else goto _L1
_L1:
                com.waze.user.FriendUserData afrienduserdata[];
                int i;
                int j;
                mNumCurrent = friendslistdata.friends.length;
                afrienduserdata = friendslistdata.friends;
                i = afrienduserdata.length;
                j = 0;
_L5:
                if (j < i) goto _L3; else goto _L2
_L2:
                driveToNativeManager.getRemovedFriendsData(new com.waze.navigate.DriveToNativeManager.FriendsListListener() {

                    final _cls3 this$1;

                    public void onComplete(FriendsListData friendslistdata)
                    {
                        if (friendslistdata == null || friendslistdata.friends.length <= 0) goto _L2; else goto _L1
_L1:
                        com.waze.user.FriendUserData afrienduserdata[];
                        int i;
                        int j;
                        mNumRemoved = friendslistdata.friends.length;
                        afrienduserdata = friendslistdata.friends;
                        i = afrienduserdata.length;
                        j = 0;
_L5:
                        if (j < i) goto _L3; else goto _L2
_L2:
                        finishedReading();
                        return;
_L3:
                        com.waze.user.FriendUserData frienduserdata = afrienduserdata[j];
                        mPersonArray.add(frienduserdata);
                        j++;
                        if (true) goto _L5; else goto _L4
_L4:
                    }

            
            {
                this$1 = _cls3.this;
                super();
            }
                });
                return;
_L3:
                com.waze.user.FriendUserData frienduserdata = afrienduserdata[j];
                mPersonArray.add(frienduserdata);
                j++;
                if (true) goto _L5; else goto _L4
_L4:
            }


            
            {
                this$0 = EditFriendsActivity.this;
                driveToNativeManager = drivetonativemanager;
                super();
            }
        });
    }

    private void inviteClicked()
    {
        startActivityForResult(new Intent(this, com/waze/share/SpreadTheWordActivity), 0);
    }

    private void reallyRemoveFriend(PersonBase personbase)
    {
        mPersonToRemove = personbase;
        int ai[] = new int[1];
        ai[0] = personbase.getID();
        String s = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PS_REMOVED);
        Object aobj[] = new Object[1];
        aobj[0] = personbase.getName();
        String s1 = String.format(s, aobj);
        MyWazeNativeManager.getInstance().sendSocialRemoveFriends(ai, s1);
    }

    private void removeFriend(final PersonBase p)
    {
        NativeManager nativemanager = NativeManager.getInstance();
        android.content.DialogInterface.OnClickListener onclicklistener = new android.content.DialogInterface.OnClickListener() {

            final EditFriendsActivity this$0;
            private final PersonBase val$p;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                if (i == 1)
                {
                    reallyRemoveFriend(p);
                }
            }

            
            {
                this$0 = EditFriendsActivity.this;
                p = personbase;
                super();
            }
        };
        String s = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ARE_YOU_SURE_YOU_WANT_TO_REMOVE_PS_FROM_FRIENDS_LISTQ);
        Object aobj[] = new Object[1];
        aobj[0] = p.getName();
        String s1 = String.format(s, aobj);
        MsgBox.getInstance().OpenConfirmDialogCustomTimeoutCbJava(nativemanager.getLanguageString(DisplayStrings.DS_ARE_YOU_SURE_Q), s1, true, onclicklistener, nativemanager.getLanguageString(DisplayStrings.DS_YES), nativemanager.getLanguageString(DisplayStrings.DS_NO), -1);
    }

    protected void facebookPrivacyClicked()
    {
        MyWazeNativeManager.getInstance().getFacebookSettings(new com.waze.mywaze.MyWazeNativeManager.FacebookCallback() {

            final EditFriendsActivity this$0;

            public void onFacebookSettings(com.waze.mywaze.MyWazeNativeManager.FacebookSettings facebooksettings)
            {
                Intent intent = new Intent(EditFriendsActivity.this, com/waze/mywaze/social/FacebookActivity);
                intent.putExtra("com.waze.mywaze.facebooksettings", facebooksettings);
                startActivityForResult(intent, 0);
            }

            
            {
                this$0 = EditFriendsActivity.this;
                super();
            }
        });
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (j == -1)
        {
            setResult(-1);
            finish();
        }
        super.onActivityResult(i, j, intent);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        getWindow().setSoftInputMode(3);
        setContentView(0x7f03000b);
        NativeManager nativemanager = NativeManager.getInstance();
        TitleBarTextButton titlebartextbutton = (TitleBarTextButton)findViewById(0x7f090058);
        titlebartextbutton.init(this, DisplayStrings.DS_EDIT_FRIENDS, DisplayStrings.DS_SEND);
        titlebartextbutton.setOnClickCloseListener(new android.view.View.OnClickListener() {

            final EditFriendsActivity this$0;

            public void onClick(View view)
            {
                setResult(201);
                finish();
            }

            
            {
                this$0 = EditFriendsActivity.this;
                super();
            }
        });
        mCompletionView = (ContactsCompletionView)findViewById(0x7f09009b);
        mCompletionView.setHint(nativemanager.getLanguageString(DisplayStrings.DS_SEARCH_FRIENDS));
        mCompletionView.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final EditFriendsActivity this$0;

            public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
            {
                if (mCompletionView.enoughToFilter() && mPersonFilteredArrayAdapter != null)
                {
                    if (mPersonFilteredArrayAdapter.getCount() > 0)
                    {
                        PersonBase personbase = (PersonBase)mPersonFilteredArrayAdapter.getItem(0);
                        int j = mPersonArray.indexOf(personbase);
                        int k = mNumCurrent;
                        boolean flag = false;
                        if (j >= k)
                        {
                            flag = true;
                        }
                        if (flag)
                        {
                            addFriend(personbase);
                        } else
                        {
                            removeFriend(personbase);
                        }
                    }
                    mCompletionView.setText("");
                }
                return true;
            }

            
            {
                this$0 = EditFriendsActivity.this;
                super();
            }
        });
        mFriendsListView = (ListView)findViewById(0x7f09009c);
        getFriendsData();
        MyWazeNativeManager.getInstance().addFriendsChangedListener(this);
    }

    protected void onDestroy()
    {
        MyWazeNativeManager.getInstance().removeFriendsChangedListener(this);
        super.onDestroy();
    }

    public void onFriendsChanged()
    {
        if (mPersonToAdd != null)
        {
            mPersonArray.remove(mPersonToAdd);
            mPersonArray.add(0, mPersonToAdd);
            mNumCurrent = 1 + mNumCurrent;
            mNumRemoved = -1 + mNumRemoved;
            mPersonToAdd = null;
        }
        if (mPersonToRemove != null)
        {
            mPersonArray.remove(mPersonToRemove);
            mNumCurrent = -1 + mNumCurrent;
            mNumRemoved = 1 + mNumRemoved;
            mPersonArray.add(mNumCurrent, mPersonToRemove);
            mPersonToRemove = null;
        }
        finishedReading();
    }

    public void onTokenAdded(Object obj)
    {
        View view = mFriendsListView.findViewWithTag(obj);
        if (view != null)
        {
            ((CheckBox)view.findViewById(0x7f09008f)).setChecked(true);
        }
    }

    public void onTokenRemoved(Object obj)
    {
        View view = mFriendsListView.findViewWithTag(obj);
        if (view != null)
        {
            ((CheckBox)view.findViewById(0x7f09008f)).setChecked(false);
        }
    }











}
