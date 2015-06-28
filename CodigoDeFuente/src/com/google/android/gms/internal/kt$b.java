// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            hz, kw, hw, kt, 
//            kx, ky

public static final class adK extends hz
    implements SafeParcelable, com.google.android.gms.plus.model.people.n.Cover
{
    public static final class a extends hz
        implements SafeParcelable, com.google.android.gms.plus.model.people.Person.Cover.CoverInfo
    {

        public static final kx CREATOR = new kx();
        private static final HashMap aco;
        private final Set acp;
        private int adL;
        private int adM;
        private final int xJ;

        protected boolean a(hz.a a1)
        {
            return acp.contains(Integer.valueOf(a1.fI()));
        }

        protected Object aF(String s)
        {
            return null;
        }

        protected boolean aG(String s)
        {
            return false;
        }

        protected Object b(hz.a a1)
        {
            switch (a1.fI())
            {
            default:
                throw new IllegalStateException((new StringBuilder()).append("Unknown safe parcelable id=").append(a1.fI()).toString());

            case 2: // '\002'
                return Integer.valueOf(adL);

            case 3: // '\003'
                return Integer.valueOf(adM);
            }
        }

        public int describeContents()
        {
            kx _tmp = CREATOR;
            return 0;
        }

        public boolean equals(Object obj)
        {
label0:
            {
                if (!(obj instanceof a))
                {
                    return false;
                }
                if (this == obj)
                {
                    return true;
                }
                a a1 = (a)obj;
                hz.a a2;
label1:
                do
                {
                    for (Iterator iterator = aco.values().iterator(); iterator.hasNext();)
                    {
                        a2 = (hz.a)iterator.next();
                        if (!a(a2))
                        {
                            continue label1;
                        }
                        if (a1.a(a2))
                        {
                            if (!b(a2).equals(a1.b(a2)))
                            {
                                return false;
                            }
                        } else
                        {
                            return false;
                        }
                    }

                    break label0;
                } while (!a1.a(a2));
                return false;
            }
            return true;
        }

        public HashMap fB()
        {
            return aco;
        }

        public Object freeze()
        {
            return kM();
        }

        public int getLeftImageOffset()
        {
            return adL;
        }

        public int getTopImageOffset()
        {
            return adM;
        }

        int getVersionCode()
        {
            return xJ;
        }

        public boolean hasLeftImageOffset()
        {
            return acp.contains(Integer.valueOf(2));
        }

        public boolean hasTopImageOffset()
        {
            return acp.contains(Integer.valueOf(3));
        }

        public int hashCode()
        {
            Iterator iterator = aco.values().iterator();
            int i = 0;
            while (iterator.hasNext()) 
            {
                hz.a a1 = (hz.a)iterator.next();
                int j;
                if (a(a1))
                {
                    j = i + a1.fI() + b(a1).hashCode();
                } else
                {
                    j = i;
                }
                i = j;
            }
            return i;
        }

        public boolean isDataValid()
        {
            return true;
        }

        public a kM()
        {
            return this;
        }

        Set kf()
        {
            return acp;
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            kx _tmp = CREATOR;
            kx.a(this, parcel, i);
        }

        static 
        {
            aco = new HashMap();
            aco.put("leftImageOffset", hz.a.g("leftImageOffset", 2));
            aco.put("topImageOffset", hz.a.g("topImageOffset", 3));
        }

        public a()
        {
            xJ = 1;
            acp = new HashSet();
        }

        a(Set set, int i, int j, int k)
        {
            acp = set;
            xJ = i;
            adL = j;
            adM = k;
        }
    }

    public static final class b extends hz
        implements SafeParcelable, com.google.android.gms.plus.model.people.Person.Cover.CoverPhoto
    {

        public static final ky CREATOR = new ky();
        private static final HashMap aco;
        private final Set acp;
        private int ks;
        private int kt;
        private String qV;
        private final int xJ;

        protected boolean a(hz.a a1)
        {
            return acp.contains(Integer.valueOf(a1.fI()));
        }

        protected Object aF(String s)
        {
            return null;
        }

        protected boolean aG(String s)
        {
            return false;
        }

        protected Object b(hz.a a1)
        {
            switch (a1.fI())
            {
            default:
                throw new IllegalStateException((new StringBuilder()).append("Unknown safe parcelable id=").append(a1.fI()).toString());

            case 2: // '\002'
                return Integer.valueOf(kt);

            case 3: // '\003'
                return qV;

            case 4: // '\004'
                return Integer.valueOf(ks);
            }
        }

        public int describeContents()
        {
            ky _tmp = CREATOR;
            return 0;
        }

        public boolean equals(Object obj)
        {
label0:
            {
                if (!(obj instanceof b))
                {
                    return false;
                }
                if (this == obj)
                {
                    return true;
                }
                b b1 = (b)obj;
                hz.a a1;
label1:
                do
                {
                    for (Iterator iterator = aco.values().iterator(); iterator.hasNext();)
                    {
                        a1 = (hz.a)iterator.next();
                        if (!a(a1))
                        {
                            continue label1;
                        }
                        if (b1.a(a1))
                        {
                            if (!b(a1).equals(b1.b(a1)))
                            {
                                return false;
                            }
                        } else
                        {
                            return false;
                        }
                    }

                    break label0;
                } while (!b1.a(a1));
                return false;
            }
            return true;
        }

        public HashMap fB()
        {
            return aco;
        }

        public Object freeze()
        {
            return kN();
        }

        public int getHeight()
        {
            return kt;
        }

        public String getUrl()
        {
            return qV;
        }

        int getVersionCode()
        {
            return xJ;
        }

        public int getWidth()
        {
            return ks;
        }

        public boolean hasHeight()
        {
            return acp.contains(Integer.valueOf(2));
        }

        public boolean hasUrl()
        {
            return acp.contains(Integer.valueOf(3));
        }

        public boolean hasWidth()
        {
            return acp.contains(Integer.valueOf(4));
        }

        public int hashCode()
        {
            Iterator iterator = aco.values().iterator();
            int i = 0;
            while (iterator.hasNext()) 
            {
                hz.a a1 = (hz.a)iterator.next();
                int j;
                if (a(a1))
                {
                    j = i + a1.fI() + b(a1).hashCode();
                } else
                {
                    j = i;
                }
                i = j;
            }
            return i;
        }

        public boolean isDataValid()
        {
            return true;
        }

        public b kN()
        {
            return this;
        }

        Set kf()
        {
            return acp;
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            ky _tmp = CREATOR;
            ky.a(this, parcel, i);
        }

        static 
        {
            aco = new HashMap();
            aco.put("height", hz.a.g("height", 2));
            aco.put("url", hz.a.j("url", 3));
            aco.put("width", hz.a.g("width", 4));
        }

        public b()
        {
            xJ = 1;
            acp = new HashSet();
        }

        b(Set set, int i, int j, String s, int k)
        {
            acp = set;
            xJ = i;
            kt = j;
            qV = s;
            ks = k;
        }
    }


    public static final kw CREATOR = new kw();
    private static final HashMap aco;
    private final Set acp;
    private a adI;
    private b adJ;
    private int adK;
    private final int xJ;

    protected boolean a(nit> nit>)
    {
        return acp.contains(Integer.valueOf(nit>.fI()));
    }

    protected Object aF(String s)
    {
        return null;
    }

    protected boolean aG(String s)
    {
        return false;
    }

    protected Object b(fI fi)
    {
        switch (fi.fI())
        {
        default:
            throw new IllegalStateException((new StringBuilder()).append("Unknown safe parcelable id=").append(fi.fI()).toString());

        case 2: // '\002'
            return adI;

        case 3: // '\003'
            return adJ;

        case 4: // '\004'
            return Integer.valueOf(adK);
        }
    }

    public int describeContents()
    {
        kw _tmp = CREATOR;
        return 0;
    }

    public boolean equals(Object obj)
    {
label0:
        {
            if (!(obj instanceof CREATOR))
            {
                return false;
            }
            if (this == obj)
            {
                return true;
            }
            CREATOR creator = (CREATOR)obj;
            CREATOR creator1;
label1:
            do
            {
                for (Iterator iterator = aco.values().iterator(); iterator.hasNext();)
                {
                    creator1 = (aco)iterator.next();
                    if (!a(creator1))
                    {
                        continue label1;
                    }
                    if (creator.a(creator1))
                    {
                        if (!b(creator1).equals(creator.b(creator1)))
                        {
                            return false;
                        }
                    } else
                    {
                        return false;
                    }
                }

                break label0;
            } while (!creator.a(creator1));
            return false;
        }
        return true;
    }

    public HashMap fB()
    {
        return aco;
    }

    public Object freeze()
    {
        return kL();
    }

    public com.google.android.gms.plus.model.people.n.Cover.CoverInfo getCoverInfo()
    {
        return adI;
    }

    public com.google.android.gms.plus.model.people.n.Cover.CoverPhoto getCoverPhoto()
    {
        return adJ;
    }

    public int getLayout()
    {
        return adK;
    }

    int getVersionCode()
    {
        return xJ;
    }

    public boolean hasCoverInfo()
    {
        return acp.contains(Integer.valueOf(2));
    }

    public boolean hasCoverPhoto()
    {
        return acp.contains(Integer.valueOf(3));
    }

    public boolean hasLayout()
    {
        return acp.contains(Integer.valueOf(4));
    }

    public int hashCode()
    {
        Iterator iterator = aco.values().iterator();
        int i = 0;
        while (iterator.hasNext()) 
        {
            acp acp1 = (aco)iterator.next();
            int j;
            if (a(acp1))
            {
                j = i + acp1.fI() + b(acp1).hashCode();
            } else
            {
                j = i;
            }
            i = j;
        }
        return i;
    }

    public boolean isDataValid()
    {
        return true;
    }

    a kJ()
    {
        return adI;
    }

    b kK()
    {
        return adJ;
    }

    public adJ kL()
    {
        return this;
    }

    Set kf()
    {
        return acp;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        kw _tmp = CREATOR;
        kw.a(this, parcel, i);
    }

    static 
    {
        aco = new HashMap();
        aco.put("coverInfo", a("coverInfo", 2, com/google/android/gms/internal/kt$b$a));
        aco.put("coverPhoto", a("coverPhoto", 3, com/google/android/gms/internal/kt$b$b));
        aco.put("layout", a("layout", 4, (new hw()).f("banner", 0), false));
    }

    public b()
    {
        xJ = 1;
        acp = new HashSet();
    }

    b(Set set, int i, a a1, b b1, int j)
    {
        acp = set;
        xJ = i;
        adI = a1;
        adJ = b1;
        adK = j;
    }
}
