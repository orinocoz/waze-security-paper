// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.tokenautocomplete.FilteredArrayAdapter;
import com.waze.NativeManager;
import com.waze.ResManager;
import com.waze.autocomplete.ContactsCompletionView;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.navigate.DriveToNativeManager;
import com.waze.phone.AddressBook;
import com.waze.strings.DisplayStrings;
import com.waze.user.FriendUserData;
import com.waze.user.PersonBase;
import com.waze.utils.ImageRepository;
import com.waze.view.title.TitleBarTextButton;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.waze.navigate.social:
//            AddFriendsUtils, MyFriendsActivity, FriendsListData, AddFriendsData, 
//            OnCompleteTaskListener

public class AddFromActivity extends ActivityBase
    implements com.tokenautocomplete.TokenCompleteTextView.TokenListener, android.widget.AdapterView.OnItemClickListener, com.waze.mywaze.MyWazeNativeManager.IFriendsChanged
{
    public static interface IOnReadDone
    {

        public abstract void onReadDone(int i, ArrayList arraylist);
    }

    public static class PersonArrayAdapter extends ArrayAdapter
    {

        private NativeManager _nativeManager;
        private SparseBooleanArray _selectedIds;
        private ActivityBase activity;
        private boolean hasMore;
        private LayoutInflater inflater;
        private int mHeaderBg;
        private int mHeaderText;
        private int numSuggested;
        private boolean showStatus;

        private View makeHeader(String s)
        {
            TextView textview = new TextView(activity);
            textview.setText(s);
            textview.setBackgroundColor(mHeaderBg);
            textview.setTextColor(mHeaderText);
            textview.setTextSize(2, 18F);
            float f = activity.getResources().getDisplayMetrics().density;
            int i = (int)(15F * f);
            int j = (int)(5F * f);
            textview.setPadding(i, j, i, j);
            return textview;
        }

        public int getCount()
        {
            int i = super.getCount();
            if (hasMore)
            {
                i += 2;
            }
            return i;
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            if (hasMore)
            {
                if (i == 0)
                {
                    return makeHeader(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SUGGESTED_FRIENDS));
                }
                if (--i == numSuggested)
                {
                    return makeHeader(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_MORE_FRIENDS));
                }
                if (i > numSuggested)
                {
                    i--;
                }
            }
            PersonBase personbase = (PersonBase)getItem(i);
            View view1;
            TextView textview;
            CheckBox checkbox;
            if (view == null || (view instanceof TextView))
            {
                view1 = inflater.inflate(0x7f030008, viewgroup, false);
            } else
            {
                view1 = view;
            }
            view1.setTag(personbase);
            AddFriendsUtils.setNameAndImage(activity, view1, personbase.getName(), personbase.getImage());
            textview = (TextView)view1.findViewById(0x7f090087);
            if (!showStatus)
            {
                textview.setVisibility(8);
            } else
            {
                textview.setVisibility(0);
                if (personbase.getIsOnWaze())
                {
                    if (personbase.mPhone != null && personbase.mPhone.length() > 0)
                    {
                        textview.setText(personbase.mPhone);
                    } else
                    {
                        textview.setVisibility(8);
                    }
                } else
                if (personbase.mPhone != null && personbase.mPhone.length() > 0)
                {
                    String s = _nativeManager.getLanguageString(DisplayStrings.DS_INVITE_VIA_PS);
                    Object aobj[] = new Object[1];
                    aobj[0] = personbase.mPhone;
                    textview.setText(String.format(s, aobj));
                } else
                {
                    textview.setText(_nativeManager.getLanguageString(DisplayStrings.DS_NOT_ON_WAZE_SEND_INVITE));
                }
            }
            checkbox = (CheckBox)view1.findViewById(0x7f09008f);
            checkbox.setVisibility(0);
            checkbox.setChecked(_selectedIds.get(personbase.getID()));
            view1.findViewById(0x7f090085).setVisibility(8);
            if (personbase instanceof FriendUserData)
            {
                FriendUserData frienduserdata = (FriendUserData)personbase;
                View view2 = view1.findViewById(0x7f09007f);
                int j;
                if (frienduserdata.isOnline)
                {
                    j = 0;
                } else
                {
                    j = 4;
                }
                view2.setVisibility(j);
            } else
            {
                view1.findViewById(0x7f09007f).setVisibility(4);
            }
            if (personbase.getIsOnWaze())
            {
                view1.findViewById(0x7f09008e).setVisibility(0);
                return view1;
            } else
            {
                view1.findViewById(0x7f09008e).setVisibility(8);
                return view1;
            }
        }

        public void setHeaderColors(int i, int j)
        {
            mHeaderBg = i;
            mHeaderText = j;
        }

        void setSelected(int i)
        {
            _selectedIds.put(i, true);
        }

        void setUnselected(int i)
        {
            _selectedIds.put(i, false);
        }

        public PersonArrayAdapter(ActivityBase activitybase, List list, int i, boolean flag)
        {
            super(activitybase, 0, list);
            mHeaderBg = Color.rgb(147, 196, 211);
            mHeaderText = Color.rgb(47, 74, 83);
            inflater = (LayoutInflater)activitybase.getSystemService("layout_inflater");
            activity = activitybase;
            numSuggested = i;
            boolean flag1;
            if (i > 0 && i < list.size())
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            hasMore = flag1;
            showStatus = flag;
            _nativeManager = NativeManager.getInstance();
            _selectedIds = new SparseBooleanArray();
        }
    }

    public static final class PersonFilteredArrayAdapter extends FilteredArrayAdapter
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

        public PersonFilteredArrayAdapter(ActivityBase activitybase, List list)
        {
            super(activitybase, 0, list);
            ab = activitybase;
        }
    }


    public static int INTENT_FROM_DEFAULT = 0;
    public static int INTENT_FROM_FB = 1;
    public static int INTENT_FROM_SHARE = 2;
    public static String INTENT_FROM_WHERE = "INTENT_FROM_WHERE";
    public static String INTENT_SELECTED = "INTENT_SELECTED";
    public static String INTENT_SUGGESTED = "INTENT_SUGGESTED";
    private ContactsCompletionView mCompletionView;
    private SparseIntArray mCurFriendsUids;
    private ListView mFriendsListView;
    boolean mHasReadAddressBook;
    boolean mHasReadCurFriends;
    boolean mHasReadUidMap;
    private int mNumSuggestions;
    private ArrayList mPersonArray;
    private PersonArrayAdapter mPersonArrayAdapter;
    private PersonFilteredArrayAdapter mPersonFilteredArrayAdapter;
    private SparseIntArray mPersonIdMatch;
    private SparseArray mPreSelected;
    private int mSource;
    private SparseArray mSuggested;
    private SparseIntArray mSuggestionsUids;
    private TitleBarTextButton mTitleBar;

    public AddFromActivity()
    {
        mPreSelected = new SparseArray();
        mSuggested = new SparseArray();
        mNumSuggestions = 0;
        mSource = INTENT_FROM_DEFAULT;
        mHasReadAddressBook = false;
        mHasReadUidMap = false;
        mHasReadCurFriends = false;
    }

    private void addFromShare()
    {
        ArrayList arraylist = (ArrayList)mCompletionView.getObjects();
        Intent intent = new Intent();
        intent.putExtra(INTENT_SELECTED, arraylist);
        setResult(-1, intent);
    }

    private void friendsListPopulateFriends()
    {
        if (mPersonArray != null)
        {
            ArrayList arraylist = mPersonArray;
            int i = mNumSuggestions;
            boolean flag;
            Iterator iterator;
            if (mSource != INTENT_FROM_DEFAULT && mSource != INTENT_FROM_SHARE)
            {
                flag = false;
            } else
            {
                flag = true;
            }
            mPersonArrayAdapter = new PersonArrayAdapter(this, arraylist, i, flag);
            mPersonArrayAdapter.setHeaderColors(0xffedf5f7, 0xff888888);
            mFriendsListView.setAdapter(mPersonArrayAdapter);
            mFriendsListView.setOnItemClickListener(this);
            mPersonFilteredArrayAdapter = new PersonFilteredArrayAdapter(this, mPersonArray);
            mCompletionView.setAdapter(mPersonFilteredArrayAdapter);
            mCompletionView.setTokenListener(this);
            iterator = mCompletionView.getObjects().iterator();
            while (iterator.hasNext()) 
            {
                PersonBase personbase = (PersonBase)iterator.next();
                mPersonArrayAdapter.setSelected(personbase.getID());
            }
        }
    }

    private void getFriendsDataFromAddressBook()
    {
        DriveToNativeManager drivetonativemanager = DriveToNativeManager.getInstance();
        drivetonativemanager.getAddFriendsData(new com.waze.navigate.DriveToNativeManager.AddFriendsListener() {

            final AddFromActivity this$0;

            public void onComplete(AddFriendsData addfriendsdata)
            {
                int i;
                mPersonArray = new ArrayList();
                mSuggestionsUids = new SparseIntArray(addfriendsdata.SuggestionFriends.length);
                i = 1;
                if (addfriendsdata == null || addfriendsdata.SuggestionFriends.length <= 0) goto _L2; else goto _L1
_L1:
                FriendUserData afrienduserdata[];
                int j;
                int k;
                mNumSuggestions = addfriendsdata.SuggestionFriends.length;
                afrienduserdata = addfriendsdata.SuggestionFriends;
                j = afrienduserdata.length;
                k = 0;
_L5:
                if (k < j) goto _L3; else goto _L2
_L2:
                mHasReadAddressBook = true;
                if (mHasReadUidMap && mHasReadCurFriends)
                {
                    readAddressBook();
                }
                return;
_L3:
                FriendUserData frienduserdata = afrienduserdata[k];
                mPersonArray.add(frienduserdata);
                mSuggestionsUids.put(frienduserdata.getID(), i);
                i++;
                k++;
                if (true) goto _L5; else goto _L4
_L4:
            }

            
            {
                this$0 = AddFromActivity.this;
                super();
            }
        });
        mPersonIdMatch = new SparseIntArray();
        AddressBook.fillMapBetweenContactIdToUid(mPersonIdMatch, new OnCompleteTaskListener() {

            final AddFromActivity this$0;

            public void onCompleted()
            {
                mHasReadUidMap = true;
                if (mHasReadAddressBook && mHasReadCurFriends)
                {
                    readAddressBook();
                }
            }

            
            {
                this$0 = AddFromActivity.this;
                super();
            }
        });
        drivetonativemanager.getFriendsListData(new com.waze.navigate.DriveToNativeManager.FriendsListListener() {

            final AddFromActivity this$0;

            public void onComplete(FriendsListData friendslistdata)
            {
                int i;
                mCurFriendsUids = new SparseIntArray(friendslistdata.friends.length);
                i = 1;
                if (friendslistdata == null || friendslistdata.friends.length <= 0) goto _L2; else goto _L1
_L1:
                FriendUserData afrienduserdata[];
                int j;
                int k;
                afrienduserdata = friendslistdata.friends;
                j = afrienduserdata.length;
                k = 0;
_L5:
                if (k < j) goto _L3; else goto _L2
_L2:
                mHasReadCurFriends = true;
                if (mHasReadUidMap && mHasReadAddressBook)
                {
                    readAddressBook();
                }
                return;
_L3:
                FriendUserData frienduserdata = afrienduserdata[k];
                mCurFriendsUids.put(frienduserdata.getID(), i);
                i++;
                k++;
                if (true) goto _L5; else goto _L4
_L4:
            }

            
            {
                this$0 = AddFromActivity.this;
                super();
            }
        });
    }

    private void getFriendsDataFromFacebook()
    {
        DriveToNativeManager.getInstance().getRemovedFriendsData(new com.waze.navigate.DriveToNativeManager.FriendsListListener() {

            final AddFromActivity this$0;

            public void onComplete(FriendsListData friendslistdata)
            {
                int i;
                i = 0;
                mPersonArray = new ArrayList();
                mNumSuggestions = 0;
                if (friendslistdata == null || friendslistdata.friends.length <= 0) goto _L2; else goto _L1
_L1:
                FriendUserData afrienduserdata[];
                int j;
                afrienduserdata = friendslistdata.friends;
                j = afrienduserdata.length;
_L5:
                if (i < j) goto _L3; else goto _L2
_L2:
                Comparator comparator = new Comparator() {

                    final _cls11 this$1;

                    public int compare(PersonBase personbase, PersonBase personbase1)
                    {
                        return personbase.getName().compareToIgnoreCase(personbase1.getName());
                    }

                    public volatile int compare(Object obj, Object obj1)
                    {
                        return compare((PersonBase)obj, (PersonBase)obj1);
                    }

            
            {
                this$1 = _cls11.this;
                super();
            }
                };
                Collections.sort(mPersonArray, comparator);
                readDone();
                return;
_L3:
                FriendUserData frienduserdata = afrienduserdata[i];
                mPersonArray.add(frienduserdata);
                i++;
                if (true) goto _L5; else goto _L4
_L4:
            }

            
            {
                this$0 = AddFromActivity.this;
                super();
            }
        });
    }

    public static void getFriendsDataFromShare(final ArrayList personArray, final SparseArray preSelected, final SparseArray suggested, final IOnReadDone cb)
    {
        AddressBook.GetPersonArrayWithMapping(new com.waze.navigate.DriveToNativeManager.PersonMappingListener() {

            private final IOnReadDone val$cb;
            private final ArrayList val$personArray;
            private final SparseArray val$preSelected;
            private final SparseArray val$suggested;

            public void onComplete(ArrayList arraylist)
            {
                final ArrayList setSelected;
                final SparseArray contactsByUid;
                setSelected = new ArrayList();
                contactsByUid = new SparseArray(arraylist.size());
                if (arraylist == null) goto _L2; else goto _L1
_L1:
                Iterator iterator = arraylist.iterator();
_L5:
                if (iterator.hasNext()) goto _L3; else goto _L2
_L2:
                DriveToNativeManager.getInstance().getFacebookFriendsList(suggested. new com.waze.navigate.DriveToNativeManager.FriendsListListener() {

                    final _cls7 this$1;
                    private final IOnReadDone val$cb;
                    private final SparseArray val$contactsByUid;
                    private final ArrayList val$personArray;
                    private final SparseArray val$preSelected;
                    private final ArrayList val$setSelected;
                    private final SparseArray val$suggested;

                    public void onComplete(FriendsListData friendslistdata)
                    {
                        if (friendslistdata == null) goto _L2; else goto _L1
_L1:
                        FriendUserData afrienduserdata[];
                        int i;
                        int j;
                        afrienduserdata = friendslistdata.friends;
                        i = afrienduserdata.length;
                        j = 0;
_L5:
                        if (j < i) goto _L3; else goto _L2
_L2:
                        Comparator comparator = suggested. new Comparator() {

                            final _cls1 this$2;
                            private final SparseArray val$suggested;

                            public int compare(PersonBase personbase, PersonBase personbase1)
                            {
                                byte byte0 = -1;
                                byte byte1 = 1;
                                byte byte2;
                                byte byte3;
                                if (suggested.get(personbase.getID()) != null)
                                {
                                    byte2 = byte1;
                                } else
                                {
                                    byte2 = 0;
                                }
                                if (suggested.get(personbase1.getID()) != null)
                                {
                                    byte3 = byte1;
                                } else
                                {
                                    byte3 = 0;
                                }
                                if (byte2 != byte3)
                                {
                                    if (byte2 != 0)
                                    {
                                        byte1 = byte0;
                                    }
                                    return byte1;
                                }
                                if (personbase.getIsOnWaze() != personbase1.getIsOnWaze())
                                {
                                    if (!personbase.getIsOnWaze())
                                    {
                                        byte0 = byte1;
                                    }
                                    return byte0;
                                } else
                                {
                                    return personbase.getName().compareToIgnoreCase(personbase1.getName());
                                }
                            }

                            public volatile int compare(Object obj, Object obj1)
                            {
                                return compare((PersonBase)obj, (PersonBase)obj1);
                            }

            
            {
                this$2 = final__pcls1;
                suggested = SparseArray.this;
                super();
            }
                        };
                        Collections.sort(personArray, comparator);
                        cb.onReadDone(suggested.size(), setSelected);
                        return;
_L3:
                        FriendUserData frienduserdata;
                        frienduserdata = afrienduserdata[j];
                        PersonBase personbase = (PersonBase)contactsByUid.get(frienduserdata.getID());
                        if (personbase == null)
                        {
                            break; /* Loop/switch isn't completed */
                        }
                        if (personbase.getImage() == null)
                        {
                            personbase.setImage(frienduserdata.getImage());
                        }
                        if (!personbase.getIsOnWaze() && frienduserdata.getIsOnWaze())
                        {
                            personbase.setIsOnWaze(true);
                        }
_L6:
                        j++;
                        if (true) goto _L5; else goto _L4
_L4:
                        personArray.add(frienduserdata);
                        if (preSelected.get(frienduserdata.getID()) != null)
                        {
                            setSelected.add(frienduserdata);
                        }
                          goto _L6
                        if (true) goto _L5; else goto _L7
_L7:
                    }

            
            {
                this$1 = final__pcls7;
                contactsByUid = sparsearray;
                personArray = arraylist;
                preSelected = sparsearray1;
                setSelected = arraylist1;
                cb = ionreaddone;
                suggested = SparseArray.this;
                super();
            }
                });
                return;
_L3:
                PersonBase personbase = (PersonBase)iterator.next();
                personArray.add(personbase);
                contactsByUid.put(personbase.getID(), personbase);
                if (preSelected.get(personbase.getID()) != null)
                {
                    setSelected.add(personbase);
                }
                if (true) goto _L5; else goto _L4
_L4:
            }

            
            {
                personArray = arraylist;
                preSelected = sparsearray;
                cb = ionreaddone;
                suggested = sparsearray1;
                super();
            }
        });
    }

    private void readDone()
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

    void addFromContacts()
    {
        List list = mCompletionView.getObjects();
        int ai[] = new int[list.size()];
        String as[] = new String[list.size()];
        int ai1[] = new int[list.size()];
        int i = 0;
        int j = 0;
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                if (j > 0)
                {
                    String s2 = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PD_FRIENDS_INVITED);
                    Object aobj1[] = new Object[1];
                    aobj1[0] = Integer.valueOf(j);
                    String s3 = String.format(s2, aobj1);
                    MyWazeNativeManager.getInstance().sendSocialInviteFriends(ai1, as, s3);
                }
                if (i > 0)
                {
                    String s = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PD_FRIENDS_ADDED);
                    Object aobj[] = new Object[1];
                    aobj[0] = Integer.valueOf(i);
                    String s1 = String.format(s, aobj);
                    MyWazeNativeManager.getInstance().sendSocialAddFriends(ai, s1);
                }
                return;
            }
            PersonBase personbase = (PersonBase)iterator.next();
            int k;
            if (mSuggestionsUids.get(personbase.getID()) != 0)
            {
                k = personbase.getID();
            } else
            {
                k = mPersonIdMatch.get(personbase.getID());
            }
            if (k == 0)
            {
                as[j] = personbase.getPhone();
                ai1[j] = personbase.getID();
                j++;
            } else
            {
                ai[i] = k;
                i++;
            }
        } while (true);
    }

    void addFromFacebook()
    {
        List list = mCompletionView.getObjects();
        String as[] = new String[list.size()];
        int ai[] = new int[list.size()];
        int i = 0;
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                String s = (new StringBuilder("Added ")).append(list.size()).append(" friends.").toString();
                MyWazeNativeManager.getInstance().sendSocialAddFriends(ai, s);
                return;
            }
            PersonBase personbase = (PersonBase)iterator.next();
            as[i] = personbase.getPhone();
            ai[i] = personbase.getID();
            i++;
        } while (true);
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
        Intent intent;
        super.onCreate(bundle);
        getWindow().setSoftInputMode(3);
        ImageRepository.instance.initExecutor();
        intent = getIntent();
        if (intent == null || !intent.hasExtra(INTENT_FROM_WHERE)) goto _L2; else goto _L1
_L1:
        mSource = intent.getIntExtra(INTENT_FROM_WHERE, INTENT_FROM_DEFAULT);
        if (!intent.hasExtra(INTENT_SELECTED)) goto _L4; else goto _L3
_L3:
        java.io.Serializable serializable1 = getIntent().getExtras().getSerializable(INTENT_SELECTED);
        if (!(serializable1 instanceof ArrayList)) goto _L4; else goto _L5
_L5:
        ArrayList arraylist1 = (ArrayList)serializable1;
        if (arraylist1 == null || arraylist1.isEmpty()) goto _L4; else goto _L6
_L6:
        Iterator iterator1 = arraylist1.iterator();
_L11:
        if (iterator1.hasNext()) goto _L7; else goto _L4
_L4:
        if (!intent.hasExtra(INTENT_SUGGESTED)) goto _L2; else goto _L8
_L8:
        java.io.Serializable serializable = getIntent().getExtras().getSerializable(INTENT_SUGGESTED);
        if (!(serializable instanceof ArrayList)) goto _L2; else goto _L9
_L9:
        ArrayList arraylist = (ArrayList)serializable;
        if (arraylist == null || arraylist.isEmpty()) goto _L2; else goto _L10
_L10:
        Iterator iterator = arraylist.iterator();
_L12:
        if (iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_479;
        }
_L2:
        setContentView(0x7f03000b);
        NativeManager nativemanager = NativeManager.getInstance();
        mTitleBar = (TitleBarTextButton)findViewById(0x7f090058);
        int i = getIntent().getExtras().getInt("type");
        if (i > 0)
        {
            if (i == 1)
            {
                TitleBarTextButton titlebartextbutton2 = mTitleBar;
                DisplayStrings displaystrings4 = DisplayStrings.DS_SHARE_RIDE;
                DisplayStrings displaystrings5;
                Object obj;
                Object obj1;
                if (mSource == INTENT_FROM_SHARE)
                {
                    displaystrings5 = DisplayStrings.DS_DONE;
                } else
                {
                    displaystrings5 = DisplayStrings.DS_SEND;
                }
                titlebartextbutton2.init(this, displaystrings4, displaystrings5);
            } else
            {
                TitleBarTextButton titlebartextbutton1 = mTitleBar;
                DisplayStrings displaystrings2 = DisplayStrings.DS_SEND_LOCATION;
                DisplayStrings displaystrings3;
                if (mSource == INTENT_FROM_SHARE)
                {
                    displaystrings3 = DisplayStrings.DS_DONE;
                } else
                {
                    displaystrings3 = DisplayStrings.DS_SEND;
                }
                titlebartextbutton1.init(this, displaystrings2, displaystrings3);
            }
        } else
        {
            TitleBarTextButton titlebartextbutton = mTitleBar;
            DisplayStrings displaystrings = DisplayStrings.DS_ADD_FRIENDS;
            DisplayStrings displaystrings1;
            if (mSource == INTENT_FROM_SHARE)
            {
                displaystrings1 = DisplayStrings.DS_DONE;
            } else
            {
                displaystrings1 = DisplayStrings.DS_SEND;
            }
            titlebartextbutton.init(this, displaystrings, displaystrings1);
        }
        mTitleBar.setOnClickCloseListener(new android.view.View.OnClickListener() {

            final AddFromActivity this$0;

            public void onClick(View view)
            {
                if (mSource == AddFromActivity.INTENT_FROM_FB)
                {
                    addFromFacebook();
                    setResult(201);
                } else
                if (mSource == AddFromActivity.INTENT_FROM_SHARE)
                {
                    addFromShare();
                } else
                {
                    addFromContacts();
                    setResult(201);
                }
                finish();
            }

            
            {
                this$0 = AddFromActivity.this;
                super();
            }
        });
        if (mSource != INTENT_FROM_SHARE)
        {
            mTitleBar.setCloseButtonDisabled(true);
        }
        mCompletionView = (ContactsCompletionView)findViewById(0x7f09009b);
        if (mSource != INTENT_FROM_SHARE)
        {
            mCompletionView.setHint(nativemanager.getLanguageString(DisplayStrings.DS_SEARCH_CONTACTS));
        } else
        {
            mCompletionView.setHint(nativemanager.getLanguageString(DisplayStrings.DS_SEARCH_FRIENDS));
        }
        mCompletionView.allowDuplicates(false);
        mCompletionView.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final AddFromActivity this$0;

            public boolean onEditorAction(TextView textview, int j, KeyEvent keyevent)
            {
                if (mCompletionView.enoughToFilter() && mPersonFilteredArrayAdapter != null && mPersonFilteredArrayAdapter.getCount() > 0)
                {
                    PersonBase personbase = mPersonFilteredArrayAdapter.getItem(0);
                    if (!mCompletionView.getObjects().contains(personbase))
                    {
                        mCompletionView.performCompletion();
                        mPersonArrayAdapter.notifyDataSetChanged();
                    }
                } else
                {
                    ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(mCompletionView.getWindowToken(), 0);
                }
                return true;
            }

            
            {
                this$0 = AddFromActivity.this;
                super();
            }
        });
        mFriendsListView = (ListView)findViewById(0x7f09009c);
        mFriendsListView.setOnScrollListener(new android.widget.AbsListView.OnScrollListener() {

            final AddFromActivity this$0;

            public void onScroll(AbsListView abslistview, int j, int k, int l)
            {
            }

            public void onScrollStateChanged(AbsListView abslistview, int j)
            {
                if (j == 1)
                {
                    mFriendsListView.requestFocus();
                }
            }

            
            {
                this$0 = AddFromActivity.this;
                super();
            }
        });
        mCompletionView.setIGetViewForObject(new com.waze.autocomplete.ContactsCompletionView.IGetViewForObject() {

            final AddFromActivity this$0;

            public View getViewForObject(Object obj2)
            {
                PersonBase personbase = (PersonBase)obj2;
                LinearLayout linearlayout = (LinearLayout)((LayoutInflater)mCompletionView.getContext().getSystemService("layout_inflater")).inflate(0x7f030043, (ViewGroup)mCompletionView.getParent(), false);
                ((TextView)linearlayout.findViewById(0x7f090236)).setText(personbase.getName());
                ImageView imageview = (ImageView)linearlayout.findViewById(0x7f090235);
                imageview.setImageResource(0x7f02011b);
                ImageRepository.instance.getImage(personbase.getImage(), true, imageview, null, AddFromActivity.this);
                linearlayout.findViewById(0x7f090234).setPadding(0, 0, 0, 0);
                return linearlayout;
            }

            
            {
                this$0 = AddFromActivity.this;
                super();
            }
        });
        if (mSource == INTENT_FROM_FB)
        {
            getFriendsDataFromFacebook();
        } else
        if (mSource == INTENT_FROM_SHARE)
        {
            mPersonArray = new ArrayList();
            getFriendsDataFromShare(mPersonArray, mPreSelected, mSuggested, new IOnReadDone() {

                final AddFromActivity this$0;

                public void onReadDone(int j, ArrayList arraylist2)
                {
                    mNumSuggestions = j;
                    readDone();
                    Iterator iterator2 = arraylist2.iterator();
                    do
                    {
                        if (!iterator2.hasNext())
                        {
                            return;
                        }
                        PersonBase personbase = (PersonBase)iterator2.next();
                        mCompletionView.addObject(personbase);
                    } while (true);
                }

            
            {
                this$0 = AddFromActivity.this;
                super();
            }
            });
        } else
        {
            getFriendsDataFromAddressBook();
        }
        MyWazeNativeManager.getInstance().addFriendsChangedListener(this);
        return;
_L7:
        obj1 = iterator1.next();
        if (obj1 instanceof PersonBase)
        {
            mPreSelected.put(((PersonBase)obj1).getID(), (PersonBase)obj1);
        }
          goto _L11
        obj = iterator.next();
        if (obj instanceof PersonBase)
        {
            mSuggested.put(((PersonBase)obj).getID(), (PersonBase)obj);
        }
          goto _L12
    }

    protected void onDestroy()
    {
        MyWazeNativeManager.getInstance().removeFriendsChangedListener(this);
        ImageRepository.instance.endExecutor();
        super.onDestroy();
    }

    public void onFriendsChanged()
    {
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        CheckBox checkbox;
        PersonBase personbase;
        if (view instanceof TextView)
        {
            return;
        }
        checkbox = (CheckBox)view.findViewById(0x7f09008f);
        personbase = (PersonBase)view.getTag();
        if (!checkbox.isChecked()) goto _L2; else goto _L1
_L1:
        Iterator iterator1;
        checkbox.setChecked(false);
        mCompletionView.removeObject(personbase);
        iterator1 = mCompletionView.getObjects().iterator();
_L5:
        if (iterator1.hasNext()) goto _L4; else goto _L3
_L3:
        mCompletionView.setMaxLines(1);
        mCompletionView.requestFocus();
        mCompletionView.setMaxLines(1);
        return;
_L4:
        Object obj1 = iterator1.next();
        if (((PersonBase)obj1).getID() == personbase.getID())
        {
            mCompletionView.removeObject(obj1);
        }
          goto _L5
_L2:
        Iterator iterator;
        checkbox.setChecked(true);
        iterator = mCompletionView.getObjects().iterator();
_L6:
label0:
        {
            if (iterator.hasNext())
            {
                break label0;
            }
            mCompletionView.addObject(personbase);
        }
          goto _L3
        Object obj = iterator.next();
        if (((PersonBase)obj).getID() == personbase.getID())
        {
            mCompletionView.removeObject(obj);
        }
          goto _L6
    }

    protected void onResume()
    {
        super.onResume();
        mCompletionView.postDelayed(new Runnable() {

            final AddFromActivity this$0;

            public void run()
            {
                float f = getResources().getDisplayMetrics().density;
                mCompletionView.setMaxHeightLimit((int)(120F * f));
            }

            
            {
                this$0 = AddFromActivity.this;
                super();
            }
        }, 1L);
    }

    public void onTokenAdded(Object obj)
    {
        PersonBase personbase = (PersonBase)obj;
        mPersonArrayAdapter.setSelected(personbase.getID());
        View view = mFriendsListView.findViewWithTag(obj);
        if (view != null)
        {
            ((CheckBox)view.findViewById(0x7f09008f)).setChecked(true);
        }
        if (mSource != INTENT_FROM_SHARE)
        {
            mTitleBar.setCloseButtonDisabled(false);
        }
    }

    public void onTokenRemoved(Object obj)
    {
        PersonBase personbase = (PersonBase)obj;
        mPersonArrayAdapter.setUnselected(personbase.getID());
        View view = mFriendsListView.findViewWithTag(obj);
        if (view != null)
        {
            ((CheckBox)view.findViewById(0x7f09008f)).setChecked(false);
        }
        if (mSource != INTENT_FROM_SHARE)
        {
            mTitleBar.setCloseButtonDisabled(mCompletionView.getObjects().isEmpty());
        }
    }

    void readAddressBook()
    {
        ArrayList arraylist = new ArrayList(AddressBook.GetPersonArrayFromAddressBook());
        if (arraylist.isEmpty()) goto _L2; else goto _L1
_L1:
        Iterator iterator;
        Collections.sort(arraylist, new Comparator() {

            final AddFromActivity this$0;

            public int compare(PersonBase personbase2, PersonBase personbase3)
            {
                return personbase2.getName().compareToIgnoreCase(personbase3.getName());
            }

            public volatile int compare(Object obj, Object obj1)
            {
                return compare((PersonBase)obj, (PersonBase)obj1);
            }

            
            {
                this$0 = AddFromActivity.this;
                super();
            }
        });
        iterator = arraylist.iterator();
_L5:
        if (iterator.hasNext()) goto _L3; else goto _L2
_L2:
        readDone();
        return;
_L3:
        PersonBase personbase = (PersonBase)iterator.next();
        int i = mPersonIdMatch.get(personbase.getID());
        if (i != 0)
        {
            int j = mSuggestionsUids.get(i);
            if (j != 0)
            {
                PersonBase personbase1 = (PersonBase)mPersonArray.get(j - 1);
                if (personbase.getImage() != null)
                {
                    personbase1.setImage(personbase.getImage());
                }
                if (personbase.mPhone != null && personbase.mPhone.length() > 0 && (personbase1.mPhone == null || personbase1.mPhone.length() == 0))
                {
                    personbase1.mPhone = personbase.mPhone;
                }
                continue; /* Loop/switch isn't completed */
            }
            if (mCurFriendsUids.get(i) != 0)
            {
                continue; /* Loop/switch isn't completed */
            }
            personbase.setIsOnWaze(true);
        }
        mPersonArray.add(personbase);
        if (true) goto _L5; else goto _L4
_L4:
    }















}
