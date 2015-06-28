// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.messages;

import android.content.Intent;
import com.waze.ifs.ui.ActivityBase;

// Referenced classes of package com.waze.messages:
//            MessagesNativeManager, UserMessageEditorActivity

class this._cls0
    implements Runnable
{

    final MessagesNativeManager this$0;

    public void run()
    {
        Intent intent = new Intent(MessagesNativeManager.access$4(MessagesNativeManager.this).mContext, com/waze/messages/UserMessageEditorActivity);
        intent.putExtra("Is private message", true);
        intent.putExtra("User data", MessagesNativeManager.access$4(MessagesNativeManager.this).mUser);
        intent.putExtra("On Send Handler", MessagesNativeManager.access$5(MessagesNativeManager.this));
        MessagesNativeManager.access$4(MessagesNativeManager.this).mContext.startActivityForResult(intent, MessagesNativeManager.access$4(MessagesNativeManager.this).mRqCode);
        MessagesNativeManager.access$6(MessagesNativeManager.this, null);
    }

    y()
    {
        this$0 = MessagesNativeManager.this;
        super();
    }
}
