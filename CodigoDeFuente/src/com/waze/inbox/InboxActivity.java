// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.inbox;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.Logger;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.view.button.ImageButtonLeft;
import com.waze.view.title.TitleBar;
import java.util.ArrayList;
import java.util.Arrays;

// Referenced classes of package com.waze.inbox:
//            InboxNativeManager, InboxMsgListAdapter, InboxMessage, InboxPreviewActivity

public class InboxActivity extends ActivityBase
    implements InboxNativeManager.InboxDataListener, InboxMsgListAdapter.IOnCheckedListener
{

    private static final String BTN_ALL_STATE_ALL = "All";
    private static final int BTN_ALL_STATE_KEY = 255;
    private static final String BTN_ALL_STATE_NONE = "None";
    private ImageButtonLeft mBtnAll;
    private boolean mBtnAllIsAll;
    private ImageButtonLeft mBtnDelete;
    private ImageButtonLeft mBtnMarkRead;
    private boolean mClearChecked;
    private final InboxNativeManager mInboxNativeManager = InboxNativeManager.getInstance();
    private InboxMsgListAdapter mListAdpater;
    private final android.widget.AdapterView.OnItemClickListener mListClickListener = new android.widget.AdapterView.OnItemClickListener() {

        final InboxActivity this$0;

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            InboxNativeManager inboxnativemanager = InboxNativeManager.getInstance();
            InboxMsgListAdapter inboxmsglistadapter = (InboxMsgListAdapter)adapterview.getAdapter();
            mSelectedItem = (InboxMessage)inboxmsglistadapter.getItem(i);
            Analytics.log("INBOX_TITLE_CLICKED", "MESSAGE_ID", mSelectedItem.id);
            if (mSelectedItem.unread)
            {
                mSelectedItem.unread = false;
                String as[] = new String[1];
                as[0] = mSelectedItem.id;
                inboxnativemanager.setRead(as, true);
                inboxmsglistadapter.notifyDataSetChanged();
            }
            InboxPreviewActivity.Start(InboxActivity.this, mSelectedItem, null);
        }

            
            {
                this$0 = InboxActivity.this;
                super();
            }
    };
    private ListView mListView;
    private boolean mLoadingMore;
    private boolean mMoreMessages;
    private final ArrayList mMsgList = new ArrayList();
    private final android.view.View.OnClickListener mOnAllListener = new android.view.View.OnClickListener() {

        final InboxActivity this$0;

        public void onClick(View view)
        {
            if (mBtnAllIsAll)
            {
                mListAdpater.checkAll();
                return;
            } else
            {
                mListAdpater.clearChecked();
                return;
            }
        }

            
            {
                this$0 = InboxActivity.this;
                super();
            }
    };
    private final android.view.View.OnClickListener mOnDeleteListener = new android.view.View.OnClickListener() {

        final InboxActivity this$0;

        public void onClick(View view)
        {
            String as[] = getSelectedIds();
            if (as != null)
            {
                mInboxNativeManager.deleteMessages(as);
                mClearChecked = true;
            }
        }

            
            {
                this$0 = InboxActivity.this;
                super();
            }
    };
    private final android.view.View.OnClickListener mOnMarkReadListener = new android.view.View.OnClickListener() {

        final InboxActivity this$0;

        public void onClick(View view)
        {
            String as[] = getSelectedIds();
            if (as != null)
            {
                mInboxNativeManager.setRead(as, true);
                mClearChecked = true;
            }
        }

            
            {
                this$0 = InboxActivity.this;
                super();
            }
    };
    private final android.widget.AbsListView.OnScrollListener mOnScrollListener = new android.widget.AbsListView.OnScrollListener() {

        final InboxActivity this$0;

        public void onScroll(AbsListView abslistview, int i, int j, int k)
        {
            if (i + j == k && mMoreMessages)
            {
                mListAdpater.setLoading(true);
                loadMoreMessages();
            }
        }

        public void onScrollStateChanged(AbsListView abslistview, int i)
        {
        }

            
            {
                this$0 = InboxActivity.this;
                super();
            }
    };
    private InboxMessage mSelectedItem;
    private RelativeLayout mStatusBar;
    private TextView mStatusText;
    private TitleBar mTitleBar;
    private int mUnread;

    public InboxActivity()
    {
        mMoreMessages = false;
        mLoadingMore = false;
        mClearChecked = false;
        mBtnAllIsAll = true;
        mUnread = 0;
    }

    private String[] getSelectedIds()
    {
        int i = mListAdpater.getCheckedIds().size();
        if (i == 0)
        {
            return null;
        } else
        {
            String as[] = new String[i];
            mListAdpater.getCheckedIds().toArray(as);
            return as;
        }
    }

    private void loadMoreMessages()
    {
        if (mLoadingMore)
        {
            return;
        } else
        {
            Logger.d_("INBOX", "Loading more messages");
            mInboxNativeManager.loadMoreMessages();
            mLoadingMore = true;
            mStatusText.setVisibility(0);
            mStatusBar.invalidate();
            return;
        }
    }

    private void setBottomBar()
    {
        String as[] = getSelectedIds();
        NativeManager nativemanager = NativeManager.getInstance();
        if (as == null)
        {
            String s1 = nativemanager.getLanguageString(DisplayStrings.DS_UNREAD);
            String s2 = nativemanager.getLanguageString(DisplayStrings.DS_ALL);
            mBtnAll.setImageResource(0x7f020348);
            mBtnAll.setText(s2);
            mBtnDelete.setVisibility(4);
            mBtnMarkRead.setVisibility(4);
            mStatusText.setVisibility(0);
            mStatusText.setText((new StringBuilder(String.valueOf(mUnread))).append(" ").append(s1).toString());
            mBtnAllIsAll = true;
        } else
        {
            String s = nativemanager.getLanguageString(DisplayStrings.DS_NONE);
            mBtnAll.setImageResource(0x7f020349);
            mBtnAll.setText(s);
            mBtnDelete.setVisibility(0);
            mBtnDelete.setText(nativemanager.getLanguageString(DisplayStrings.DS_DELETE));
            mBtnMarkRead.setVisibility(0);
            mBtnMarkRead.setText(nativemanager.getLanguageString(DisplayStrings.DS_MARK_AS_READ));
            mStatusText.setVisibility(4);
            mBtnAllIsAll = false;
        }
        mStatusBar.requestLayout();
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

    public void onCheckClicked(int i, boolean flag)
    {
        setBottomBar();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03006a);
        mListView = (ListView)findViewById(0x7f090326);
        mListAdpater = new InboxMsgListAdapter(this, mMsgList, this);
        mListView.setAdapter(mListAdpater);
        mListView.setOnItemClickListener(mListClickListener);
        mListView.setOnScrollListener(mOnScrollListener);
        mListAdpater.prepare();
        mStatusBar = (RelativeLayout)findViewById(0x7f090327);
        mStatusText = (TextView)findViewById(0x7f09032d);
        mBtnDelete = (ImageButtonLeft)findViewById(0x7f09032b);
        mBtnDelete.setOnClickListener(mOnDeleteListener);
        mBtnMarkRead = (ImageButtonLeft)findViewById(0x7f09032c);
        mBtnMarkRead.setOnClickListener(mOnMarkReadListener);
        mBtnAll = (ImageButtonLeft)findViewById(0x7f09032a);
        mBtnAll.setOnClickListener(mOnAllListener);
        mTitleBar = (TitleBar)findViewById(0x7f090323);
        String s = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_INBOX);
        mTitleBar.init(this, s);
        mInboxNativeManager.addDataListener(this);
        mInboxNativeManager.getMessageList(this);
        mInboxNativeManager.resetInboxBadge();
    }

    public void onData(InboxMessage ainboxmessage[], int i, int j, boolean flag)
    {
        if (!isAlive())
        {
            return;
        }
        Logger.i_("INBOX", (new StringBuilder("Inbox messages are loaded. Size: ")).append(ainboxmessage.length).append(" .Unread: ").append(j).append(". More: ").append(flag).toString());
        mMoreMessages = flag;
        mUnread = j;
        mMsgList.clear();
        mMsgList.addAll(Arrays.asList(ainboxmessage));
        mListAdpater.refresh();
        if (mLoadingMore)
        {
            mListAdpater.setLoading(false);
            mLoadingMore = false;
        }
        if (mClearChecked)
        {
            mListAdpater.clearChecked();
            mClearChecked = false;
        }
        setBottomBar();
    }

    protected void onDestroy()
    {
        super.onDestroy();
        mInboxNativeManager.removeDataListener(this);
    }

    static 
    {
        InboxNativeManager.create();
    }









}
