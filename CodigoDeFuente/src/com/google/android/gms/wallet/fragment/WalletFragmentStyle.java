// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcel;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.wallet.fragment:
//            c, Dimension

public final class WalletFragmentStyle
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new c();
    Bundle akB;
    int akC;
    final int xJ;

    public WalletFragmentStyle()
    {
        xJ = 1;
        akB = new Bundle();
    }

    WalletFragmentStyle(int i, Bundle bundle, int j)
    {
        xJ = i;
        akB = bundle;
        akC = j;
    }

    private void a(TypedArray typedarray, int i, String s)
    {
        TypedValue typedvalue;
        if (!akB.containsKey(s))
        {
            if ((typedvalue = typedarray.peekValue(i)) != null)
            {
                akB.putLong(s, Dimension.a(typedvalue));
                return;
            }
        }
    }

    private void a(TypedArray typedarray, int i, String s, String s1)
    {
        TypedValue typedvalue;
        if (!akB.containsKey(s) && !akB.containsKey(s1))
        {
            if ((typedvalue = typedarray.peekValue(i)) != null)
            {
                if (typedvalue.type >= 28 && typedvalue.type <= 31)
                {
                    akB.putInt(s, typedvalue.data);
                    return;
                } else
                {
                    akB.putInt(s1, typedvalue.resourceId);
                    return;
                }
            }
        }
    }

    private void b(TypedArray typedarray, int i, String s)
    {
        TypedValue typedvalue;
        if (!akB.containsKey(s))
        {
            if ((typedvalue = typedarray.peekValue(i)) != null)
            {
                akB.putInt(s, typedvalue.data);
                return;
            }
        }
    }

    public void N(Context context)
    {
        int i;
        TypedArray typedarray;
        if (akC <= 0)
        {
            i = com.google.android.gms.R.style.WalletFragmentDefaultStyle;
        } else
        {
            i = akC;
        }
        typedarray = context.obtainStyledAttributes(i, com.google.android.gms.R.styleable.WalletFragmentStyle);
        a(typedarray, 1, "buyButtonWidth");
        a(typedarray, 0, "buyButtonHeight");
        b(typedarray, 2, "buyButtonText");
        b(typedarray, 3, "buyButtonAppearance");
        b(typedarray, 4, "maskedWalletDetailsTextAppearance");
        b(typedarray, 5, "maskedWalletDetailsHeaderTextAppearance");
        a(typedarray, 6, "maskedWalletDetailsBackgroundColor", "maskedWalletDetailsBackgroundResource");
        b(typedarray, 7, "maskedWalletDetailsButtonTextAppearance");
        a(typedarray, 8, "maskedWalletDetailsButtonBackgroundColor", "maskedWalletDetailsButtonBackgroundResource");
        b(typedarray, 9, "maskedWalletDetailsLogoTextColor");
        b(typedarray, 10, "maskedWalletDetailsLogoImageType");
        typedarray.recycle();
    }

    public int a(String s, DisplayMetrics displaymetrics, int i)
    {
        if (akB.containsKey(s))
        {
            i = Dimension.a(akB.getLong(s), displaymetrics);
        }
        return i;
    }

    public int describeContents()
    {
        return 0;
    }

    public WalletFragmentStyle setBuyButtonAppearance(int i)
    {
        akB.putInt("buyButtonAppearance", i);
        return this;
    }

    public WalletFragmentStyle setBuyButtonHeight(int i)
    {
        akB.putLong("buyButtonHeight", Dimension.dM(i));
        return this;
    }

    public WalletFragmentStyle setBuyButtonHeight(int i, float f)
    {
        akB.putLong("buyButtonHeight", Dimension.a(i, f));
        return this;
    }

    public WalletFragmentStyle setBuyButtonText(int i)
    {
        akB.putInt("buyButtonText", i);
        return this;
    }

    public WalletFragmentStyle setBuyButtonWidth(int i)
    {
        akB.putLong("buyButtonWidth", Dimension.dM(i));
        return this;
    }

    public WalletFragmentStyle setBuyButtonWidth(int i, float f)
    {
        akB.putLong("buyButtonWidth", Dimension.a(i, f));
        return this;
    }

    public WalletFragmentStyle setMaskedWalletDetailsBackgroundColor(int i)
    {
        akB.remove("maskedWalletDetailsBackgroundResource");
        akB.putInt("maskedWalletDetailsBackgroundColor", i);
        return this;
    }

    public WalletFragmentStyle setMaskedWalletDetailsBackgroundResource(int i)
    {
        akB.remove("maskedWalletDetailsBackgroundColor");
        akB.putInt("maskedWalletDetailsBackgroundResource", i);
        return this;
    }

    public WalletFragmentStyle setMaskedWalletDetailsButtonBackgroundColor(int i)
    {
        akB.remove("maskedWalletDetailsButtonBackgroundResource");
        akB.putInt("maskedWalletDetailsButtonBackgroundColor", i);
        return this;
    }

    public WalletFragmentStyle setMaskedWalletDetailsButtonBackgroundResource(int i)
    {
        akB.remove("maskedWalletDetailsButtonBackgroundColor");
        akB.putInt("maskedWalletDetailsButtonBackgroundResource", i);
        return this;
    }

    public WalletFragmentStyle setMaskedWalletDetailsButtonTextAppearance(int i)
    {
        akB.putInt("maskedWalletDetailsButtonTextAppearance", i);
        return this;
    }

    public WalletFragmentStyle setMaskedWalletDetailsHeaderTextAppearance(int i)
    {
        akB.putInt("maskedWalletDetailsHeaderTextAppearance", i);
        return this;
    }

    public WalletFragmentStyle setMaskedWalletDetailsLogoImageType(int i)
    {
        akB.putInt("maskedWalletDetailsLogoImageType", i);
        return this;
    }

    public WalletFragmentStyle setMaskedWalletDetailsLogoTextColor(int i)
    {
        akB.putInt("maskedWalletDetailsLogoTextColor", i);
        return this;
    }

    public WalletFragmentStyle setMaskedWalletDetailsTextAppearance(int i)
    {
        akB.putInt("maskedWalletDetailsTextAppearance", i);
        return this;
    }

    public WalletFragmentStyle setStyleResourceId(int i)
    {
        akC = i;
        return this;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        c.a(this, parcel, i);
    }

}
