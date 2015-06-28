// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;
import com.waze.ifs.ui.ActivityBase;
import com.waze.share.ShareFbFriend;
import com.waze.share.ShareFbQueries;
import com.waze.share.ShareFbWithListAdapter;
import com.waze.share.ShareNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.view.tabs.TabBar;
import com.waze.view.title.TitleBar;
import java.util.ArrayList;
import java.util.Arrays;

// Referenced classes of package com.waze:
//            NativeManager, MsgBox

public class PhoneList extends ActivityBase
    implements com.waze.share.ShareNativeManager.IShareFbWithDataHandler, com.waze.share.ShareFbQueries.IFriendsListCallback
{
    private static class PreviewTabsManager
    {

        private boolean isNavigate;
        private PhoneList mHolder;
        private int mSelectedTab;
        private View mSelectedTabView;
        private TabBar mTabBar;
        private final com.waze.view.tabs.TabBar.IOnTabClickListener mTabClickListener = new _cls1();

        public void initTabs()
        {
            NativeManager nativemanager = NativeManager.getInstance();
            mTabBar = (TabBar)mHolder.findViewById(0x7f0900e5);
            mTabBar.setListener(mTabClickListener);
            mTabBar.setText(0, nativemanager.getLanguageString("Facebook friends"));
            mTabBar.setText(1, nativemanager.getLanguageString("Phone contacts"));
            mTabBar.setSelected(0);
            mSelectedTabView = mHolder.findViewById(0x7f0904eb);
            if (mSelectedTab >= 0)
            {
                setSelectedTab(mSelectedTab);
            }
        }

        public void setSelectedTab(int i)
        {
            mTabBar.setSelected(i);
            mTabClickListener.onClick(i);
        }

        public void setVisible(boolean flag)
        {
            if (flag)
            {
                mTabBar.setVisibility(0);
                return;
            } else
            {
                mTabBar.setVisibility(8);
                return;
            }
        }






        public PreviewTabsManager(PhoneList phonelist)
        {
            mSelectedTab = -1;
            mSelectedTabView = null;
            mHolder = null;
            mTabBar = null;
            isNavigate = true;
            mHolder = phonelist;
        }
    }


    private static final int FRIENDS_LIST_LENGTH_LIMIT = 30;
    private static ShareFbFriend mFriends[] = null;
    private boolean bIsSearch;
    private EditText et;
    private ListView lv;
    private ShareFbWithListAdapter mAdapter;
    private String mInitialCheckedFriendsList[];
    private final android.widget.AdapterView.OnItemClickListener mListClickListener = new android.widget.AdapterView.OnItemClickListener() {

        final PhoneList this$0;

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
        }

            
            {
                this$0 = PhoneList.this;
                super();
            }
    };
    private ListView mListView;
    private EditText mSearchBox;
    private final TextWatcher mSearchTextWatcher = new TextWatcher() {

        final PhoneList this$0;

        public void afterTextChanged(Editable editable)
        {
            String s = editable.toString();
            if (s != null && s.length() > 0)
            {
                ShareFbQueries.getFriendsList(PhoneList.this, s, 30, PhoneList.this, false);
            }
        }

        public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
        {
        }

        public void onTextChanged(CharSequence charsequence, int i, int j, int k)
        {
        }

            
            {
                this$0 = PhoneList.this;
                super();
            }
    };
    private ArrayList nlist;
    private String nlistString[];
    private PreviewTabsManager previewTabsManager;
    int textlength;

    public PhoneList()
    {
        nlist = new ArrayList();
        textlength = 0;
        bIsSearch = false;
    }

    private void _finish()
    {
        super.finish();
    }

    public static ShareFbFriend[] getSelected()
    {
        return mFriends;
    }

    private void initCheckedState(String as[])
    {
        if (as != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i = 0;
_L4:
        if (i >= mListView.getCount()) goto _L1; else goto _L3
_L3:
        ShareFbFriend sharefbfriend;
        int j;
        sharefbfriend = (ShareFbFriend)mListView.getItemAtPosition(i);
        j = 0;
_L5:
        if (j < as.length)
        {
label0:
            {
                if (!sharefbfriend.name.equals(as[j]))
                {
                    break label0;
                }
                mListView.setItemChecked(i, true);
            }
        }
        i++;
          goto _L4
          goto _L1
        j++;
          goto _L5
    }

    public void InitTab1()
    {
        lv = (ListView)findViewById(0x7f0904ea);
        et = (EditText)findViewById(0x7f090061);
        ((TextView)findViewById(0x7f0904e9)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_MORE_OPTIONS));
        findViewById(0x7f0904e8).setOnClickListener(new android.view.View.OnClickListener() {

            final PhoneList this$0;

            public void onClick(View view)
            {
            }

            
            {
                this$0 = PhoneList.this;
                super();
            }
        });
        lv.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final PhoneList this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                Cursor cursor2;
                String as[];
                int j;
                String s1;
                ContentResolver contentresolver;
                Cursor cursor1;
                String s2;
                android.content.DialogInterface.OnClickListener onclicklistener;
                if (bIsSearch)
                {
                    s1 = (String)nlist.get(i);
                } else
                {
                    s1 = nlistString[i];
                }
                contentresolver = getContentResolver();
                cursor1 = contentresolver.query(android.provider.ContactsContract.Contacts.CONTENT_URI, null, (new StringBuilder("DISPLAY_NAME = '")).append(s1).append("'").toString(), null, null);
                if (!cursor1.moveToFirst()) goto _L2; else goto _L1
_L1:
                s2 = cursor1.getString(cursor1.getColumnIndex("_id"));
                cursor2 = contentresolver.query(android.provider.ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, (new StringBuilder("contact_id = ")).append(s2).toString(), null, null);
                as = new String[4];
                j = 0;
_L6:
                if (cursor2.moveToNext()) goto _L4; else goto _L3
_L3:
                onclicklistener = new android.content.DialogInterface.OnClickListener() {

                    final _cls4 this$1;

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        if (i == 1);
                    }

            
            {
                this$1 = _cls4.this;
                super();
            }
                };
                if (j > 1)
                {
                    MsgBox.getInstance().OpenChooseNumberDialog(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_CHOOSE_A_NUMBER), as[0], as[1], onclicklistener);
                }
                cursor2.close();
_L2:
                cursor1.close();
                return;
_L4:
                as[j] = cursor2.getString(cursor2.getColumnIndex("data1"));
                switch (cursor2.getInt(cursor2.getColumnIndex("data2")))
                {
                case 1: // '\001'
                case 2: // '\002'
                case 3: // '\003'
                default:
                    j++;
                    break;
                }
                if (true) goto _L6; else goto _L5
_L5:
            }

            
            {
                this$0 = PhoneList.this;
                super();
            }
        });
        Cursor cursor = getContentResolver().query(android.provider.ContactsContract.Contacts.CONTENT_URI, null, null, null, null);
        if (cursor.getCount() > 0 && cursor.moveToFirst())
        {
            do
            {
                String s = cursor.getString(cursor.getColumnIndex("display_name"));
                if (Integer.parseInt(cursor.getString(cursor.getColumnIndex("has_phone_number"))) > 0)
                {
                    nlist.add(s);
                }
            } while (cursor.moveToNext());
        }
        nlistString = new String[nlist.size()];
        nlist.toArray(nlistString);
        Arrays.sort(nlistString);
        lv.setAdapter(new ArrayAdapter(this, 0x7f030041, 0x7f090233, nlistString));
        et.addTextChangedListener(new TextWatcher() {

            final PhoneList this$0;

            public void afterTextChanged(Editable editable)
            {
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
                textlength = et.getText().length();
                nlist.clear();
                int l = 0;
                do
                {
                    if (l >= nlistString.length)
                    {
                        bIsSearch = true;
                        lv.setAdapter(new ArrayAdapter(PhoneList.this, 0x7f030041, 0x7f090233, nlist));
                        return;
                    }
                    if (textlength <= nlistString[l].length() && et.getText().toString().equalsIgnoreCase((String)nlistString[l].subSequence(0, textlength)))
                    {
                        nlist.add(nlistString[l]);
                    }
                    l++;
                } while (true);
            }

            
            {
                this$0 = PhoneList.this;
                super();
            }
        });
    }

    public void InitTab2()
    {
        ShareNativeManager.getInstance().getShareFbWithData(this);
        mInitialCheckedFriendsList = getIntent().getStringArrayExtra("Friends list");
        mSearchBox = (EditText)findViewById(0x7f0904ec);
        mListView = (ListView)findViewById(0x7f0904ee);
        mSearchBox.addTextChangedListener(mSearchTextWatcher);
        mAdapter = new ShareFbWithListAdapter(this);
        mListView.setAdapter(mAdapter);
        mListView.setOnItemClickListener(mListClickListener);
        ShareFbQueries.getFriendsList(this, "", 30, this, true);
    }

    public void finish()
    {
        setResult(1, new Intent());
        _finish();
    }

    public void onBackPressed()
    {
        super.onBackPressed();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300a2);
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_SHARE_ADDRESSES);
        InitTab1();
        InitTab2();
        previewTabsManager = new PreviewTabsManager(this);
        previewTabsManager.initTabs();
        previewTabsManager.setSelectedTab(getIntent().getExtras().getInt("SelectedTab", 0));
    }

    protected void onDestroy()
    {
        super.onDestroy();
        _finish();
    }

    public void onFbWithData(String s, String s1)
    {
        if (this != null && isAlive())
        {
            mSearchBox.setHint(s1);
        }
    }

    public void onFriendsListResult(ArrayList arraylist, int i, String s)
    {
        Runnable runnable = new Runnable() {

            final PhoneList this$0;
            private final ShareFbWithListAdapter val$adapter;
            private final ArrayList val$friends;

            public void run()
            {
                adapter.updateList(friends);
                initCheckedState(mInitialCheckedFriendsList);
                mInitialCheckedFriendsList = null;
                mListView.invalidateViews();
            }

            
            {
                this$0 = PhoneList.this;
                adapter = sharefbwithlistadapter;
                friends = arraylist;
                super();
            }
        };
        if (i == 0)
        {
            runOnUiThread(runnable);
        }
    }












    // Unreferenced inner class com/waze/PhoneList$PreviewTabsManager$1

/* anonymous class */
    class PreviewTabsManager._cls1
        implements com.waze.view.tabs.TabBar.IOnTabClickListener
    {

        final PreviewTabsManager this$1;

        public void onClick(int i)
        {
            if (i == mSelectedTab)
            {
                return;
            }
            View view = null;
            if (i == 0)
            {
                view = mHolder.findViewById(0x7f0904eb);
            }
            if (i == 1)
            {
                view = mHolder.findViewById(0x7f0904e7);
            }
            mSelectedTab = i;
            mSelectedTabView.setVisibility(8);
            view.setVisibility(0);
            mSelectedTabView = view;
        }

            
            {
                this$1 = PreviewTabsManager.this;
                super();
            }
    }

}
