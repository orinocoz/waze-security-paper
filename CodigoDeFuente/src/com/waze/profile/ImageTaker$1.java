// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import java.io.File;
import java.io.FilenameFilter;

// Referenced classes of package com.waze.profile:
//            ImageTaker

class this._cls0
    implements FilenameFilter
{

    final ImageTaker this$0;

    public boolean accept(File file, String s)
    {
        return s.startsWith(ImageTaker.access$0(ImageTaker.this));
    }

    ()
    {
        this$0 = ImageTaker.this;
        super();
    }
}
