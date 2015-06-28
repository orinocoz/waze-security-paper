// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.SparseBooleanArray;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ListView;
import com.waze.ifs.ui.ActivityBase;
import com.waze.view.title.TitleBar;
import java.util.ArrayList;

// Referenced classes of package com.waze.share:
//            ShareFbFriend, ShareFbWithListAdapter, ShareNativeManager, ShareFbQueries

public final class ShareFbWithActivity extends ActivityBase
    implements ShareNativeManager.IShareFbWithDataHandler, ShareFbQueries.IFriendsListCallback
{

    private static final int FRIENDS_LIST_LENGTH_LIMIT = 30;
    private static ShareFbFriend mFriends[] = null;
    private ShareFbWithListAdapter mAdapter;
    private String mInitialCheckedFriendsList[];
    private final android.widget.AdapterView.OnItemClickListener mListClickListener = new android.widget.AdapterView.OnItemClickListener() {

        final ShareFbWithActivity this$0;

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            ((ShareFbWithListAdapter)adapterview.getAdapter()).toggleChecked(i);
        }

            
            {
                this$0 = ShareFbWithActivity.this;
                super();
            }
    };
    private ListView mListView;
    private EditText mSearchBox;
    private final TextWatcher mSearchTextWatcher = new TextWatcher() {

        final ShareFbWithActivity this$0;

        public void afterTextChanged(Editable editable)
        {
            String s = editable.toString();
            if (s != null && s.length() > 0)
            {
                ShareFbQueries.getFriendsList(ShareFbWithActivity.this, s, 30, ShareFbWithActivity.this, false);
            }
        }

        public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
        {
        }

        public void onTextChanged(CharSequence charsequence, int i, int j, int k)
        {
        }

            
            {
                this$0 = ShareFbWithActivity.this;
                super();
            }
    };

    public ShareFbWithActivity()
    {
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

    public void finish()
    {
        SparseBooleanArray sparsebooleanarray = mListView.getCheckedItemPositions();
        Intent intent = new Intent();
        ArrayList arraylist = new ArrayList();
        int i = 0;
        do
        {
            if (i >= mAdapter.getCount())
            {
                mFriends = new ShareFbFriend[arraylist.size()];
                arraylist.toArray(mFriends);
                setResult(1, intent);
                _finish();
                return;
            }
            if (sparsebooleanarray.get(i))
            {
                arraylist.add((ShareFbFriend)mAdapter.getItem(i));
            }
            i++;
        } while (true);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030105);
        ShareNativeManager.getInstance().getShareFbWithData(this);
        mInitialCheckedFriendsList = getIntent().getStringArrayExtra("Friends list");
        mSearchBox = (EditText)findViewById(0x7f0904ec);
        mListView = (ListView)findViewById(0x7f0904ee);
        mSearchBox.addTextChangedListener(mSearchTextWatcher);
        mListView.setChoiceMode(2);
        mAdapter = new ShareFbWithListAdapter(this);
        mListView.setAdapter(mAdapter);
        mListView.setOnItemClickListener(mListClickListener);
        ShareFbQueries.getFriendsList(this, "", 30, this, true);
    }

    public void onFbWithData(String s, String s1)
    {
        if (this != null && isAlive())
        {
            TitleBar titlebar = (TitleBar)findViewById(0x7f0904ed);
            titlebar.init(this, s);
            titlebar.setOnClickCloseListener(new android.view.View.OnClickListener() {

                final ShareFbWithActivity this$0;

                public void onClick(View view)
                {
                    setResult(2);
                    _finish();
                }

            
            {
                this$0 = ShareFbWithActivity.this;
                super();
            }
            });
            mSearchBox.setHint(s1);
        }
    }

    public void onFriendsListResult(ArrayList arraylist, int i, String s)
    {
        Runnable runnable = new Runnable() {

            final ShareFbWithActivity this$0;
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
                this$0 = ShareFbWithActivity.this;
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






}
