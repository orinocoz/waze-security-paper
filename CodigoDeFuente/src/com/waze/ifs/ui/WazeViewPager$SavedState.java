// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;

// Referenced classes of package com.waze.ifs.ui:
//            WazeViewPager

public static class loader extends android.view.te
{

    public static final android.os.atCreatorCallbacks CREATOR = ParcelableCompat.newCreator(new ParcelableCompatCreatorCallbacks() {

        public WazeViewPager.SavedState createFromParcel(Parcel parcel, ClassLoader classloader)
        {
            return new WazeViewPager.SavedState(parcel, classloader);
        }

        public volatile Object createFromParcel(Parcel parcel, ClassLoader classloader)
        {
            return createFromParcel(parcel, classloader);
        }

        public WazeViewPager.SavedState[] newArray(int i)
        {
            return new WazeViewPager.SavedState[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    });
    Parcelable adapterState;
    ClassLoader loader;
    int position;

    public String toString()
    {
        return (new StringBuilder("FragmentPager.SavedState{")).append(Integer.toHexString(System.identityHashCode(this))).append(" position=").append(position).append("}").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        super.ToParcel(parcel, i);
        parcel.writeInt(position);
        parcel.writeParcelable(adapterState, i);
    }


    _cls1(Parcel parcel, ClassLoader classloader)
    {
        super(parcel);
        if (classloader == null)
        {
            classloader = getClass().getClassLoader();
        }
        position = parcel.readInt();
        adapterState = parcel.readParcelable(classloader);
        loader = classloader;
    }

    public loader(Parcelable parcelable)
    {
        super(parcelable);
    }
}
