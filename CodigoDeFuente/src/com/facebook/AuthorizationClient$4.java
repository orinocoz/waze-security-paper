// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import java.util.ArrayList;

// Referenced classes of package com.facebook:
//            AuthorizationClient, Session, Response

class val.declinedPermissions
    implements val.declinedPermissions
{

    final AuthorizationClient this$0;
    private final ArrayList val$declinedPermissions;
    private final ArrayList val$grantedPermissions;

    public void onCompleted(Response response)
    {
        r r;
        try
        {
            r = Session.handlePermissionResponse(response);
        }
        catch (Exception exception)
        {
            return;
        }
        if (r == null)
        {
            break MISSING_BLOCK_LABEL_33;
        }
        val$grantedPermissions.addAll(r.getGrantedPermissions());
        val$declinedPermissions.addAll(r.getDeclinedPermissions());
    }

    r()
    {
        this$0 = final_authorizationclient;
        val$grantedPermissions = arraylist;
        val$declinedPermissions = ArrayList.this;
        super();
    }
}
