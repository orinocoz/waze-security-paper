// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package com.waze.reports:
//            PhotoPagerSection

public static class isUploading
    implements Parcelable
{

    public static final android.os.Image.isUploading CREATOR = new android.os.Parcelable.Creator() {

        public PhotoPagerSection.VenueImage createFromParcel(Parcel parcel)
        {
            return new PhotoPagerSection.VenueImage(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public PhotoPagerSection.VenueImage[] newArray(int i)
        {
            return new PhotoPagerSection.VenueImage[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public boolean canDelete;
    public boolean didLike;
    public String imageThumbnailUri;
    public String imageUri;
    public boolean isUploading;
    public String mood;
    public String submitter;

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        int j = 1;
        parcel.writeString(imageUri);
        parcel.writeString(imageThumbnailUri);
        parcel.writeString(submitter);
        parcel.writeString(mood);
        int k;
        int l;
        if (didLike)
        {
            k = j;
        } else
        {
            k = 0;
        }
        parcel.writeInt(k);
        if (canDelete)
        {
            l = j;
        } else
        {
            l = 0;
        }
        parcel.writeInt(l);
        if (!isUploading)
        {
            j = 0;
        }
        parcel.writeInt(j);
    }


    public _cls1(Parcel parcel)
    {
        boolean flag = true;
        super();
        didLike = false;
        canDelete = false;
        isUploading = false;
        imageUri = parcel.readString();
        imageThumbnailUri = parcel.readString();
        submitter = parcel.readString();
        mood = parcel.readString();
        boolean flag1;
        boolean flag2;
        if (parcel.readInt() != 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        didLike = flag1;
        if (parcel.readInt() != 0)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        canDelete = flag2;
        if (parcel.readInt() == 0)
        {
            flag = false;
        }
        isUploading = flag;
    }

    public isUploading(String s, String s1, String s2, String s3, boolean flag, boolean flag1, boolean flag2)
    {
        didLike = false;
        canDelete = false;
        isUploading = false;
        imageUri = s;
        imageThumbnailUri = s1;
        submitter = s2;
        mood = s3;
        didLike = flag;
        canDelete = flag1;
        isUploading = flag2;
    }
}
