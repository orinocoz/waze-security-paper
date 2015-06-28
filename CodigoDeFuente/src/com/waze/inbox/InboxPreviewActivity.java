// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.inbox;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.waze.AppService;
import com.waze.Logger;
import com.waze.NativeManager;
import com.waze.view.web.SimpleWebActivity;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

// Referenced classes of package com.waze.inbox:
//            InboxMessage

public class InboxPreviewActivity extends SimpleWebActivity
{

    private InboxMessage mMessage;
    private boolean mShowInbox;

    public InboxPreviewActivity()
    {
        mShowInbox = false;
    }

    public static void Start(final Activity context, final InboxMessage msg, final Boolean showInbox)
    {
        if (msg == null)
        {
            return;
        } else
        {
            com.waze.NativeManager.OnUrlHandleResult onurlhandleresult = new com.waze.NativeManager.OnUrlHandleResult() {

                private final Activity val$context;
                private final InboxMessage val$msg;
                private final Boolean val$showInbox;

                public void event()
                {
                    if (result)
                    {
                        Logger.d_("INBOX", "Url was handled - ignoring preview");
                        return;
                    } else
                    {
                        AppService.Post(showInbox. new Runnable() {

                            final _cls1 this$1;
                            private final Activity val$context;
                            private final InboxMessage val$msg;
                            private final Boolean val$showInbox;

                            public void run()
                            {
                                InboxPreviewActivity.StartOnUrlHandled(context, msg, showInbox);
                            }

            
            {
                this$1 = final__pcls1;
                context = activity;
                msg = inboxmessage;
                showInbox = Boolean.this;
                super();
            }
                        });
                        return;
                    }
                }

            
            {
                context = activity;
                msg = inboxmessage;
                showInbox = boolean1;
                super();
            }
            };
            NativeManager.getInstance().UrlHandler(msg.message, onurlhandleresult);
            return;
        }
    }

    private static boolean StartOnUrlHandled(Activity activity, InboxMessage inboxmessage, Boolean boolean1)
    {
        if (activity == null)
        {
            activity = AppService.getActiveActivity();
        }
        Intent intent = new Intent(activity, com/waze/inbox/InboxPreviewActivity);
        intent.putExtra("Selected message", inboxmessage);
        if (boolean1 != null)
        {
            intent.putExtra("Show inbox", boolean1);
        }
        activity.startActivityForResult(intent, 15);
        return true;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mMessage = (InboxMessage)getIntent().getExtras().getSerializable("Selected message");
        mShowInbox = getIntent().getExtras().getBoolean("Show inbox", false);
        setTitleStr(mMessage.title);
    }

    public void onWebViewSize(int i, int j)
    {
        if (mMessage.messageType == 0 || mMessage.messageType == 2)
        {
            loadUrl(mMessage.message);
        }
        if (mMessage.messageType == 1)
        {
            try
            {
                File file = File.createTempFile("content", ".tmp", getCacheDir());
                FileOutputStream fileoutputstream = new FileOutputStream(file);
                fileoutputstream.write(mMessage.message.getBytes());
                fileoutputstream.close();
                Log.d("WAZE", (new StringBuilder("Loading html from file: ")).append(file.getAbsolutePath()).toString());
                loadUrl((new StringBuilder("file://")).append(file.getAbsolutePath()).toString());
                return;
            }
            catch (IOException ioexception)
            {
                Log.e("WAZE", "IO exception while creating message preview temp file!", ioexception);
            }
            return;
        } else
        {
            Log.e("WAZE", (new StringBuilder("Unsupported message type: ")).append(mMessage.messageType).toString());
            return;
        }
    }

}
