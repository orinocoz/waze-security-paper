// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.identity.intents;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.google.android.gms.identity.intents:
//            a

public final class UserAddressRequest
    implements SafeParcelable
{
    public final class Builder
    {

        final UserAddressRequest UC;

        public Builder addAllowedCountrySpecification(CountrySpecification countryspecification)
        {
            if (UC.UB == null)
            {
                UC.UB = new ArrayList();
            }
            UC.UB.add(countryspecification);
            return this;
        }

        public Builder addAllowedCountrySpecifications(Collection collection)
        {
            if (UC.UB == null)
            {
                UC.UB = new ArrayList();
            }
            UC.UB.addAll(collection);
            return this;
        }

        public UserAddressRequest build()
        {
            if (UC.UB != null)
            {
                UC.UB = Collections.unmodifiableList(UC.UB);
            }
            return UC;
        }

        private Builder()
        {
            UC = UserAddressRequest.this;
            super();
        }

    }


    public static final android.os.Parcelable.Creator CREATOR = new a();
    List UB;
    private final int xJ;

    UserAddressRequest()
    {
        xJ = 1;
    }

    UserAddressRequest(int i, List list)
    {
        xJ = i;
        UB = list;
    }

    public static Builder newBuilder()
    {
        UserAddressRequest useraddressrequest = new UserAddressRequest();
        useraddressrequest.getClass();
        return useraddressrequest. new Builder();
    }

    public int describeContents()
    {
        return 0;
    }

    public int getVersionCode()
    {
        return xJ;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        a.a(this, parcel, i);
    }

}
