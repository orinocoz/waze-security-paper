// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.android.gms.tagmanager:
//            by, dh, l, i, 
//            s, w, di, q, 
//            ad, ae, al, am, 
//            bd, be, ch, db, 
//            b, c, e, f, 
//            g, h, m, p, 
//            u, z, aa, ac, 
//            ah, an, ao, ax, 
//            az, bc, bk, bz, 
//            cb, ce, cg, ci, 
//            ct, cu, dd, ag, 
//            bh, cq, dj, dk, 
//            k, bj, aj, cj, 
//            cl, cr, bw, DataLayer, 
//            cm, af, t, ai, 
//            ck

class cs
{
    static interface a
    {

        public abstract void a(cq.e e1, Set set, Set set1, cm cm1);
    }

    private static class b
    {

        private com.google.android.gms.internal.d.a agV;
        private by ahA;

        public int getSize()
        {
            int j = ((com.google.android.gms.internal.d.a)ahA.getObject()).nU();
            int i1;
            if (agV == null)
            {
                i1 = 0;
            } else
            {
                i1 = agV.nU();
            }
            return i1 + j;
        }

        public by mE()
        {
            return ahA;
        }

        public com.google.android.gms.internal.d.a mk()
        {
            return agV;
        }

        public b(by by1, com.google.android.gms.internal.d.a a1)
        {
            ahA = by1;
            agV = a1;
        }
    }

    private static class c
    {

        private final Map ahB = new HashMap();
        private final Map ahC = new HashMap();
        private final Map ahD = new HashMap();
        private final Map ahE = new HashMap();
        private cq.a ahF;
        private final Set ahr = new HashSet();

        public void a(cq.e e1, cq.a a1)
        {
            Object obj = (List)ahB.get(e1);
            if (obj == null)
            {
                obj = new ArrayList();
                ahB.put(e1, obj);
            }
            ((List) (obj)).add(a1);
        }

        public void a(cq.e e1, String s1)
        {
            Object obj = (List)ahD.get(e1);
            if (obj == null)
            {
                obj = new ArrayList();
                ahD.put(e1, obj);
            }
            ((List) (obj)).add(s1);
        }

        public void b(cq.e e1)
        {
            ahr.add(e1);
        }

        public void b(cq.e e1, cq.a a1)
        {
            Object obj = (List)ahC.get(e1);
            if (obj == null)
            {
                obj = new ArrayList();
                ahC.put(e1, obj);
            }
            ((List) (obj)).add(a1);
        }

        public void b(cq.e e1, String s1)
        {
            Object obj = (List)ahE.get(e1);
            if (obj == null)
            {
                obj = new ArrayList();
                ahE.put(e1, obj);
            }
            ((List) (obj)).add(s1);
        }

        public void i(cq.a a1)
        {
            ahF = a1;
        }

        public Set mF()
        {
            return ahr;
        }

        public Map mG()
        {
            return ahB;
        }

        public Map mH()
        {
            return ahD;
        }

        public Map mI()
        {
            return ahE;
        }

        public Map mJ()
        {
            return ahC;
        }

        public cq.a mK()
        {
            return ahF;
        }

        public c()
        {
        }
    }


    private static final by ahj = new by(dh.mY(), true);
    private final DataLayer aer;
    private final cq.c ahk;
    private final ag ahl;
    private final Map ahm = new HashMap();
    private final Map ahn = new HashMap();
    private final Map aho = new HashMap();
    private final k ahp;
    private final k ahq;
    private final Set ahr;
    private final Map ahs = new HashMap();
    private volatile String aht;
    private int ahu;

    public cs(Context context, cq.c c1, DataLayer datalayer, s.a a1, s.a a2, ag ag1)
    {
        if (c1 == null)
        {
            throw new NullPointerException("resource cannot be null");
        }
        ahk = c1;
        ahr = new HashSet(c1.mn());
        aer = datalayer;
        ahl = ag1;
        l.a a3 = new l.a() {

            final cs ahv;

            public int a(cq.a a8, by by1)
            {
                return ((com.google.android.gms.internal.d.a)by1.getObject()).nU();
            }

            public int sizeOf(Object obj, Object obj1)
            {
                return a((cq.a)obj, (by)obj1);
            }

            
            {
                ahv = cs.this;
                super();
            }
        };
        ahp = (new l()).a(0x100000, a3);
        l.a a4 = new l.a() {

            final cs ahv;

            public int a(String s3, b b1)
            {
                return s3.length() + b1.getSize();
            }

            public int sizeOf(Object obj, Object obj1)
            {
                return a((String)obj, (b)obj1);
            }

            
            {
                ahv = cs.this;
                super();
            }
        };
        ahq = (new l()).a(0x100000, a4);
        b(new i(context));
        b(new s(a2));
        b(new w(datalayer));
        b(new di(context, datalayer));
        c(new q());
        c(new ad());
        c(new ae());
        c(new al());
        c(new am());
        c(new bd());
        c(new be());
        c(new ch());
        c(new db());
        a(new com.google.android.gms.tagmanager.b(context));
        a(new com.google.android.gms.tagmanager.c(context));
        a(new e(context));
        a(new f(context));
        a(new g(context));
        a(new h(context));
        a(new m());
        a(new p(ahk.getVersion()));
        a(new s(a1));
        a(new u(datalayer));
        a(new z(context));
        a(new aa());
        a(new ac());
        a(new ah(this));
        a(new an());
        a(new ao());
        a(new ax(context));
        a(new az());
        a(new bc());
        a(new bk(context));
        a(new bz());
        a(new cb());
        a(new ce());
        a(new cg());
        a(new ci(context));
        a(new ct());
        a(new cu());
        a(new dd());
        for (Iterator iterator = ahr.iterator(); iterator.hasNext();)
        {
            cq.e e1 = (cq.e)iterator.next();
            if (ag1.lF())
            {
                a(e1.mv(), e1.mw(), "add macro");
                a(e1.mA(), e1.mx(), "remove macro");
                a(e1.mt(), e1.my(), "add tag");
                a(e1.mu(), e1.mz(), "remove tag");
            }
            for (int j = 0; j < e1.mv().size(); j++)
            {
                cq.a a7 = (cq.a)e1.mv().get(j);
                String s2 = "Unknown";
                if (ag1.lF() && j < e1.mw().size())
                {
                    s2 = (String)e1.mw().get(j);
                }
                c c3 = d(ahs, h(a7));
                c3.b(e1);
                c3.a(e1, a7);
                c3.a(e1, s2);
            }

            int i1 = 0;
            while (i1 < e1.mA().size()) 
            {
                cq.a a6 = (cq.a)e1.mA().get(i1);
                String s1 = "Unknown";
                if (ag1.lF() && i1 < e1.mx().size())
                {
                    s1 = (String)e1.mx().get(i1);
                }
                c c2 = d(ahs, h(a6));
                c2.b(e1);
                c2.b(e1, a6);
                c2.b(e1, s1);
                i1++;
            }
        }

        for (Iterator iterator1 = ahk.mo().entrySet().iterator(); iterator1.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator1.next();
            Iterator iterator2 = ((List)entry.getValue()).iterator();
            while (iterator2.hasNext()) 
            {
                cq.a a5 = (cq.a)iterator2.next();
                if (!dh.n((com.google.android.gms.internal.d.a)a5.mj().get(com.google.android.gms.internal.b.dh.toString())).booleanValue())
                {
                    d(ahs, (String)entry.getKey()).i(a5);
                }
            }
        }

    }

    private by a(com.google.android.gms.internal.d.a a1, Set set, dj dj1)
    {
        if (!a1.fX)
        {
            return new by(a1, true);
        }
        com.google.android.gms.internal.d.a a2;
        int j;
        switch (a1.type)
        {
        case 5: // '\005'
        case 6: // '\006'
        default:
            bh.A((new StringBuilder()).append("Unknown type: ").append(a1.type).toString());
            return ahj;

        case 2: // '\002'
            com.google.android.gms.internal.d.a a4 = cq.g(a1);
            a4.fO = new com.google.android.gms.internal.d.a[a1.fO.length];
            for (int j1 = 0; j1 < a1.fO.length; j1++)
            {
                by by5 = a(a1.fO[j1], set, dj1.dq(j1));
                if (by5 == ahj)
                {
                    return ahj;
                }
                a4.fO[j1] = (com.google.android.gms.internal.d.a)by5.getObject();
            }

            return new by(a4, false);

        case 3: // '\003'
            com.google.android.gms.internal.d.a a3 = cq.g(a1);
            if (a1.fP.length != a1.fQ.length)
            {
                bh.A((new StringBuilder()).append("Invalid serving value: ").append(a1.toString()).toString());
                return ahj;
            }
            a3.fP = new com.google.android.gms.internal.d.a[a1.fP.length];
            a3.fQ = new com.google.android.gms.internal.d.a[a1.fP.length];
            for (int i1 = 0; i1 < a1.fP.length; i1++)
            {
                by by3 = a(a1.fP[i1], set, dj1.dr(i1));
                by by4 = a(a1.fQ[i1], set, dj1.ds(i1));
                if (by3 == ahj || by4 == ahj)
                {
                    return ahj;
                }
                a3.fP[i1] = (com.google.android.gms.internal.d.a)by3.getObject();
                a3.fQ[i1] = (com.google.android.gms.internal.d.a)by4.getObject();
            }

            return new by(a3, false);

        case 4: // '\004'
            if (set.contains(a1.fR))
            {
                bh.A((new StringBuilder()).append("Macro cycle detected.  Current macro reference: ").append(a1.fR).append(".").append("  Previous macro references: ").append(set.toString()).append(".").toString());
                return ahj;
            } else
            {
                set.add(a1.fR);
                by by2 = dk.a(a(a1.fR, set, dj1.lU()), a1.fW);
                set.remove(a1.fR);
                return by2;
            }

        case 7: // '\007'
            a2 = cq.g(a1);
            a2.fV = new com.google.android.gms.internal.d.a[a1.fV.length];
            j = 0;
            break;
        }
        for (; j < a1.fV.length; j++)
        {
            by by1 = a(a1.fV[j], set, dj1.dt(j));
            if (by1 == ahj)
            {
                return ahj;
            }
            a2.fV[j] = (com.google.android.gms.internal.d.a)by1.getObject();
        }

        return new by(a2, false);
    }

    private by a(String s1, Set set, bj bj1)
    {
        ahu = 1 + ahu;
        b b1 = (b)ahq.get(s1);
        if (b1 != null && !ahl.lF())
        {
            a(b1.mk(), set);
            ahu = -1 + ahu;
            return b1.mE();
        }
        c c1 = (c)ahs.get(s1);
        if (c1 == null)
        {
            bh.A((new StringBuilder()).append(mD()).append("Invalid macro: ").append(s1).toString());
            ahu = -1 + ahu;
            return ahj;
        }
        by by1 = a(s1, c1.mF(), c1.mG(), c1.mH(), c1.mJ(), c1.mI(), set, bj1.lw());
        cq.a a1;
        if (((Set)by1.getObject()).isEmpty())
        {
            a1 = c1.mK();
        } else
        {
            if (((Set)by1.getObject()).size() > 1)
            {
                bh.D((new StringBuilder()).append(mD()).append("Multiple macros active for macroName ").append(s1).toString());
            }
            a1 = (cq.a)((Set)by1.getObject()).iterator().next();
        }
        if (a1 == null)
        {
            ahu = -1 + ahu;
            return ahj;
        }
        by by2 = a(aho, a1, set, bj1.lL());
        boolean flag;
        by by3;
        com.google.android.gms.internal.d.a a2;
        if (by1.lV() && by2.lV())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (by2 == ahj)
        {
            by3 = ahj;
        } else
        {
            by3 = new by(by2.getObject(), flag);
        }
        a2 = a1.mk();
        if (by3.lV())
        {
            ahq.e(s1, new b(by3, a2));
        }
        a(a2, set);
        ahu = -1 + ahu;
        return by3;
    }

    private by a(Map map, cq.a a1, Set set, cj cj1)
    {
        boolean flag = true;
        com.google.android.gms.internal.d.a a2 = (com.google.android.gms.internal.d.a)a1.mj().get(com.google.android.gms.internal.b.cx.toString());
        by by1;
        if (a2 == null)
        {
            bh.A("No function id in properties");
            by1 = ahj;
        } else
        {
            String s1 = a2.fS;
            aj aj1 = (aj)map.get(s1);
            if (aj1 == null)
            {
                bh.A((new StringBuilder()).append(s1).append(" has no backing implementation.").toString());
                return ahj;
            }
            by1 = (by)ahp.get(a1);
            if (by1 == null || ahl.lF())
            {
                HashMap hashmap = new HashMap();
                Iterator iterator = a1.mj().entrySet().iterator();
                boolean flag1 = flag;
                while (iterator.hasNext()) 
                {
                    java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                    cl cl1 = cj1.bZ((String)entry.getKey());
                    by by3 = a((com.google.android.gms.internal.d.a)entry.getValue(), set, cl1.e((com.google.android.gms.internal.d.a)entry.getValue()));
                    if (by3 == ahj)
                    {
                        return ahj;
                    }
                    boolean flag2;
                    if (by3.lV())
                    {
                        a1.a((String)entry.getKey(), (com.google.android.gms.internal.d.a)by3.getObject());
                        flag2 = flag1;
                    } else
                    {
                        flag2 = false;
                    }
                    hashmap.put(entry.getKey(), by3.getObject());
                    flag1 = flag2;
                }
                if (!aj1.a(hashmap.keySet()))
                {
                    bh.A((new StringBuilder()).append("Incorrect keys for function ").append(s1).append(" required ").append(aj1.lH()).append(" had ").append(hashmap.keySet()).toString());
                    return ahj;
                }
                by by2;
                if (!flag1 || !aj1.lc())
                {
                    flag = false;
                }
                by2 = new by(aj1.w(hashmap), flag);
                if (flag)
                {
                    ahp.e(a1, by2);
                }
                cj1.d((com.google.android.gms.internal.d.a)by2.getObject());
                return by2;
            }
        }
        return by1;
    }

    private by a(Set set, Set set1, a a1, cr cr1)
    {
        HashSet hashset = new HashSet();
        HashSet hashset1 = new HashSet();
        Iterator iterator = set.iterator();
        boolean flag = true;
        while (iterator.hasNext()) 
        {
            cq.e e1 = (cq.e)iterator.next();
            cm cm1 = cr1.lT();
            by by1 = a(e1, set1, cm1);
            if (((Boolean)by1.getObject()).booleanValue())
            {
                a1.a(e1, hashset, hashset1, cm1);
            }
            boolean flag1;
            if (flag && by1.lV())
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            flag = flag1;
        }
        hashset.removeAll(hashset1);
        cr1.b(hashset);
        return new by(hashset, flag);
    }

    private void a(com.google.android.gms.internal.d.a a1, Set set)
    {
        if (a1 != null) goto _L2; else goto _L1
_L1:
        by by1;
        return;
_L2:
        if ((by1 = a(a1, set, ((dj) (new bw())))) != ahj)
        {
            Object obj = dh.o((com.google.android.gms.internal.d.a)by1.getObject());
            if (obj instanceof Map)
            {
                Map map1 = (Map)obj;
                aer.push(map1);
                return;
            }
            if (obj instanceof List)
            {
                Iterator iterator = ((List)obj).iterator();
                while (iterator.hasNext()) 
                {
                    Object obj1 = iterator.next();
                    if (obj1 instanceof Map)
                    {
                        Map map = (Map)obj1;
                        aer.push(map);
                    } else
                    {
                        bh.D("pushAfterEvaluate: value not a Map");
                    }
                }
            } else
            {
                bh.D("pushAfterEvaluate: value not a Map or List");
                return;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    private static void a(List list, List list1, String s1)
    {
        if (list.size() != list1.size())
        {
            bh.B((new StringBuilder()).append("Invalid resource: imbalance of rule names of functions for ").append(s1).append(" operation. Using default rule name instead").toString());
        }
    }

    private static void a(Map map, aj aj1)
    {
        if (map.containsKey(aj1.lG()))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Duplicate function type name: ").append(aj1.lG()).toString());
        } else
        {
            map.put(aj1.lG(), aj1);
            return;
        }
    }

    private static c d(Map map, String s1)
    {
        c c1 = (c)map.get(s1);
        if (c1 == null)
        {
            c1 = new c();
            map.put(s1, c1);
        }
        return c1;
    }

    private static String h(cq.a a1)
    {
        return dh.j((com.google.android.gms.internal.d.a)a1.mj().get(com.google.android.gms.internal.b.cI.toString()));
    }

    private String mD()
    {
        if (ahu <= 1)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(Integer.toString(ahu));
        for (int j = 2; j < ahu; j++)
        {
            stringbuilder.append(' ');
        }

        stringbuilder.append(": ");
        return stringbuilder.toString();
    }

    by a(cq.a a1, Set set, cj cj1)
    {
        by by1 = a(ahn, a1, set, cj1);
        Boolean boolean1 = dh.n((com.google.android.gms.internal.d.a)by1.getObject());
        cj1.d(dh.r(boolean1));
        return new by(boolean1, by1.lV());
    }

    by a(cq.e e1, Set set, cm cm1)
    {
        Iterator iterator = e1.ms().iterator();
        boolean flag = true;
        while (iterator.hasNext()) 
        {
            by by2 = a((cq.a)iterator.next(), set, cm1.lN());
            if (((Boolean)by2.getObject()).booleanValue())
            {
                cm1.f(dh.r(Boolean.valueOf(false)));
                return new by(Boolean.valueOf(false), by2.lV());
            }
            boolean flag1;
            if (flag && by2.lV())
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            flag = flag1;
        }
        for (Iterator iterator1 = e1.mr().iterator(); iterator1.hasNext();)
        {
            by by1 = a((cq.a)iterator1.next(), set, cm1.lO());
            if (!((Boolean)by1.getObject()).booleanValue())
            {
                cm1.f(dh.r(Boolean.valueOf(false)));
                return new by(Boolean.valueOf(false), by1.lV());
            }
            if (flag && by1.lV())
            {
                flag = true;
            } else
            {
                flag = false;
            }
        }

        cm1.f(dh.r(Boolean.valueOf(true)));
        return new by(Boolean.valueOf(true), flag);
    }

    by a(String s1, Set set, Map map, Map map1, Map map2, Map map3, Set set1, 
            cr cr1)
    {
        return a(set, set1, new a(map, map1, map2, map3) {

            final cs ahv;
            final Map ahw;
            final Map ahx;
            final Map ahy;
            final Map ahz;

            public void a(cq.e e1, Set set2, Set set3, cm cm1)
            {
                List list = (List)ahw.get(e1);
                List list1 = (List)ahx.get(e1);
                if (list != null)
                {
                    set2.addAll(list);
                    cm1.lP().b(list, list1);
                }
                List list2 = (List)ahy.get(e1);
                List list3 = (List)ahz.get(e1);
                if (list2 != null)
                {
                    set3.addAll(list2);
                    cm1.lQ().b(list2, list3);
                }
            }

            
            {
                ahv = cs.this;
                ahw = map;
                ahx = map1;
                ahy = map2;
                ahz = map3;
                super();
            }
        }, cr1);
    }

    by a(Set set, cr cr1)
    {
        return a(set, ((Set) (new HashSet())), new a() {

            final cs ahv;

            public void a(cq.e e1, Set set1, Set set2, cm cm1)
            {
                set1.addAll(e1.mt());
                set2.addAll(e1.mu());
                cm1.lR().b(e1.mt(), e1.my());
                cm1.lS().b(e1.mu(), e1.mz());
            }

            
            {
                ahv = cs.this;
                super();
            }
        }, cr1);
    }

    void a(aj aj1)
    {
        a(aho, aj1);
    }

    void b(aj aj1)
    {
        a(ahm, aj1);
    }

    public void bH(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        af af1;
        ck(s1);
        af1 = ahl.bT(s1);
        t t1 = af1.lD();
        cq.a a1;
        for (Iterator iterator = ((Set)a(ahr, t1.lw()).getObject()).iterator(); iterator.hasNext(); a(ahm, a1, new HashSet(), t1.lv()))
        {
            a1 = (cq.a)iterator.next();
        }

        break MISSING_BLOCK_LABEL_109;
        Exception exception;
        exception;
        throw exception;
        af1.lE();
        ck(null);
        this;
        JVM INSTR monitorexit ;
    }

    void c(aj aj1)
    {
        a(ahn, aj1);
    }

    public by cj(String s1)
    {
        ahu = 0;
        af af1 = ahl.bS(s1);
        by by1 = a(s1, new HashSet(), af1.lC());
        af1.lE();
        return by1;
    }

    void ck(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        aht = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void h(List list)
    {
        this;
        JVM INSTR monitorenter ;
        Iterator iterator = list.iterator();
_L2:
        com.google.android.gms.internal.c.i j;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_95;
            }
            j = (com.google.android.gms.internal.c.i)iterator.next();
            if (j.name != null && j.name.startsWith("gaExperiment:"))
            {
                break MISSING_BLOCK_LABEL_83;
            }
            bh.C((new StringBuilder()).append("Ignored supplemental: ").append(j).toString());
        } while (true);
        Exception exception;
        exception;
        throw exception;
        ai.a(aer, j);
        if (true) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
    }

    String mC()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = aht;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

}
