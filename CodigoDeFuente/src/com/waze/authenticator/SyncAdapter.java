// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.authenticator;

import android.accounts.Account;
import android.accounts.OperationCanceledException;
import android.content.AbstractThreadedSyncAdapter;
import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SyncResult;
import android.os.Bundle;

// Referenced classes of package com.waze.authenticator:
//            SyncService

public class SyncAdapter extends AbstractThreadedSyncAdapter
{

    ContentResolver mContentResolver;
    Context mContext;

    public SyncAdapter(Context context, boolean flag)
    {
        super(context, flag);
        mContentResolver = context.getContentResolver();
        mContext = context;
    }

    public void onPerformSync(Account account, Bundle bundle, String s, ContentProviderClient contentproviderclient, SyncResult syncresult)
    {
        try
        {
            SyncService.performSync(mContext, account, bundle, s, contentproviderclient, syncresult);
            return;
        }
        catch (OperationCanceledException operationcanceledexception)
        {
            operationcanceledexception.printStackTrace();
        }
    }
}
