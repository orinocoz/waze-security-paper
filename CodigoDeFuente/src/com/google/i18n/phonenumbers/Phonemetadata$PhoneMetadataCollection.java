// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.i18n.phonenumbers:
//            Phonemetadata

public static class metadata_
    implements Externalizable
{
    public static final class Builder extends Phonemetadata.PhoneMetadataCollection
    {

        public Phonemetadata.PhoneMetadataCollection build()
        {
            return this;
        }

        public Builder()
        {
        }
    }


    private static final long serialVersionUID = 1L;
    private List metadata_;

    public static Builder newBuilder()
    {
        return new Builder();
    }

    public Builder addMetadata(Builder builder)
    {
        if (builder == null)
        {
            throw new NullPointerException();
        } else
        {
            metadata_.add(builder);
            return this;
        }
    }

    public metadata_ clear()
    {
        metadata_.clear();
        return this;
    }

    public int getMetadataCount()
    {
        return metadata_.size();
    }

    public List getMetadataList()
    {
        return metadata_;
    }

    public void readExternal(ObjectInput objectinput)
        throws IOException
    {
        int i = objectinput.readInt();
        for (int j = 0; j < i; j++)
        {
            metadata_ metadata_1 = new metadata_();
            metadata_1.al(objectinput);
            metadata_.add(metadata_1);
        }

    }

    public void writeExternal(ObjectOutput objectoutput)
        throws IOException
    {
        int i = getMetadataCount();
        objectoutput.writeInt(i);
        for (int j = 0; j < i; j++)
        {
            ((getMetadataCount)metadata_.get(j)).nal(objectoutput);
        }

    }

    public Builder()
    {
        metadata_ = new ArrayList();
    }
}
