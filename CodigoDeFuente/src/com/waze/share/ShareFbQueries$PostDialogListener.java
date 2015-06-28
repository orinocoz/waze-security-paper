// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.os.Bundle;
import android.util.Log;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;

// Referenced classes of package com.waze.share:
//            ShareFbQueries

public static class 
    implements com.facebook.widget.
{

    public void onComplete(Bundle bundle, FacebookException facebookexception)
    {
        if (facebookexception == null)
        {
            if (bundle.getString("post_id") != null)
            {
                Log.d("Facebook queries", "Post has been performed successfully through the FB post dialog");
                return;
            } else
            {
                Log.i("Facebook queries", "FB post dialog was canceled");
                return;
            }
        }
        if (facebookexception instanceof FacebookOperationCanceledException)
        {
            Log.i("Facebook queries", "FB post dialog was canceled by X button");
            return;
        } else
        {
            Log.i("Facebook queries", (new StringBuilder("FB post dialog: generic error: ")).append(facebookexception.toString()).toString());
            return;
        }
    }

    public ()
    {
    }
}
