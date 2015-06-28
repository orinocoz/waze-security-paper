// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.authenticator;

import android.accounts.AbstractAccountAuthenticator;
import android.accounts.Account;
import android.accounts.AccountAuthenticatorResponse;
import android.accounts.NetworkErrorException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.waze.FreeMapAppActivity;

public class Authenticator extends AbstractAccountAuthenticator
{

    Context mContext;

    public Authenticator(Context context)
    {
        super(context);
        mContext = null;
        mContext = context;
    }

    public Bundle addAccount(AccountAuthenticatorResponse accountauthenticatorresponse, String s, String s1, String as[], Bundle bundle)
        throws NetworkErrorException
    {
        Intent intent = new Intent(mContext, com/waze/FreeMapAppActivity);
        Bundle bundle1 = new Bundle();
        intent.putExtra("Add", true);
        bundle1.putParcelable("intent", intent);
        return bundle1;
    }

    public Bundle confirmCredentials(AccountAuthenticatorResponse accountauthenticatorresponse, Account account, Bundle bundle)
        throws NetworkErrorException
    {
        return null;
    }

    public Bundle editProperties(AccountAuthenticatorResponse accountauthenticatorresponse, String s)
    {
        throw new UnsupportedOperationException();
    }

    public Bundle getAuthToken(AccountAuthenticatorResponse accountauthenticatorresponse, Account account, String s, Bundle bundle)
        throws NetworkErrorException
    {
        throw new UnsupportedOperationException();
    }

    public String getAuthTokenLabel(String s)
    {
        throw new UnsupportedOperationException();
    }

    public Bundle hasFeatures(AccountAuthenticatorResponse accountauthenticatorresponse, Account account, String as[])
        throws NetworkErrorException
    {
        throw new UnsupportedOperationException();
    }

    public Bundle updateCredentials(AccountAuthenticatorResponse accountauthenticatorresponse, Account account, String s, Bundle bundle)
        throws NetworkErrorException
    {
        throw new UnsupportedOperationException();
    }
}
