// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

// Referenced classes of package com.google.i18n.phonenumbers:
//            AlternateFormatsCountryCodeSet, ShortNumbersRegionCodeSet, PhoneNumberMatcher

class MetadataManager
{

    private static final String ALTERNATE_FORMATS_FILE_PREFIX = "/com/google/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto";
    private static final Logger LOGGER = Logger.getLogger(com/google/i18n/phonenumbers/MetadataManager.getName());
    private static final String SHORT_NUMBER_METADATA_FILE_PREFIX = "/com/google/i18n/phonenumbers/data/ShortNumberMetadataProto";
    private static final Map callingCodeToAlternateFormatsMap = Collections.synchronizedMap(new HashMap());
    private static final Set countryCodeSet = AlternateFormatsCountryCodeSet.getCountryCodeSet();
    private static final Set regionCodeSet = ShortNumbersRegionCodeSet.getRegionCodeSet();
    private static final Map regionCodeToShortNumberMetadataMap = Collections.synchronizedMap(new HashMap());

    private MetadataManager()
    {
    }

    private static void close(InputStream inputstream)
    {
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_8;
        }
        inputstream.close();
        return;
        IOException ioexception;
        ioexception;
        LOGGER.log(Level.WARNING, ioexception.toString());
        return;
    }

    static Phonemetadata.PhoneMetadata getAlternateFormatsForCountry(int i)
    {
        if (!countryCodeSet.contains(Integer.valueOf(i)))
        {
            return null;
        }
        synchronized (callingCodeToAlternateFormatsMap)
        {
            if (!callingCodeToAlternateFormatsMap.containsKey(Integer.valueOf(i)))
            {
                loadAlternateFormatsMetadataFromFile(i);
            }
        }
        return (Phonemetadata.PhoneMetadata)callingCodeToAlternateFormatsMap.get(Integer.valueOf(i));
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static Phonemetadata.PhoneMetadata getShortNumberMetadataForRegion(String s)
    {
        if (!regionCodeSet.contains(s))
        {
            return null;
        }
        synchronized (regionCodeToShortNumberMetadataMap)
        {
            if (!regionCodeToShortNumberMetadataMap.containsKey(s))
            {
                loadShortNumberMetadataFromFile(s);
            }
        }
        return (Phonemetadata.PhoneMetadata)regionCodeToShortNumberMetadataMap.get(s);
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static Set getShortNumberMetadataSupportedRegions()
    {
        return regionCodeSet;
    }

    private static void loadAlternateFormatsMetadataFromFile(int i)
    {
        InputStream inputstream;
        Object obj;
        String s = String.valueOf(String.valueOf("/com/google/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto_"));
        inputstream = com/google/i18n/phonenumbers/PhoneNumberMatcher.getResourceAsStream((new StringBuilder(11 + s.length())).append(s).append(i).toString());
        obj = null;
        ObjectInputStream objectinputstream = new ObjectInputStream(inputstream);
        Phonemetadata.PhoneMetadataCollection phonemetadatacollection = new Phonemetadata.PhoneMetadataCollection();
        phonemetadatacollection.readExternal(objectinputstream);
        Phonemetadata.PhoneMetadata phonemetadata;
        for (Iterator iterator = phonemetadatacollection.getMetadataList().iterator(); iterator.hasNext(); callingCodeToAlternateFormatsMap.put(Integer.valueOf(phonemetadata.getCountryCode()), phonemetadata))
        {
            phonemetadata = (Phonemetadata.PhoneMetadata)iterator.next();
        }

          goto _L1
        IOException ioexception;
        ioexception;
        obj = objectinputstream;
_L5:
        LOGGER.log(Level.WARNING, ioexception.toString());
        close(((InputStream) (obj)));
        return;
_L1:
        close(objectinputstream);
        return;
        Exception exception;
        exception;
_L3:
        close(((InputStream) (obj)));
        throw exception;
        exception;
        obj = objectinputstream;
        if (true) goto _L3; else goto _L2
_L2:
        ioexception;
        obj = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private static void loadShortNumberMetadataFromFile(String s)
    {
        Object obj;
        ObjectInputStream objectinputstream;
        IOException ioexception;
        String s1 = String.valueOf("/com/google/i18n/phonenumbers/data/ShortNumberMetadataProto_");
        String s2 = String.valueOf(s);
        String s3;
        InputStream inputstream;
        Phonemetadata.PhoneMetadataCollection phonemetadatacollection;
        Iterator iterator;
        Phonemetadata.PhoneMetadata phonemetadata;
        if (s2.length() != 0)
        {
            s3 = s1.concat(s2);
        } else
        {
            s3 = new String(s1);
        }
        inputstream = com/google/i18n/phonenumbers/PhoneNumberMatcher.getResourceAsStream(s3);
        obj = null;
        objectinputstream = new ObjectInputStream(inputstream);
        phonemetadatacollection = new Phonemetadata.PhoneMetadataCollection();
        phonemetadatacollection.readExternal(objectinputstream);
        for (iterator = phonemetadatacollection.getMetadataList().iterator(); iterator.hasNext(); regionCodeToShortNumberMetadataMap.put(s, phonemetadata))
        {
            phonemetadata = (Phonemetadata.PhoneMetadata)iterator.next();
        }

          goto _L1
        ioexception;
        obj = objectinputstream;
_L5:
        LOGGER.log(Level.WARNING, ioexception.toString());
        close(((InputStream) (obj)));
        return;
_L1:
        close(objectinputstream);
        return;
        Exception exception;
        exception;
_L3:
        close(((InputStream) (obj)));
        throw exception;
        exception;
        obj = objectinputstream;
        if (true) goto _L3; else goto _L2
_L2:
        ioexception;
        obj = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

}
