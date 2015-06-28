// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.inbox;

import com.waze.AppService;
import com.waze.Logger;
import com.waze.NativeManager;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.ifs.async.RunnableUICallback;
import com.waze.ifs.ui.ActivityBase;
import java.util.ArrayList;

// Referenced classes of package com.waze.inbox:
//            InboxMessage, InboxPreviewActivity

public class InboxNativeManager
{
    public static interface IInboxMessageListDataHandler
    {

        public abstract void onMessageList(InboxMessage ainboxmessage[], boolean flag);
    }

    public static interface InboxCountersHandler
    {

        public abstract void onCounters(int i, int j, int k);
    }

    public static interface InboxDataListener
    {

        public abstract void onData(InboxMessage ainboxmessage[], int i, int j, boolean flag);
    }


    public static final int INBOX_STATUS_FAILURE = 0x80000000;
    public static final int INBOX_STATUS_FAILURE_TIMEOUT = 0x80000001;
    public static final int INBOX_STATUS_MORE_MESSAGES = 1;
    public static final int INBOX_STATUS_SUCCESS;
    private static InboxNativeManager mInstance = null;
    private final ArrayList mInboxDataListeners = new ArrayList();
    private boolean mRefreshActive;

    public InboxNativeManager()
    {
        mRefreshActive = false;
    }

    private native void InitNativeLayerNTV();

    public static InboxNativeManager create()
    {
        if (mInstance == null)
        {
            mInstance = new InboxNativeManager();
            mInstance.initNativeLayer();
            NativeManager.registerOnAppStartedEvent(new RunnableExecutor() {

                public void event()
                {
                    InboxNativeManager.mInstance.registerDataListenerNTV();
                }

            });
        }
        return mInstance;
    }

    private native void deleteAllMessagesNTV();

    private native void deleteMessagesNTV(String as[]);

    private native int getInboxBadgeNTV();

    private native int getInboxSizeNTV();

    private native int getInboxUnreadNTV();

    public static InboxNativeManager getInstance()
    {
        create();
        return mInstance;
    }

    private native InboxMessage[] getMessageListNTV();

    private void initNativeLayer()
    {
        NativeManager.Post(new Runnable() {

            final InboxNativeManager this$0;

            public void run()
            {
                InitNativeLayerNTV();
            }

            
            {
                this$0 = InboxNativeManager.this;
                super();
            }
        });
    }

    private native void loadMoreMessagesNTV();

    private native boolean moreMessagesNTV();

    private void notifyDataListeners()
    {
        int i = getInboxUnreadNTV();
        final InboxMessage list[] = getMessageListNTV();
        boolean flag = moreMessagesNTV();
        AppService.Post(new Runnable() {

            final InboxNativeManager this$0;
            private final int val$badge;
            private final InboxMessage val$list[];
            private final boolean val$more;
            private final int val$unread;

            public void run()
            {
                int j = 0;
                do
                {
                    if (j >= mInboxDataListeners.size())
                    {
                        return;
                    }
                    ((InboxDataListener)mInboxDataListeners.get(j)).onData(list, badge, unread, more);
                    j++;
                } while (true);
            }

            
            {
                this$0 = InboxNativeManager.this;
                list = ainboxmessage;
                badge = i;
                unread = j;
                more = flag;
                super();
            }
        });
    }

    private void onDataListener()
    {
        notifyDataListeners();
    }

    private void onDelete(int i)
    {
        Logger.i_("INBOX", (new StringBuilder("## onDelete status: ")).append(i).toString());
    }

    private void onMoreMessages(int i)
    {
        Logger.i_("INBOX", (new StringBuilder("## onMoreMessages status: ")).append(i).toString());
    }

    private void onRefresh(int i)
    {
        Logger.i_("INBOX", (new StringBuilder("## onRefresh status: ")).append(i).toString());
    }

    private native void refreshNTV();

    private native void registerDataListenerNTV();

    private native void resetInboxBadgeNTV();

    private native void setReadNTV(String as[], boolean flag);

    public void addDataListener(InboxDataListener inboxdatalistener)
    {
        while (inboxdatalistener == null || mInboxDataListeners.contains(inboxdatalistener)) 
        {
            return;
        }
        mInboxDataListeners.add(inboxdatalistener);
    }

    public void deleteAllMessages()
    {
        NativeManager.Post(new Runnable() {

            final InboxNativeManager this$0;

            public void run()
            {
                deleteAllMessagesNTV();
            }

            
            {
                this$0 = InboxNativeManager.this;
                super();
            }
        });
    }

    public void deleteMessages(final String ids[])
    {
        NativeManager.Post(new Runnable() {

            final InboxNativeManager this$0;
            private final String val$ids[];

            public void run()
            {
                deleteMessagesNTV(ids);
            }

            
            {
                this$0 = InboxNativeManager.this;
                ids = as;
                super();
            }
        });
    }

    public void getInboxCounters(final InboxCountersHandler dataHandler)
    {
        NativeManager.Post(new RunnableUICallback() {

            int mBadge;
            int mTotal;
            int mUnread;
            final InboxNativeManager this$0;
            private final InboxCountersHandler val$dataHandler;

            public void callback()
            {
                if (dataHandler != null)
                {
                    dataHandler.onCounters(mBadge, mUnread, mTotal);
                }
            }

            public void event()
            {
                mUnread = getInboxUnreadNTV();
                mTotal = getInboxSizeNTV();
                mBadge = getInboxBadgeNTV();
            }

            
            {
                this$0 = InboxNativeManager.this;
                dataHandler = inboxcountershandler;
                super();
            }
        });
    }

    public void getMessageList(InboxDataListener inboxdatalistener)
    {
        NativeManager.Post(new Runnable() {

            final InboxNativeManager this$0;

            public void run()
            {
                notifyDataListeners();
            }

            
            {
                this$0 = InboxNativeManager.this;
                super();
            }
        });
    }

    public void loadMoreMessages()
    {
        NativeManager.Post(new Runnable() {

            final InboxNativeManager this$0;

            public void run()
            {
                loadMoreMessagesNTV();
            }

            
            {
                this$0 = InboxNativeManager.this;
                super();
            }
        });
    }

    public void removeDataListener(InboxDataListener inboxdatalistener)
    {
        while (inboxdatalistener == null || !mInboxDataListeners.contains(inboxdatalistener)) 
        {
            return;
        }
        mInboxDataListeners.remove(inboxdatalistener);
    }

    public void requestRefresh()
    {
        if (mRefreshActive)
        {
            return;
        } else
        {
            NativeManager.Post(new Runnable() {

                final InboxNativeManager this$0;

                public void run()
                {
                    refreshNTV();
                }

            
            {
                this$0 = InboxNativeManager.this;
                super();
            }
            });
            return;
        }
    }

    public void resetInboxBadge()
    {
        NativeManager.Post(new Runnable() {

            final InboxNativeManager this$0;

            public void run()
            {
                resetInboxBadgeNTV();
            }

            
            {
                this$0 = InboxNativeManager.this;
                super();
            }
        });
    }

    public void setRead(final String ids[], final boolean read)
    {
        NativeManager.Post(new Runnable() {

            final InboxNativeManager this$0;
            private final String val$ids[];
            private final boolean val$read;

            public void run()
            {
                setReadNTV(ids, read);
            }

            
            {
                this$0 = InboxNativeManager.this;
                ids = as;
                read = flag;
                super();
            }
        });
    }

    protected void showMessage(final InboxMessage msg, final boolean showInbox)
    {
        final com.waze.MainActivity activity = AppService.getMainActivity();
        if (activity == null)
        {
            Logger.e_("INBOX", "No activity context available");
            return;
        } else
        {
            AppService.Post(new Runnable() {

                final InboxNativeManager this$0;
                private final ActivityBase val$activity;
                private final InboxMessage val$msg;
                private final boolean val$showInbox;

                public void run()
                {
                    InboxPreviewActivity.Start(activity, msg, Boolean.valueOf(showInbox));
                }

            
            {
                this$0 = InboxNativeManager.this;
                activity = activitybase;
                msg = inboxmessage;
                showInbox = flag;
                super();
            }
            });
            return;
        }
    }















}
