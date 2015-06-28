// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.android.gms.tagmanager:
//            dg, bh

class dh
{

    private static final Object aik = null;
    private static Long ail = new Long(0L);
    private static Double aim = new Double(0.0D);
    private static dg ain = dg.z(0L);
    private static String aio;
    private static Boolean aip = new Boolean(false);
    private static List aiq = new ArrayList(0);
    private static Map air = new HashMap();
    private static com.google.android.gms.internal.d.a ais;

    public static com.google.android.gms.internal.d.a cp(String s1)
    {
        com.google.android.gms.internal.d.a a = new com.google.android.gms.internal.d.a();
        a.type = 5;
        a.fS = s1;
        return a;
    }

    private static dg cq(String s1)
    {
        dg dg1;
        try
        {
            dg1 = dg.co(s1);
        }
        catch (NumberFormatException numberformatexception)
        {
            bh.A((new StringBuilder()).append("Failed to convert '").append(s1).append("' to a number.").toString());
            return ain;
        }
        return dg1;
    }

    private static Long cr(String s1)
    {
        dg dg1 = cq(s1);
        if (dg1 == ain)
        {
            return ail;
        } else
        {
            return Long.valueOf(dg1.longValue());
        }
    }

    private static Double cs(String s1)
    {
        dg dg1 = cq(s1);
        if (dg1 == ain)
        {
            return aim;
        } else
        {
            return Double.valueOf(dg1.doubleValue());
        }
    }

    private static Boolean ct(String s1)
    {
        if ("true".equalsIgnoreCase(s1))
        {
            return Boolean.TRUE;
        }
        if ("false".equalsIgnoreCase(s1))
        {
            return Boolean.FALSE;
        } else
        {
            return aip;
        }
    }

    private static double getDouble(Object obj)
    {
        if (obj instanceof Number)
        {
            return ((Number)obj).doubleValue();
        } else
        {
            bh.A("getDouble received non-Number");
            return 0.0D;
        }
    }

    public static String j(com.google.android.gms.internal.d.a a)
    {
        return m(o(a));
    }

    public static dg k(com.google.android.gms.internal.d.a a)
    {
        return n(o(a));
    }

    public static Long l(com.google.android.gms.internal.d.a a)
    {
        return o(o(a));
    }

    public static Double m(com.google.android.gms.internal.d.a a)
    {
        return p(o(a));
    }

    public static String m(Object obj)
    {
        if (obj == null)
        {
            return aio;
        } else
        {
            return obj.toString();
        }
    }

    public static Object mS()
    {
        return aik;
    }

    public static Long mT()
    {
        return ail;
    }

    public static Double mU()
    {
        return aim;
    }

    public static Boolean mV()
    {
        return aip;
    }

    public static dg mW()
    {
        return ain;
    }

    public static String mX()
    {
        return aio;
    }

    public static com.google.android.gms.internal.d.a mY()
    {
        return ais;
    }

    public static dg n(Object obj)
    {
        if (obj instanceof dg)
        {
            return (dg)obj;
        }
        if (t(obj))
        {
            return dg.z(u(obj));
        }
        if (s(obj))
        {
            return dg.a(Double.valueOf(getDouble(obj)));
        } else
        {
            return cq(m(obj));
        }
    }

    public static Boolean n(com.google.android.gms.internal.d.a a)
    {
        return q(o(a));
    }

    public static Long o(Object obj)
    {
        if (t(obj))
        {
            return Long.valueOf(u(obj));
        } else
        {
            return cr(m(obj));
        }
    }

    public static Object o(com.google.android.gms.internal.d.a a)
    {
        int i = 0;
        if (a == null)
        {
            return aik;
        }
        switch (a.type)
        {
        default:
            bh.A((new StringBuilder()).append("Failed to convert a value of type: ").append(a.type).toString());
            return aik;

        case 1: // '\001'
            return a.fN;

        case 2: // '\002'
            ArrayList arraylist = new ArrayList(a.fO.length);
            com.google.android.gms.internal.d.a aa1[] = a.fO;
            for (int j1 = aa1.length; i < j1; i++)
            {
                Object obj2 = o(aa1[i]);
                if (obj2 == aik)
                {
                    return aik;
                }
                arraylist.add(obj2);
            }

            return arraylist;

        case 3: // '\003'
            if (a.fP.length != a.fQ.length)
            {
                bh.A((new StringBuilder()).append("Converting an invalid value to object: ").append(a.toString()).toString());
                return aik;
            }
            HashMap hashmap = new HashMap(a.fQ.length);
            for (; i < a.fP.length; i++)
            {
                Object obj = o(a.fP[i]);
                Object obj1 = o(a.fQ[i]);
                if (obj == aik || obj1 == aik)
                {
                    return aik;
                }
                hashmap.put(obj, obj1);
            }

            return hashmap;

        case 4: // '\004'
            bh.A("Trying to convert a macro reference to object");
            return aik;

        case 5: // '\005'
            bh.A("Trying to convert a function id to object");
            return aik;

        case 6: // '\006'
            return Long.valueOf(a.fT);

        case 7: // '\007'
            StringBuffer stringbuffer = new StringBuffer();
            com.google.android.gms.internal.d.a aa[] = a.fV;
            for (int i1 = aa.length; i < i1; i++)
            {
                String s1 = j(aa[i]);
                if (s1 == aio)
                {
                    return aik;
                }
                stringbuffer.append(s1);
            }

            return stringbuffer.toString();

        case 8: // '\b'
            return Boolean.valueOf(a.fU);
        }
    }

    public static Double p(Object obj)
    {
        if (s(obj))
        {
            return Double.valueOf(getDouble(obj));
        } else
        {
            return cs(m(obj));
        }
    }

    public static Boolean q(Object obj)
    {
        if (obj instanceof Boolean)
        {
            return (Boolean)obj;
        } else
        {
            return ct(m(obj));
        }
    }

    public static com.google.android.gms.internal.d.a r(Object obj)
    {
        boolean flag;
        com.google.android.gms.internal.d.a a;
        flag = false;
        a = new com.google.android.gms.internal.d.a();
        if (obj instanceof com.google.android.gms.internal.d.a)
        {
            return (com.google.android.gms.internal.d.a)obj;
        }
        if (!(obj instanceof String)) goto _L2; else goto _L1
_L1:
        a.type = 1;
        a.fN = (String)obj;
_L4:
        a.fX = flag;
        return a;
_L2:
        if (obj instanceof List)
        {
            a.type = 2;
            List list = (List)obj;
            ArrayList arraylist2 = new ArrayList(list.size());
            Iterator iterator1 = list.iterator();
            boolean flag3 = false;
            while (iterator1.hasNext()) 
            {
                com.google.android.gms.internal.d.a a3 = r(iterator1.next());
                if (a3 == ais)
                {
                    return ais;
                }
                boolean flag4;
                if (flag3 || a3.fX)
                {
                    flag4 = true;
                } else
                {
                    flag4 = false;
                }
                arraylist2.add(a3);
                flag3 = flag4;
            }
            a.fO = (com.google.android.gms.internal.d.a[])arraylist2.toArray(new com.google.android.gms.internal.d.a[0]);
            flag = flag3;
            continue; /* Loop/switch isn't completed */
        }
        if (obj instanceof Map)
        {
            a.type = 3;
            Set set = ((Map)obj).entrySet();
            ArrayList arraylist = new ArrayList(set.size());
            ArrayList arraylist1 = new ArrayList(set.size());
            Iterator iterator = set.iterator();
            boolean flag1 = false;
            while (iterator.hasNext()) 
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                com.google.android.gms.internal.d.a a1 = r(entry.getKey());
                com.google.android.gms.internal.d.a a2 = r(entry.getValue());
                if (a1 == ais || a2 == ais)
                {
                    return ais;
                }
                boolean flag2;
                if (flag1 || a1.fX || a2.fX)
                {
                    flag2 = true;
                } else
                {
                    flag2 = false;
                }
                arraylist.add(a1);
                arraylist1.add(a2);
                flag1 = flag2;
            }
            a.fP = (com.google.android.gms.internal.d.a[])arraylist.toArray(new com.google.android.gms.internal.d.a[0]);
            a.fQ = (com.google.android.gms.internal.d.a[])arraylist1.toArray(new com.google.android.gms.internal.d.a[0]);
            flag = flag1;
            continue; /* Loop/switch isn't completed */
        }
        if (s(obj))
        {
            a.type = 1;
            a.fN = obj.toString();
            flag = false;
            continue; /* Loop/switch isn't completed */
        }
        if (t(obj))
        {
            a.type = 6;
            a.fT = u(obj);
            flag = false;
            continue; /* Loop/switch isn't completed */
        }
        if (!(obj instanceof Boolean))
        {
            break; /* Loop/switch isn't completed */
        }
        a.type = 8;
        a.fU = ((Boolean)obj).booleanValue();
        flag = false;
        if (true) goto _L4; else goto _L3
_L3:
        StringBuilder stringbuilder = (new StringBuilder()).append("Converting to Value from unknown object type: ");
        String s1;
        if (obj == null)
        {
            s1 = "null";
        } else
        {
            s1 = obj.getClass().toString();
        }
        bh.A(stringbuilder.append(s1).toString());
        return ais;
    }

    private static boolean s(Object obj)
    {
        return (obj instanceof Double) || (obj instanceof Float) || (obj instanceof dg) && ((dg)obj).mN();
    }

    private static boolean t(Object obj)
    {
        return (obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof dg) && ((dg)obj).mO();
    }

    private static long u(Object obj)
    {
        if (obj instanceof Number)
        {
            return ((Number)obj).longValue();
        } else
        {
            bh.A("getInt64 received non-Number");
            return 0L;
        }
    }

    static 
    {
        aio = new String("");
        ais = r(aio);
    }
}
