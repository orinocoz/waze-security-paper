// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.b;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.android.gms.tagmanager:
//            dh, bh

class cq
{
    public static class a
    {

        private final Map agU;
        private final com.google.android.gms.internal.d.a agV;

        public static b mi()
        {
            return new b();
        }

        public void a(String s, com.google.android.gms.internal.d.a a1)
        {
            agU.put(s, a1);
        }

        public Map mj()
        {
            return Collections.unmodifiableMap(agU);
        }

        public com.google.android.gms.internal.d.a mk()
        {
            return agV;
        }

        public String toString()
        {
            return (new StringBuilder()).append("Properties: ").append(mj()).append(" pushAfterEvaluate: ").append(agV).toString();
        }

        private a(Map map, com.google.android.gms.internal.d.a a1)
        {
            agU = map;
            agV = a1;
        }

    }

    public static class b
    {

        private final Map agU;
        private com.google.android.gms.internal.d.a agV;

        public b b(String s, com.google.android.gms.internal.d.a a1)
        {
            agU.put(s, a1);
            return this;
        }

        public b i(com.google.android.gms.internal.d.a a1)
        {
            agV = a1;
            return this;
        }

        public a ml()
        {
            return new a(agU, agV);
        }

        private b()
        {
            agU = new HashMap();
        }

    }

    public static class c
    {

        private final String aeR;
        private final List agW;
        private final Map agX;
        private final int agY;

        public static d mm()
        {
            return new d();
        }

        public String getVersion()
        {
            return aeR;
        }

        public List mn()
        {
            return agW;
        }

        public Map mo()
        {
            return agX;
        }

        public String toString()
        {
            return (new StringBuilder()).append("Rules: ").append(mn()).append("  Macros: ").append(agX).toString();
        }

        private c(List list, Map map, String s, int i)
        {
            agW = Collections.unmodifiableList(list);
            agX = Collections.unmodifiableMap(map);
            aeR = s;
            agY = i;
        }

    }

    public static class d
    {

        private String aeR;
        private final List agW;
        private final Map agX;
        private int agY;

        public d a(a a1)
        {
            String s = dh.j((com.google.android.gms.internal.d.a)a1.mj().get(com.google.android.gms.internal.b.cI.toString()));
            Object obj = (List)agX.get(s);
            if (obj == null)
            {
                obj = new ArrayList();
                agX.put(s, obj);
            }
            ((List) (obj)).add(a1);
            return this;
        }

        public d a(e e1)
        {
            agW.add(e1);
            return this;
        }

        public d ce(String s)
        {
            aeR = s;
            return this;
        }

        public d du(int i)
        {
            agY = i;
            return this;
        }

        public c mp()
        {
            return new c(agW, agX, aeR, agY);
        }

        private d()
        {
            agW = new ArrayList();
            agX = new HashMap();
            aeR = "";
            agY = 0;
        }

    }

    public static class e
    {

        private final List agZ;
        private final List aha;
        private final List ahb;
        private final List ahc;
        private final List ahd;
        private final List ahe;
        private final List ahf;
        private final List ahg;
        private final List ahh;
        private final List ahi;

        public static f mq()
        {
            return new f();
        }

        public List mA()
        {
            return ahe;
        }

        public List mr()
        {
            return agZ;
        }

        public List ms()
        {
            return aha;
        }

        public List mt()
        {
            return ahb;
        }

        public List mu()
        {
            return ahc;
        }

        public List mv()
        {
            return ahd;
        }

        public List mw()
        {
            return ahf;
        }

        public List mx()
        {
            return ahg;
        }

        public List my()
        {
            return ahh;
        }

        public List mz()
        {
            return ahi;
        }

        public String toString()
        {
            return (new StringBuilder()).append("Positive predicates: ").append(mr()).append("  Negative predicates: ").append(ms()).append("  Add tags: ").append(mt()).append("  Remove tags: ").append(mu()).append("  Add macros: ").append(mv()).append("  Remove macros: ").append(mA()).toString();
        }

        private e(List list, List list1, List list2, List list3, List list4, List list5, List list6, 
                List list7, List list8, List list9)
        {
            agZ = Collections.unmodifiableList(list);
            aha = Collections.unmodifiableList(list1);
            ahb = Collections.unmodifiableList(list2);
            ahc = Collections.unmodifiableList(list3);
            ahd = Collections.unmodifiableList(list4);
            ahe = Collections.unmodifiableList(list5);
            ahf = Collections.unmodifiableList(list6);
            ahg = Collections.unmodifiableList(list7);
            ahh = Collections.unmodifiableList(list8);
            ahi = Collections.unmodifiableList(list9);
        }

    }

    public static class f
    {

        private final List agZ;
        private final List aha;
        private final List ahb;
        private final List ahc;
        private final List ahd;
        private final List ahe;
        private final List ahf;
        private final List ahg;
        private final List ahh;
        private final List ahi;

        public f b(a a1)
        {
            agZ.add(a1);
            return this;
        }

        public f c(a a1)
        {
            aha.add(a1);
            return this;
        }

        public f cf(String s)
        {
            ahh.add(s);
            return this;
        }

        public f cg(String s)
        {
            ahi.add(s);
            return this;
        }

        public f ch(String s)
        {
            ahf.add(s);
            return this;
        }

        public f ci(String s)
        {
            ahg.add(s);
            return this;
        }

        public f d(a a1)
        {
            ahb.add(a1);
            return this;
        }

        public f e(a a1)
        {
            ahc.add(a1);
            return this;
        }

        public f f(a a1)
        {
            ahd.add(a1);
            return this;
        }

        public f g(a a1)
        {
            ahe.add(a1);
            return this;
        }

        public e mB()
        {
            return new e(agZ, aha, ahb, ahc, ahd, ahe, ahf, ahg, ahh, ahi);
        }

        private f()
        {
            agZ = new ArrayList();
            aha = new ArrayList();
            ahb = new ArrayList();
            ahc = new ArrayList();
            ahd = new ArrayList();
            ahe = new ArrayList();
            ahf = new ArrayList();
            ahg = new ArrayList();
            ahh = new ArrayList();
            ahi = new ArrayList();
        }

    }

    public static class g extends Exception
    {

        public g(String s)
        {
            super(s);
        }
    }


    private static com.google.android.gms.internal.d.a a(int i, com.google.android.gms.internal.c.f f1, com.google.android.gms.internal.d.a aa[], Set set)
        throws g
    {
        int j;
        com.google.android.gms.internal.d.a a1;
        int k;
        com.google.android.gms.internal.d.a a2;
        j = 0;
        if (set.contains(Integer.valueOf(i)))
        {
            cd((new StringBuilder()).append("Value cycle detected.  Current value reference: ").append(i).append(".").append("  Previous value references: ").append(set).append(".").toString());
        }
        a1 = (com.google.android.gms.internal.d.a)a(((Object []) (f1.eX)), i, "values");
        if (aa[i] != null)
        {
            return aa[i];
        }
        set.add(Integer.valueOf(i));
        k = a1.type;
        a2 = null;
        k;
        JVM INSTR tableswitch 1 8: default 152
    //                   1 653
    //                   2 199
    //                   3 292
    //                   4 528
    //                   5 653
    //                   6 653
    //                   7 560
    //                   8 653;
           goto _L1 _L2 _L3 _L4 _L5 _L2 _L2 _L6 _L2
_L1:
        if (a2 == null)
        {
            cd((new StringBuilder()).append("Invalid value: ").append(a1).toString());
        }
        aa[i] = a2;
        set.remove(Integer.valueOf(i));
        return a2;
_L3:
        com.google.android.gms.internal.c.h h3 = h(a1);
        a2 = g(a1);
        a2.fO = new com.google.android.gms.internal.d.a[h3.fz.length];
        int ai3[] = h3.fz;
        int i4 = ai3.length;
        int j4 = 0;
        while (j < i4) 
        {
            int k4 = ai3[j];
            com.google.android.gms.internal.d.a aa4[] = a2.fO;
            int l4 = j4 + 1;
            aa4[j4] = a(k4, f1, aa, set);
            j++;
            j4 = l4;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        a2 = g(a1);
        com.google.android.gms.internal.c.h h2 = h(a1);
        if (h2.fA.length != h2.fB.length)
        {
            cd((new StringBuilder()).append("Uneven map keys (").append(h2.fA.length).append(") and map values (").append(h2.fB.length).append(")").toString());
        }
        a2.fP = new com.google.android.gms.internal.d.a[h2.fA.length];
        a2.fQ = new com.google.android.gms.internal.d.a[h2.fA.length];
        int ai1[] = h2.fA;
        int l1 = ai1.length;
        int i2 = 0;
        int l3;
        for (int j2 = 0; i2 < l1; j2 = l3)
        {
            int k3 = ai1[i2];
            com.google.android.gms.internal.d.a aa3[] = a2.fP;
            l3 = j2 + 1;
            aa3[j2] = a(k3, f1, aa, set);
            i2++;
        }

        int ai2[] = h2.fB;
        int k2 = ai2.length;
        int l2 = 0;
        while (j < k2) 
        {
            int i3 = ai2[j];
            com.google.android.gms.internal.d.a aa2[] = a2.fQ;
            int j3 = l2 + 1;
            aa2[l2] = a(i3, f1, aa, set);
            j++;
            l2 = j3;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        a2 = g(a1);
        a2.fR = dh.j(a(h(a1).fE, f1, aa, set));
        continue; /* Loop/switch isn't completed */
_L6:
        a2 = g(a1);
        com.google.android.gms.internal.c.h h1 = h(a1);
        a2.fV = new com.google.android.gms.internal.d.a[h1.fD.length];
        int ai[] = h1.fD;
        int l = ai.length;
        int i1 = 0;
        while (j < l) 
        {
            int j1 = ai[j];
            com.google.android.gms.internal.d.a aa1[] = a2.fV;
            int k1 = i1 + 1;
            aa1[i1] = a(j1, f1, aa, set);
            j++;
            i1 = k1;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        a2 = a1;
        if (true) goto _L1; else goto _L7
_L7:
    }

    private static a a(com.google.android.gms.internal.c.b b1, com.google.android.gms.internal.c.f f1, com.google.android.gms.internal.d.a aa[], int i)
        throws g
    {
        b b2 = a.mi();
        int ai[] = b1.eH;
        int j = ai.length;
        int k = 0;
        while (k < j) 
        {
            Integer integer = Integer.valueOf(ai[k]);
            com.google.android.gms.internal.c.e e1 = (com.google.android.gms.internal.c.e)a(((Object []) (f1.eY)), integer.intValue(), "properties");
            String s = (String)a(((Object []) (f1.eW)), e1.key, "keys");
            com.google.android.gms.internal.d.a a1 = (com.google.android.gms.internal.d.a)a(((Object []) (aa)), e1.value, "values");
            if (com.google.android.gms.internal.b.dB.toString().equals(s))
            {
                b2.i(a1);
            } else
            {
                b2.b(s, a1);
            }
            k++;
        }
        return b2.ml();
    }

    private static e a(com.google.android.gms.internal.c.g g1, List list, List list1, List list2, com.google.android.gms.internal.c.f f1)
    {
        f f2 = e.mq();
        int ai[] = g1.fn;
        int i = ai.length;
        for (int j = 0; j < i; j++)
        {
            f2.b((a)list2.get(Integer.valueOf(ai[j]).intValue()));
        }

        int ai1[] = g1.fo;
        int k = ai1.length;
        for (int l = 0; l < k; l++)
        {
            f2.c((a)list2.get(Integer.valueOf(ai1[l]).intValue()));
        }

        int ai2[] = g1.fp;
        int i1 = ai2.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            f2.d((a)list.get(Integer.valueOf(ai2[j1]).intValue()));
        }

        int ai3[] = g1.fr;
        int k1 = ai3.length;
        for (int l1 = 0; l1 < k1; l1++)
        {
            Integer integer3 = Integer.valueOf(ai3[l1]);
            f2.cf(f1.eX[integer3.intValue()].fN);
        }

        int ai4[] = g1.fq;
        int i2 = ai4.length;
        for (int j2 = 0; j2 < i2; j2++)
        {
            f2.e((a)list.get(Integer.valueOf(ai4[j2]).intValue()));
        }

        int ai5[] = g1.fs;
        int k2 = ai5.length;
        for (int l2 = 0; l2 < k2; l2++)
        {
            Integer integer2 = Integer.valueOf(ai5[l2]);
            f2.cg(f1.eX[integer2.intValue()].fN);
        }

        int ai6[] = g1.ft;
        int i3 = ai6.length;
        for (int j3 = 0; j3 < i3; j3++)
        {
            f2.f((a)list1.get(Integer.valueOf(ai6[j3]).intValue()));
        }

        int ai7[] = g1.fv;
        int k3 = ai7.length;
        for (int l3 = 0; l3 < k3; l3++)
        {
            Integer integer1 = Integer.valueOf(ai7[l3]);
            f2.ch(f1.eX[integer1.intValue()].fN);
        }

        int ai8[] = g1.fu;
        int i4 = ai8.length;
        for (int j4 = 0; j4 < i4; j4++)
        {
            f2.g((a)list1.get(Integer.valueOf(ai8[j4]).intValue()));
        }

        int ai9[] = g1.fw;
        int k4 = ai9.length;
        for (int l4 = 0; l4 < k4; l4++)
        {
            Integer integer = Integer.valueOf(ai9[l4]);
            f2.ci(f1.eX[integer.intValue()].fN);
        }

        return f2.mB();
    }

    private static Object a(Object aobj[], int i, String s)
        throws g
    {
        if (i < 0 || i >= aobj.length)
        {
            cd((new StringBuilder()).append("Index out of bounds detected: ").append(i).append(" in ").append(s).toString());
        }
        return aobj[i];
    }

    public static c b(com.google.android.gms.internal.c.f f1)
        throws g
    {
        int i = 0;
        com.google.android.gms.internal.d.a aa[] = new com.google.android.gms.internal.d.a[f1.eX.length];
        for (int j = 0; j < f1.eX.length; j++)
        {
            a(j, f1, aa, new HashSet(0));
        }

        d d1 = c.mm();
        ArrayList arraylist = new ArrayList();
        for (int k = 0; k < f1.fa.length; k++)
        {
            arraylist.add(a(f1.fa[k], f1, aa, k));
        }

        ArrayList arraylist1 = new ArrayList();
        for (int l = 0; l < f1.fb.length; l++)
        {
            arraylist1.add(a(f1.fb[l], f1, aa, l));
        }

        ArrayList arraylist2 = new ArrayList();
        for (int i1 = 0; i1 < f1.eZ.length; i1++)
        {
            a a1 = a(f1.eZ[i1], f1, aa, i1);
            d1.a(a1);
            arraylist2.add(a1);
        }

        com.google.android.gms.internal.c.g ag[] = f1.fc;
        for (int j1 = ag.length; i < j1; i++)
        {
            d1.a(a(ag[i], arraylist, arraylist2, arraylist1, f1));
        }

        d1.ce(f1.fg);
        d1.du(f1.fl);
        return d1.mp();
    }

    public static void b(InputStream inputstream, OutputStream outputstream)
        throws IOException
    {
        byte abyte0[] = new byte[1024];
        do
        {
            int i = inputstream.read(abyte0);
            if (i == -1)
            {
                return;
            }
            outputstream.write(abyte0, 0, i);
        } while (true);
    }

    private static void cd(String s)
        throws g
    {
        bh.A(s);
        throw new g(s);
    }

    public static com.google.android.gms.internal.d.a g(com.google.android.gms.internal.d.a a1)
    {
        com.google.android.gms.internal.d.a a2 = new com.google.android.gms.internal.d.a();
        a2.type = a1.type;
        a2.fW = (int[])a1.fW.clone();
        if (a1.fX)
        {
            a2.fX = a1.fX;
        }
        return a2;
    }

    private static com.google.android.gms.internal.c.h h(com.google.android.gms.internal.d.a a1)
        throws g
    {
        if ((com.google.android.gms.internal.c.h)a1.a(com.google.android.gms.internal.c.h.fx) == null)
        {
            cd((new StringBuilder()).append("Expected a ServingValue and didn't get one. Value is: ").append(a1).toString());
        }
        return (com.google.android.gms.internal.c.h)a1.a(com.google.android.gms.internal.c.h.fx);
    }
}
