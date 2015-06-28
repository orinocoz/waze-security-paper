// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

public class CandidateProduct
    implements Parcelable, Serializable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public CandidateProduct createFromParcel(Parcel parcel)
        {
            return new CandidateProduct(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public CandidateProduct[] newArray(int i)
        {
            return new CandidateProduct[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    private static final long serialVersionUID = 1L;
    public int lastUpdated;
    public float price;
    public String prodId;
    public String updatedBy;

    public CandidateProduct()
    {
    }

    public CandidateProduct(Parcel parcel)
    {
        prodId = parcel.readString();
        price = parcel.readFloat();
        lastUpdated = parcel.readInt();
        updatedBy = parcel.readString();
    }

    public CandidateProduct(CandidateProduct candidateproduct)
    {
        prodId = new String(candidateproduct.prodId);
        price = candidateproduct.price;
        lastUpdated = candidateproduct.lastUpdated;
        updatedBy = new String(candidateproduct.updatedBy);
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(prodId);
        parcel.writeFloat(price);
        parcel.writeInt(lastUpdated);
        parcel.writeString(updatedBy);
    }

}
