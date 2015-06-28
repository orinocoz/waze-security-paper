// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;

import java.util.LinkedHashMap;
import java.util.regex.Pattern;

public class RegexCache
{
    private static class LRUCache
    {

        private LinkedHashMap map;
        private int size;

        public boolean containsKey(Object obj)
        {
            this;
            JVM INSTR monitorenter ;
            boolean flag = map.containsKey(obj);
            this;
            JVM INSTR monitorexit ;
            return flag;
            Exception exception;
            exception;
            throw exception;
        }

        public Object get(Object obj)
        {
            this;
            JVM INSTR monitorenter ;
            Object obj1 = map.get(obj);
            this;
            JVM INSTR monitorexit ;
            return obj1;
            Exception exception;
            exception;
            throw exception;
        }

        public void put(Object obj, Object obj1)
        {
            this;
            JVM INSTR monitorenter ;
            map.put(obj, obj1);
            this;
            JVM INSTR monitorexit ;
            return;
            Exception exception;
            exception;
            throw exception;
        }


        public LRUCache(int i)
        {
            size = i;
            map = new _cls1(1 + (i * 4) / 3, 0.75F, true);
        }
    }


    private LRUCache cache;

    public RegexCache(int i)
    {
        cache = new LRUCache(i);
    }

    boolean containsRegex(String s)
    {
        return cache.containsKey(s);
    }

    public Pattern getPatternForRegex(String s)
    {
        Pattern pattern = (Pattern)cache.get(s);
        if (pattern == null)
        {
            pattern = Pattern.compile(s);
            cache.put(s, pattern);
        }
        return pattern;
    }

    // Unreferenced inner class com/google/i18n/phonenumbers/RegexCache$LRUCache$1

/* anonymous class */
    class LRUCache._cls1 extends LinkedHashMap
    {

        final LRUCache this$0;

        protected boolean removeEldestEntry(java.util.Map.Entry entry)
        {
            return size() > size;
        }

            
            {
                this$0 = LRUCache.this;
                super(i, f, flag);
            }
    }

}
