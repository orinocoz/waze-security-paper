// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.appstate;

import com.google.android.gms.internal.hl;

// Referenced classes of package com.google.android.gms.appstate:
//            AppState

public final class a
    implements AppState
{

    private final byte yA[];
    private final boolean yB;
    private final String yC;
    private final byte yD[];
    private final int yy;
    private final String yz;

    public a(AppState appstate)
    {
        yy = appstate.getKey();
        yz = appstate.getLocalVersion();
        yA = appstate.getLocalData();
        yB = appstate.hasConflict();
        yC = appstate.getConflictVersion();
        yD = appstate.getConflictData();
    }

    static int a(AppState appstate)
    {
        Object aobj[] = new Object[6];
        aobj[0] = Integer.valueOf(appstate.getKey());
        aobj[1] = appstate.getLocalVersion();
        aobj[2] = appstate.getLocalData();
        aobj[3] = Boolean.valueOf(appstate.hasConflict());
        aobj[4] = appstate.getConflictVersion();
        aobj[5] = appstate.getConflictData();
        return hl.hashCode(aobj);
    }

    static boolean a(AppState appstate, Object obj)
    {
        boolean flag = true;
        if (!(obj instanceof AppState))
        {
            flag = false;
        } else
        if (appstate != obj)
        {
            AppState appstate1 = (AppState)obj;
            if (!hl.equal(Integer.valueOf(appstate1.getKey()), Integer.valueOf(appstate.getKey())) || !hl.equal(appstate1.getLocalVersion(), appstate.getLocalVersion()) || !hl.equal(appstate1.getLocalData(), appstate.getLocalData()) || !hl.equal(Boolean.valueOf(appstate1.hasConflict()), Boolean.valueOf(appstate.hasConflict())) || !hl.equal(appstate1.getConflictVersion(), appstate.getConflictVersion()) || !hl.equal(appstate1.getConflictData(), appstate.getConflictData()))
            {
                return false;
            }
        }
        return flag;
    }

    static String b(AppState appstate)
    {
        return hl.e(appstate).a("Key", Integer.valueOf(appstate.getKey())).a("LocalVersion", appstate.getLocalVersion()).a("LocalData", appstate.getLocalData()).a("HasConflict", Boolean.valueOf(appstate.hasConflict())).a("ConflictVersion", appstate.getConflictVersion()).a("ConflictData", appstate.getConflictData()).toString();
    }

    public AppState dN()
    {
        return this;
    }

    public boolean equals(Object obj)
    {
        return a(this, obj);
    }

    public Object freeze()
    {
        return dN();
    }

    public byte[] getConflictData()
    {
        return yD;
    }

    public String getConflictVersion()
    {
        return yC;
    }

    public int getKey()
    {
        return yy;
    }

    public byte[] getLocalData()
    {
        return yA;
    }

    public String getLocalVersion()
    {
        return yz;
    }

    public boolean hasConflict()
    {
        return yB;
    }

    public int hashCode()
    {
        return a(this);
    }

    public boolean isDataValid()
    {
        return true;
    }

    public String toString()
    {
        return b(this);
    }
}
