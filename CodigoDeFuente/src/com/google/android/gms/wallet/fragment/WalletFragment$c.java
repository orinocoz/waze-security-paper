// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.fragment;

import android.app.Fragment;
import android.content.res.Resources;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.dynamic.a;
import com.google.android.gms.dynamic.f;
import com.google.android.gms.internal.lt;

// Referenced classes of package com.google.android.gms.wallet.fragment:
//            WalletFragment, WalletFragmentOptions, WalletFragmentStyle

private class <init> extends a
    implements android.view.ner
{

    final WalletFragment akw;

    protected void a(FrameLayout framelayout)
    {
        Button button = new Button(com.google.android.gms.wallet.fragment.WalletFragment.a(akw).getActivity());
        button.setText(com.google.android.gms.uy_button_place_holder);
        int i = -1;
        int j = -2;
        if (WalletFragment.e(akw) != null)
        {
            WalletFragmentStyle walletfragmentstyle = WalletFragment.e(akw).getFragmentStyle();
            if (walletfragmentstyle != null)
            {
                android.util.DisplayMetrics displaymetrics = com.google.android.gms.wallet.fragment.WalletFragment.a(akw).getResources().getDisplayMetrics();
                i = walletfragmentstyle.a("buyButtonWidth", displaymetrics, i);
                j = walletfragmentstyle.a("buyButtonHeight", displaymetrics, j);
            }
        }
        button.setLayoutParams(new android.view.arams(i, j));
        button.setOnClickListener(this);
        framelayout.addView(button);
    }

    protected void a(f f1)
    {
        android.app.Activity activity = com.google.android.gms.wallet.fragment.WalletFragment.a(akw).getActivity();
        if (WalletFragment.b(akw) == null && WalletFragment.c(akw) && activity != null)
        {
            try
            {
                com.google.android.gms.internal.ll ll = lt.a(activity, WalletFragment.d(akw), WalletFragment.e(akw), com.google.android.gms.wallet.fragment.WalletFragment.f(akw));
                com.google.android.gms.wallet.fragment.WalletFragment.a(akw, new <init>(ll, null));
                com.google.android.gms.wallet.fragment.WalletFragment.a(akw, null);
            }
            catch (GooglePlayServicesNotAvailableException googleplayservicesnotavailableexception)
            {
                return;
            }
            f1.a(WalletFragment.b(akw));
            if (WalletFragment.g(akw) != null)
            {
                com.google.android.gms.wallet.fragment.a(WalletFragment.b(akw), WalletFragment.g(akw));
                com.google.android.gms.wallet.fragment.WalletFragment.a(akw, null);
            }
            if (WalletFragment.h(akw) != null)
            {
                com.google.android.gms.wallet.fragment.a(WalletFragment.b(akw), WalletFragment.h(akw));
                com.google.android.gms.wallet.fragment.WalletFragment.a(akw, null);
            }
            if (WalletFragment.i(akw) != null)
            {
                com.google.android.gms.wallet.fragment.a(WalletFragment.b(akw), WalletFragment.i(akw));
                com.google.android.gms.wallet.fragment.WalletFragment.a(akw, null);
            }
            if (WalletFragment.j(akw) != null)
            {
                com.google.android.gms.wallet.fragment.a(WalletFragment.b(akw), WalletFragment.j(akw).booleanValue());
                com.google.android.gms.wallet.fragment.WalletFragment.a(akw, null);
            }
        }
    }

    public void onClick(View view)
    {
        android.app.Activity activity = com.google.android.gms.wallet.fragment.WalletFragment.a(akw).getActivity();
        GooglePlayServicesUtil.showErrorDialogFragment(GooglePlayServicesUtil.isGooglePlayServicesAvailable(activity), activity, -1);
    }

    private ableException(WalletFragment walletfragment)
    {
        akw = walletfragment;
        super();
    }

    akw(WalletFragment walletfragment, akw akw1)
    {
        this(walletfragment);
    }
}
