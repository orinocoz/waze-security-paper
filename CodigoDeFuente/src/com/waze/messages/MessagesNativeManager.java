// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.messages;

import android.content.Intent;
import com.waze.AppService;
import com.waze.Logger;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.user.UserData;

// Referenced classes of package com.waze.messages:
//            OnSendHandler, UserMessageEditorActivity

public class MessagesNativeManager
{
    public static class EditorContext
    {

        ActivityBase mContext;
        public int mRqCode;
        int mType;
        UserData mUser;

        public EditorContext(ActivityBase activitybase, int i, UserData userdata)
        {
            mRqCode = 0;
            mContext = activitybase;
            mType = i;
            mUser = userdata;
        }
    }

    protected static class _OnSendHandler extends OnSendHandler
    {

        protected static final long serialVersionUID = 0x1000001L;

        public void onSend(final boolean isPrivate, final UserData userData, String s)
        {
            NativeManager.Post(s. new Runnable() {

                final _OnSendHandler this$1;
                private final boolean val$isPrivate;
                private final String val$text;
                private final UserData val$userData;

                public void run()
                {
                    MessagesNativeManager.getInstance().onSendMessageNTV(isPrivate, userData, text);
                }

            
            {
                this$1 = final__ponsendhandler;
                isPrivate = flag;
                userData = userdata;
                text = String.this;
                super();
            }
            });
        }

        protected _OnSendHandler()
        {
        }
    }


    private static MessagesNativeManager mInstance = null;
    private final _OnSendHandler mOnSendHandler = new _OnSendHandler();
    private EditorContext mPendingEditor;

    public MessagesNativeManager()
    {
        mPendingEditor = null;
    }

    private native void InitNativeLayerNTV();

    private void cancelPrivateMessageEditor()
    {
        AppService.Post(new Runnable() {

            final MessagesNativeManager this$0;

            public void run()
            {
                mPendingEditor = null;
            }

            
            {
                this$0 = MessagesNativeManager.this;
                super();
            }
        });
    }

    public static MessagesNativeManager create()
    {
        if (mInstance == null)
        {
            mInstance = new MessagesNativeManager();
            mInstance.initNativeLayer();
        }
        return mInstance;
    }

    public static MessagesNativeManager getInstance()
    {
        create();
        return mInstance;
    }

    private void initNativeLayer()
    {
        NativeManager.Post(new Runnable() {

            final MessagesNativeManager this$0;

            public void run()
            {
                InitNativeLayerNTV();
            }

            
            {
                this$0 = MessagesNativeManager.this;
                super();
            }
        });
    }

    private native void onSendMessageNTV(boolean flag, UserData userdata, String s);

    private void showPrivateMessageEditor(UserData userdata)
    {
        if (mPendingEditor == null)
        {
            if (userdata == null)
            {
                Logger.w_("Messages", "There is no ping editor request active. Ignoring showing");
                return;
            }
            mPendingEditor = new EditorContext(AppService.getMainActivity(), 1, userdata);
        }
        AppService.Post(new Runnable() {

            final MessagesNativeManager this$0;

            public void run()
            {
                Intent intent = new Intent(mPendingEditor.mContext, com/waze/messages/UserMessageEditorActivity);
                intent.putExtra("Is private message", true);
                intent.putExtra("User data", mPendingEditor.mUser);
                intent.putExtra("On Send Handler", mOnSendHandler);
                mPendingEditor.mContext.startActivityForResult(intent, mPendingEditor.mRqCode);
                mPendingEditor = null;
            }

            
            {
                this$0 = MessagesNativeManager.this;
                super();
            }
        });
    }

    private void showPublicMessageEditor(UserData userdata)
    {
        if (mPendingEditor == null)
        {
            if (userdata == null)
            {
                Logger.w_("Messages", "There is no ping editor request active. Ignoring showing");
                return;
            }
            mPendingEditor = new EditorContext(AppService.getMainActivity(), 0, userdata);
        }
        AppService.Post(new Runnable() {

            final MessagesNativeManager this$0;

            public void run()
            {
                Intent intent = new Intent(mPendingEditor.mContext, com/waze/messages/UserMessageEditorActivity);
                intent.putExtra("Is private message", false);
                intent.putExtra("User data", mPendingEditor.mUser);
                intent.putExtra("On Send Handler", mOnSendHandler);
                mPendingEditor.mContext.startActivityForResult(intent, 0);
                mPendingEditor = null;
            }

            
            {
                this$0 = MessagesNativeManager.this;
                super();
            }
        });
    }

    private native void startPrivateMessageNTV();

    private native void startPublicMessageNTV();

    public void sendMessage(final boolean isPrivate, final UserData userData, final String text)
    {
        NativeManager.Post(new Runnable() {

            final MessagesNativeManager this$0;
            private final boolean val$isPrivate;
            private final String val$text;
            private final UserData val$userData;

            public void run()
            {
                MessagesNativeManager.getInstance().onSendMessageNTV(isPrivate, userData, text);
            }

            
            {
                this$0 = MessagesNativeManager.this;
                isPrivate = flag;
                userData = userdata;
                text = s;
                super();
            }
        });
    }

    public void startPrivate(EditorContext editorcontext)
    {
        if (mPendingEditor != null)
        {
            Logger.w_("Messages", "There is already message editor request active. Ignoring start");
            return;
        } else
        {
            Runnable runnable = new Runnable() {

                final MessagesNativeManager this$0;

                public void run()
                {
                    startPrivateMessageNTV();
                }

            
            {
                this$0 = MessagesNativeManager.this;
                super();
            }
            };
            mPendingEditor = editorcontext;
            NativeManager.Post(runnable);
            return;
        }
    }

    protected void startPublic(EditorContext editorcontext)
    {
        if (mPendingEditor != null)
        {
            Logger.w_("Messages", "There is already message editor request active. Ignoring start");
            return;
        } else
        {
            Runnable runnable = new Runnable() {

                final MessagesNativeManager this$0;

                public void run()
                {
                    startPublicMessageNTV();
                }

            
            {
                this$0 = MessagesNativeManager.this;
                super();
            }
            };
            mPendingEditor = editorcontext;
            NativeManager.Post(runnable);
            return;
        }
    }








}
