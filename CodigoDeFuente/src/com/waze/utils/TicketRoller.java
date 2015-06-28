// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.utils;

import junit.framework.Assert;

public class TicketRoller
{
    public static final class Type extends Enum
    {

        public static final Type ActivityResult;
        private static final Type ENUM$VALUES[];
        public static final Type Global;
        public static final Type Handler;
        public static final Type Last;
        public static final Type Test;

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(com/waze/utils/TicketRoller$Type, s);
        }

        public static Type[] values()
        {
            Type atype[] = ENUM$VALUES;
            int i = atype.length;
            Type atype1[] = new Type[i];
            System.arraycopy(atype, 0, atype1, 0, i);
            return atype1;
        }

        static 
        {
            Test = new Type("Test", 0);
            Global = new Type("Global", 1);
            Handler = new Type("Handler", 2);
            ActivityResult = new Type("ActivityResult", 3);
            Last = new Type("Last", 4);
            Type atype[] = new Type[5];
            atype[0] = Test;
            atype[1] = Global;
            atype[2] = Handler;
            atype[3] = ActivityResult;
            atype[4] = Last;
            ENUM$VALUES = atype;
        }

        private Type(String s, int i)
        {
            super(s, i);
        }
    }


    private static int typeTickets[] = new int[Type.values().length];

    private TicketRoller()
    {
    }

    public static int get(Type type)
    {
        com/waze/utils/TicketRoller;
        JVM INSTR monitorenter ;
        int j;
        int ai[] = typeTickets;
        int i = type.ordinal();
        j = 1 + ai[i];
        ai[i] = j;
        com/waze/utils/TicketRoller;
        JVM INSTR monitorexit ;
        return j;
        Exception exception;
        exception;
        throw exception;
    }

    public static void testThis()
    {
        Assert.assertEquals(get(Type.Test), 1);
        Assert.assertEquals(get(Type.Test), 2);
        Assert.assertEquals(get(Type.Test), 3);
        Assert.assertEquals(get(Type.Last), 1);
        Assert.assertEquals(get(Type.Test), 4);
        Assert.assertEquals(get(Type.Test), 5);
        Assert.assertEquals(get(Type.Last), 2);
        Assert.assertEquals(get(Type.Last), 3);
        Assert.assertEquals(get(Type.Last), 4);
        Assert.assertEquals(get(Type.Test), 6);
        Assert.assertEquals(get(Type.Test), 7);
        Assert.assertEquals(get(Type.Last), 5);
    }

}
