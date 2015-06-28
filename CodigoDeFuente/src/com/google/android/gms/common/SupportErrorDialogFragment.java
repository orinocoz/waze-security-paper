// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentManager;
import com.google.android.gms.internal.hn;

public class SupportErrorDialogFragment extends DialogFragment
{

    private android.content.DialogInterface.OnCancelListener CR;
    private Dialog mDialog;

    public SupportErrorDialogFragment()
    {
        mDialog = null;
        CR = null;
    }

    public static SupportErrorDialogFragment newInstance(Dialog dialog)
    {
        return newInstance(dialog, null);
    }

    public static SupportErrorDialogFragment newInstance(Dialog dialog, android.content.DialogInterface.OnCancelListener oncancellistener)
    {
        SupportErrorDialogFragment supporterrordialogfragment = new SupportErrorDialogFragment();
        Dialog dialog1 = (Dialog)hn.b(dialog, "Cannot display null dialog");
        dialog1.setOnCancelListener(null);
        dialog1.setOnDismissListener(null);
        supporterrordialogfragment.mDialog = dialog1;
        if (oncancellistener != null)
        {
            supporterrordialogfragment.CR = oncancellistener;
        }
        return supporterrordialogfragment;
    }

    public void onCancel(DialogInterface dialoginterface)
    {
        if (CR != null)
        {
            CR.onCancel(dialoginterface);
        }
    }

    public Dialog onCreateDialog(Bundle bundle)
    {
        if (mDialog == null)
        {
            setShowsDialog(false);
        }
        return mDialog;
    }

    public void show(FragmentManager fragmentmanager, String s)
    {
        super.show(fragmentmanager, s);
    }
}
