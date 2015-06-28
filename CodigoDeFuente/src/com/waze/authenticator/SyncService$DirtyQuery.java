// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.authenticator;

import android.net.Uri;

// Referenced classes of package com.waze.authenticator:
//            SyncService

private static final class 
{

    public static final Uri CONTENT_URI;
    public static final String PROJECTION[] = {
        "_id", "version", "sourceid"
    };
    public static final String PROJECTION2[] = {
        "_id", "version", "deleted", "sourceid", "sync4"
    };
    public static final String PROJECTION3[] = {
        "_id", "data1", "display_name", "version", "photo_uri", "raw_contact_id"
    };
    public static final String PROJECTION4[] = {
        "_id", "data1", "display_name", "version", "raw_contact_id"
    };
    public static final String SELECTION = "dirty=1 AND account_type='com.waze' OR deleted=1 AND account_type='com.waze'";
    public static final String SELECTION2 = "data_sync1!=data1";

    static 
    {
        CONTENT_URI = android.provider.tacts.CONTENT_URI.buildUpon().Parameter("caller_is_syncadapter", "true").Parameter();
    }

    private ()
    {
    }
}
