// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tokenautocomplete;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

// Referenced classes of package com.tokenautocomplete:
//            TokenCompleteTextView

private static class baseObjects extends android.view.vedState
{

    public static final android.os.SavedState.baseObjects CREATOR = new android.os.Parcelable.Creator() {

        public TokenCompleteTextView.SavedState createFromParcel(Parcel parcel)
        {
            return new TokenCompleteTextView.SavedState(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public TokenCompleteTextView.SavedState[] newArray(int i)
        {
            return new TokenCompleteTextView.SavedState[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    boolean allowDuplicates;
    ArrayList baseObjects;
    String prefix;
    tyle tokenClickStyle;
    Style tokenDeleteStyle;

    public String toString()
    {
        return (new StringBuilder(String.valueOf((new StringBuilder("TokenCompleteTextView.SavedState{")).append(Integer.toHexString(System.identityHashCode(this))).append(" tokens=").append(baseObjects).toString()))).append("}").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        super.(parcel, i);
        parcel.writeString(prefix);
        int j;
        if (allowDuplicates)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        parcel.writeInt(j);
        parcel.writeInt(tokenClickStyle.ordinal());
        parcel.writeInt(tokenDeleteStyle.ordinal());
        parcel.writeSerializable(baseObjects);
    }


    _cls1(Parcel parcel)
    {
        super(parcel);
        prefix = parcel.readString();
        boolean flag;
        if (parcel.readInt() != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        allowDuplicates = flag;
        tokenClickStyle = tyle.values()[parcel.readInt()];
        tokenDeleteStyle = Style.values()[parcel.readInt()];
        baseObjects = (ArrayList)parcel.readSerializable();
    }

    baseObjects(Parcelable parcelable)
    {
        super(parcelable);
    }
}
