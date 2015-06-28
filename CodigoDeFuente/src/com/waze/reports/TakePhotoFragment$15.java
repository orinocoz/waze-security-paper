// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import java.io.File;
import java.io.FilenameFilter;

// Referenced classes of package com.waze.reports:
//            TakePhotoFragment

class val.prefix
    implements FilenameFilter
{

    private final String val$prefix;

    public boolean accept(File file, String s)
    {
        return s.startsWith(val$prefix);
    }

    ()
    {
        val$prefix = s;
        super();
    }
}
