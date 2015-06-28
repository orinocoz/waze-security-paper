// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

// Referenced classes of package com.google.i18n.phonenumbers:
//            Phonemetadata

public static class exampleNumber_
    implements Externalizable
{
    public static final class Builder extends Phonemetadata.PhoneNumberDesc
    {

        public Phonemetadata.PhoneNumberDesc build()
        {
            return this;
        }

        public Builder()
        {
        }
    }


    private static final long serialVersionUID = 1L;
    private String exampleNumber_;
    private boolean hasExampleNumber;
    private boolean hasNationalNumberPattern;
    private boolean hasPossibleNumberPattern;
    private String nationalNumberPattern_;
    private String possibleNumberPattern_;

    public static Builder newBuilder()
    {
        return new Builder();
    }

    public boolean exactlySameAs(Builder builder)
    {
        return nationalNumberPattern_.equals(builder.nationalNumberPattern_) && possibleNumberPattern_.equals(builder.possibleNumberPattern_) && exampleNumber_.equals(builder.exampleNumber_);
    }

    public String getExampleNumber()
    {
        return exampleNumber_;
    }

    public String getNationalNumberPattern()
    {
        return nationalNumberPattern_;
    }

    public String getPossibleNumberPattern()
    {
        return possibleNumberPattern_;
    }

    public boolean hasExampleNumber()
    {
        return hasExampleNumber;
    }

    public boolean hasNationalNumberPattern()
    {
        return hasNationalNumberPattern;
    }

    public boolean hasPossibleNumberPattern()
    {
        return hasPossibleNumberPattern;
    }

    public hasPossibleNumberPattern mergeFrom(hasPossibleNumberPattern haspossiblenumberpattern)
    {
        if (haspossiblenumberpattern.hasNationalNumberPattern())
        {
            setNationalNumberPattern(haspossiblenumberpattern.getNationalNumberPattern());
        }
        if (haspossiblenumberpattern.hasPossibleNumberPattern())
        {
            setPossibleNumberPattern(haspossiblenumberpattern.getPossibleNumberPattern());
        }
        if (haspossiblenumberpattern.hasExampleNumber())
        {
            setExampleNumber(haspossiblenumberpattern.getExampleNumber());
        }
        return this;
    }

    public void readExternal(ObjectInput objectinput)
        throws IOException
    {
        if (objectinput.readBoolean())
        {
            setNationalNumberPattern(objectinput.readUTF());
        }
        if (objectinput.readBoolean())
        {
            setPossibleNumberPattern(objectinput.readUTF());
        }
        if (objectinput.readBoolean())
        {
            setExampleNumber(objectinput.readUTF());
        }
    }

    public setExampleNumber setExampleNumber(String s)
    {
        hasExampleNumber = true;
        exampleNumber_ = s;
        return this;
    }

    public exampleNumber_ setNationalNumberPattern(String s)
    {
        hasNationalNumberPattern = true;
        nationalNumberPattern_ = s;
        return this;
    }

    public nationalNumberPattern_ setPossibleNumberPattern(String s)
    {
        hasPossibleNumberPattern = true;
        possibleNumberPattern_ = s;
        return this;
    }

    public void writeExternal(ObjectOutput objectoutput)
        throws IOException
    {
        objectoutput.writeBoolean(hasNationalNumberPattern);
        if (hasNationalNumberPattern)
        {
            objectoutput.writeUTF(nationalNumberPattern_);
        }
        objectoutput.writeBoolean(hasPossibleNumberPattern);
        if (hasPossibleNumberPattern)
        {
            objectoutput.writeUTF(possibleNumberPattern_);
        }
        objectoutput.writeBoolean(hasExampleNumber);
        if (hasExampleNumber)
        {
            objectoutput.writeUTF(exampleNumber_);
        }
    }

    public Builder()
    {
        nationalNumberPattern_ = "";
        possibleNumberPattern_ = "";
        exampleNumber_ = "";
    }
}
