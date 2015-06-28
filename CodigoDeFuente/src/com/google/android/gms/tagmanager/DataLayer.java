// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.google.android.gms.tagmanager:
//            bh

public class DataLayer
{
    static final class a
    {

        public final String JI;
        public final Object afe;

        public boolean equals(Object obj)
        {
            a a1;
            if (obj instanceof a)
            {
                if (JI.equals((a1 = (a)obj).JI) && afe.equals(a1.afe))
                {
                    return true;
                }
            }
            return false;
        }

        public int hashCode()
        {
            Integer ainteger[] = new Integer[2];
            ainteger[0] = Integer.valueOf(JI.hashCode());
            ainteger[1] = Integer.valueOf(afe.hashCode());
            return Arrays.hashCode(ainteger);
        }

        public String toString()
        {
            return (new StringBuilder()).append("Key: ").append(JI).append(" value: ").append(afe.toString()).toString();
        }

        a(String s, Object obj)
        {
            JI = s;
            afe = obj;
        }
    }

    static interface b
    {

        public abstract void x(Map map);
    }

    static interface c
    {

        public abstract void a(a a1);

        public abstract void a(List list, long l);

        public abstract void bP(String s);
    }

    public static interface c.a
    {

        public abstract void d(List list);
    }


    public static final String EVENT_KEY = "event";
    public static final Object OBJECT_NOT_PRESENT = new Object();
    static final String aeV[] = "gtm.lifetime".toString().split("\\.");
    private static final Pattern aeW = Pattern.compile("(\\d+)\\s*([smhd]?)");
    private final ConcurrentHashMap aeX;
    private final Map aeY;
    private final ReentrantLock aeZ;
    private final LinkedList afa;
    private final c afb;
    private final CountDownLatch afc;

    DataLayer()
    {
        this(new c() {

            public void a(c.a a1)
            {
                a1.d(new ArrayList());
            }

            public void a(List list, long l)
            {
            }

            public void bP(String s)
            {
            }

        });
    }

    DataLayer(c c1)
    {
        afb = c1;
        aeX = new ConcurrentHashMap();
        aeY = new HashMap();
        aeZ = new ReentrantLock();
        afa = new LinkedList();
        afc = new CountDownLatch(1);
        lt();
    }

    private void A(Map map)
    {
        Long long1 = B(map);
        if (long1 == null)
        {
            return;
        } else
        {
            List list = D(map);
            list.remove("gtm.lifetime");
            afb.a(list, long1.longValue());
            return;
        }
    }

    private Long B(Map map)
    {
        Object obj = C(map);
        if (obj == null)
        {
            return null;
        } else
        {
            return bO(obj.toString());
        }
    }

    private Object C(Map map)
    {
        String as[] = aeV;
        int i = as.length;
        int j = 0;
        Object obj = map;
        do
        {
            String s;
label0:
            {
                if (j < i)
                {
                    s = as[j];
                    if (obj instanceof Map)
                    {
                        break label0;
                    }
                    obj = null;
                }
                return obj;
            }
            Object obj1 = ((Map)obj).get(s);
            j++;
            obj = obj1;
        } while (true);
    }

    private List D(Map map)
    {
        ArrayList arraylist = new ArrayList();
        a(map, "", arraylist);
        return arraylist;
    }

    private void E(Map map)
    {
        Map map1 = aeY;
        map1;
        JVM INSTR monitorenter ;
        String s;
        for (Iterator iterator = map.keySet().iterator(); iterator.hasNext(); a(c(s, map.get(s)), aeY))
        {
            s = (String)iterator.next();
        }

        break MISSING_BLOCK_LABEL_72;
        Exception exception;
        exception;
        map1;
        JVM INSTR monitorexit ;
        throw exception;
        map1;
        JVM INSTR monitorexit ;
        F(map);
        return;
    }

    private void F(Map map)
    {
        for (Iterator iterator = aeX.keySet().iterator(); iterator.hasNext(); ((b)iterator.next()).x(map)) { }
    }

    static CountDownLatch a(DataLayer datalayer)
    {
        return datalayer.afc;
    }

    static void a(DataLayer datalayer, Map map)
    {
        datalayer.z(map);
    }

    private void a(Map map, String s, Collection collection)
    {
        Iterator iterator = map.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            StringBuilder stringbuilder = (new StringBuilder()).append(s);
            String s1;
            String s2;
            if (s.length() == 0)
            {
                s1 = "";
            } else
            {
                s1 = ".";
            }
            s2 = stringbuilder.append(s1).append((String)entry.getKey()).toString();
            if (entry.getValue() instanceof Map)
            {
                a((Map)entry.getValue(), s2, collection);
            } else
            if (!s2.equals("gtm.lifetime"))
            {
                collection.add(new a(s2, entry.getValue()));
            }
        } while (true);
    }

    static Long bO(String s)
    {
        Matcher matcher;
        matcher = aeW.matcher(s);
        if (!matcher.matches())
        {
            bh.B((new StringBuilder()).append("unknown _lifetime: ").append(s).toString());
            return null;
        }
        long l1 = Long.parseLong(matcher.group(1));
        long l = l1;
_L2:
        if (l <= 0L)
        {
            bh.B((new StringBuilder()).append("non-positive _lifetime: ").append(s).toString());
            return null;
        }
        break; /* Loop/switch isn't completed */
        NumberFormatException numberformatexception;
        numberformatexception;
        bh.D((new StringBuilder()).append("illegal number in _lifetime value: ").append(s).toString());
        l = 0L;
        if (true) goto _L2; else goto _L1
_L1:
        String s1 = matcher.group(2);
        if (s1.length() == 0)
        {
            return Long.valueOf(l);
        }
        switch (s1.charAt(0))
        {
        default:
            bh.D((new StringBuilder()).append("unknown units in _lifetime: ").append(s).toString());
            return null;

        case 115: // 's'
            return Long.valueOf(l * 1000L);

        case 109: // 'm'
            return Long.valueOf(60L * (l * 1000L));

        case 104: // 'h'
            return Long.valueOf(60L * (60L * (l * 1000L)));

        case 100: // 'd'
            return Long.valueOf(24L * (60L * (60L * (l * 1000L))));
        }
    }

    public static transient List listOf(Object aobj[])
    {
        ArrayList arraylist = new ArrayList();
        for (int i = 0; i < aobj.length; i++)
        {
            arraylist.add(aobj[i]);
        }

        return arraylist;
    }

    private void lt()
    {
        afb.a(new c.a() {

            final DataLayer afd;

            public void d(List list)
            {
                a a1;
                for (Iterator iterator = list.iterator(); iterator.hasNext(); DataLayer.a(afd, afd.c(a1.JI, a1.afe)))
                {
                    a1 = (a)iterator.next();
                }

                DataLayer.a(afd).countDown();
            }

            
            {
                afd = DataLayer.this;
                super();
            }
        });
    }

    private void lu()
    {
        int i = 0;
        do
        {
            Map map = (Map)afa.poll();
            int j;
            if (map != null)
            {
                E(map);
                j = i + 1;
                if (j > 500)
                {
                    afa.clear();
                    throw new RuntimeException("Seems like an infinite loop of pushing to the data layer");
                }
            } else
            {
                return;
            }
            i = j;
        } while (true);
    }

    public static transient Map mapOf(Object aobj[])
    {
        if (aobj.length % 2 != 0)
        {
            throw new IllegalArgumentException("expected even number of key-value pairs");
        }
        HashMap hashmap = new HashMap();
        for (int i = 0; i < aobj.length; i += 2)
        {
            if (!(aobj[i] instanceof String))
            {
                throw new IllegalArgumentException((new StringBuilder()).append("key is not a string: ").append(aobj[i]).toString());
            }
            hashmap.put((String)aobj[i], aobj[i + 1]);
        }

        return hashmap;
    }

    private void z(Map map)
    {
        aeZ.lock();
        afa.offer(map);
        if (aeZ.getHoldCount() == 1)
        {
            lu();
        }
        A(map);
        aeZ.unlock();
        return;
        Exception exception;
        exception;
        aeZ.unlock();
        throw exception;
    }

    void a(b b1)
    {
        aeX.put(b1, Integer.valueOf(0));
    }

    void a(List list, List list1)
    {
        for (; list1.size() < list.size(); list1.add(null)) { }
        int i = 0;
        while (i < list.size()) 
        {
            Object obj = list.get(i);
            if (obj instanceof List)
            {
                if (!(list1.get(i) instanceof List))
                {
                    list1.set(i, new ArrayList());
                }
                a((List)obj, (List)list1.get(i));
            } else
            if (obj instanceof Map)
            {
                if (!(list1.get(i) instanceof Map))
                {
                    list1.set(i, new HashMap());
                }
                a((Map)obj, (Map)list1.get(i));
            } else
            if (obj != OBJECT_NOT_PRESENT)
            {
                list1.set(i, obj);
            }
            i++;
        }
    }

    void a(Map map, Map map1)
    {
        for (Iterator iterator = map.keySet().iterator(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            Object obj = map.get(s);
            if (obj instanceof List)
            {
                if (!(map1.get(s) instanceof List))
                {
                    map1.put(s, new ArrayList());
                }
                a((List)obj, (List)map1.get(s));
            } else
            if (obj instanceof Map)
            {
                if (!(map1.get(s) instanceof Map))
                {
                    map1.put(s, new HashMap());
                }
                a((Map)obj, (Map)map1.get(s));
            } else
            {
                map1.put(s, obj);
            }
        }

    }

    void bN(String s)
    {
        push(s, null);
        afb.bP(s);
    }

    Map c(String s, Object obj)
    {
        HashMap hashmap = new HashMap();
        String as[] = s.toString().split("\\.");
        int i = 0;
        HashMap hashmap1;
        HashMap hashmap2;
        for (hashmap1 = hashmap; i < -1 + as.length; hashmap1 = hashmap2)
        {
            hashmap2 = new HashMap();
            hashmap1.put(as[i], hashmap2);
            i++;
        }

        hashmap1.put(as[-1 + as.length], obj);
        return hashmap;
    }

    public Object get(String s)
    {
        Map map = aeY;
        map;
        JVM INSTR monitorenter ;
        Map map1;
        String as[];
        int i;
        map1 = aeY;
        as = s.split("\\.");
        i = as.length;
        Object obj;
        int j;
        obj = map1;
        j = 0;
_L2:
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_82;
        }
        String s1;
        s1 = as[j];
        if (obj instanceof Map)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        map;
        JVM INSTR monitorexit ;
        return null;
        Object obj1 = ((Map)obj).get(s1);
        if (obj1 != null)
        {
            break MISSING_BLOCK_LABEL_92;
        }
        map;
        JVM INSTR monitorexit ;
        return null;
        map;
        JVM INSTR monitorexit ;
        return obj;
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
        j++;
        obj = obj1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void push(String s, Object obj)
    {
        push(c(s, obj));
    }

    public void push(Map map)
    {
        try
        {
            afc.await();
        }
        catch (InterruptedException interruptedexception)
        {
            bh.D("DataLayer.push: unexpected InterruptedException");
        }
        z(map);
    }

    public void pushEvent(String s, Map map)
    {
        HashMap hashmap = new HashMap(map);
        hashmap.put("event", s);
        push(hashmap);
    }

}
