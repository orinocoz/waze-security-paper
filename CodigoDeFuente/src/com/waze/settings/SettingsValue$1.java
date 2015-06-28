// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import java.util.Comparator;

// Referenced classes of package com.waze.settings:
//            SettingsValue

class 
    implements Comparator
{

    public int compare(SettingsValue settingsvalue, SettingsValue settingsvalue1)
    {
        return settingsvalue.display.toUpperCase().compareTo(settingsvalue1.display.toUpperCase());
    }

    public volatile int compare(Object obj, Object obj1)
    {
        return compare((SettingsValue)obj, (SettingsValue)obj1);
    }

    ()
    {
    }
}
