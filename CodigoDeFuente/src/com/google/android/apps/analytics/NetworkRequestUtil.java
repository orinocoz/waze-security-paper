// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.apps.analytics;

import java.util.Locale;

// Referenced classes of package com.google.android.apps.analytics:
//            AnalyticsParameterEncoder, Event, Item, Transaction, 
//            CustomVariable, CustomVariableBuffer

class NetworkRequestUtil
{

    private static final String FAKE_DOMAIN_HASH = "999";
    private static final String GOOGLE_ANALYTICS_GIF_PATH = "/__utm.gif";
    private static final int X10_PROJECT_NAMES = 8;
    private static final int X10_PROJECT_SCOPES = 11;
    private static final int X10_PROJECT_VALUES = 9;

    NetworkRequestUtil()
    {
    }

    static void appendCurrencyValue(StringBuilder stringbuilder, String s, double d)
    {
        stringbuilder.append(s).append("=");
        double d1 = Math.floor(0.5D + d * 1000000D) / 1000000D;
        if (d1 != 0.0D)
        {
            stringbuilder.append(Double.toString(d1));
        }
    }

    private static void appendStringValue(StringBuilder stringbuilder, String s, String s1)
    {
        stringbuilder.append(s).append("=");
        if (s1 != null && s1.trim().length() > 0)
        {
            stringbuilder.append(AnalyticsParameterEncoder.encode(s1));
        }
    }

    public static String constructEventRequestPath(Event event, String s)
    {
        Locale locale = Locale.getDefault();
        StringBuilder stringbuilder = new StringBuilder();
        StringBuilder stringbuilder1 = new StringBuilder();
        Object aobj[] = new Object[2];
        aobj[0] = encode(event.category);
        aobj[1] = encode(event.action);
        stringbuilder1.append(String.format("5(%s*%s", aobj));
        if (event.label != null)
        {
            stringbuilder1.append("*").append(encode(event.label));
        }
        stringbuilder1.append(")");
        if (event.value > -1)
        {
            Object aobj3[] = new Object[1];
            aobj3[0] = Integer.valueOf(event.value);
            stringbuilder1.append(String.format("(%d)", aobj3));
        }
        stringbuilder1.append(getCustomVariableParams(event));
        stringbuilder.append("/__utm.gif");
        stringbuilder.append("?utmwv=4.6ma");
        stringbuilder.append("&utmn=").append(event.randomVal);
        stringbuilder.append("&utmt=event");
        stringbuilder.append("&utme=").append(stringbuilder1.toString());
        stringbuilder.append("&utmcs=UTF-8");
        Object aobj1[] = new Object[2];
        aobj1[0] = Integer.valueOf(event.screenWidth);
        aobj1[1] = Integer.valueOf(event.screenHeight);
        stringbuilder.append(String.format("&utmsr=%dx%d", aobj1));
        Object aobj2[] = new Object[2];
        aobj2[0] = locale.getLanguage();
        aobj2[1] = locale.getCountry();
        stringbuilder.append(String.format("&utmul=%s-%s", aobj2));
        stringbuilder.append("&utmac=").append(event.accountId);
        stringbuilder.append("&utmcc=").append(getEscapedCookieString(event, s));
        return stringbuilder.toString();
    }

    public static String constructItemRequestPath(Event event, String s)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("/__utm.gif");
        stringbuilder.append("?utmwv=4.6ma");
        stringbuilder.append("&utmn=").append(event.randomVal);
        stringbuilder.append("&utmt=item");
        Item item = event.getItem();
        if (item != null)
        {
            appendStringValue(stringbuilder, "&utmtid", item.getOrderId());
            appendStringValue(stringbuilder, "&utmipc", item.getItemSKU());
            appendStringValue(stringbuilder, "&utmipn", item.getItemName());
            appendStringValue(stringbuilder, "&utmiva", item.getItemCategory());
            appendCurrencyValue(stringbuilder, "&utmipr", item.getItemPrice());
            stringbuilder.append("&utmiqt=");
            if (item.getItemCount() != 0L)
            {
                stringbuilder.append(item.getItemCount());
            }
        }
        stringbuilder.append("&utmac=").append(event.accountId);
        stringbuilder.append("&utmcc=").append(getEscapedCookieString(event, s));
        return stringbuilder.toString();
    }

    public static String constructPageviewRequestPath(Event event, String s)
    {
        String s1 = "";
        if (event.action != null)
        {
            s1 = event.action;
        }
        if (!s1.startsWith("/"))
        {
            s1 = (new StringBuilder()).append("/").append(s1).toString();
        }
        String s2 = encode(s1);
        String s3 = getCustomVariableParams(event);
        Locale locale = Locale.getDefault();
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("/__utm.gif");
        stringbuilder.append("?utmwv=4.6ma");
        stringbuilder.append("&utmn=").append(event.randomVal);
        if (s3.length() > 0)
        {
            stringbuilder.append("&utme=").append(s3);
        }
        stringbuilder.append("&utmcs=UTF-8");
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(event.screenWidth);
        aobj[1] = Integer.valueOf(event.screenHeight);
        stringbuilder.append(String.format("&utmsr=%dx%d", aobj));
        Object aobj1[] = new Object[2];
        aobj1[0] = locale.getLanguage();
        aobj1[1] = locale.getCountry();
        stringbuilder.append(String.format("&utmul=%s-%s", aobj1));
        stringbuilder.append("&utmp=").append(s2);
        stringbuilder.append("&utmac=").append(event.accountId);
        stringbuilder.append("&utmcc=").append(getEscapedCookieString(event, s));
        return stringbuilder.toString();
    }

    public static String constructTransactionRequestPath(Event event, String s)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("/__utm.gif");
        stringbuilder.append("?utmwv=4.6ma");
        stringbuilder.append("&utmn=").append(event.randomVal);
        stringbuilder.append("&utmt=tran");
        Transaction transaction = event.getTransaction();
        if (transaction != null)
        {
            appendStringValue(stringbuilder, "&utmtid", transaction.getOrderId());
            appendStringValue(stringbuilder, "&utmtst", transaction.getStoreName());
            appendCurrencyValue(stringbuilder, "&utmtto", transaction.getTotalCost());
            appendCurrencyValue(stringbuilder, "&utmttx", transaction.getTotalTax());
            appendCurrencyValue(stringbuilder, "&utmtsp", transaction.getShippingCost());
            appendStringValue(stringbuilder, "&utmtci", "");
            appendStringValue(stringbuilder, "&utmtrg", "");
            appendStringValue(stringbuilder, "&utmtco", "");
        }
        stringbuilder.append("&utmac=").append(event.accountId);
        stringbuilder.append("&utmcc=").append(getEscapedCookieString(event, s));
        return stringbuilder.toString();
    }

    private static void createX10Project(CustomVariable acustomvariable[], StringBuilder stringbuilder, int i)
    {
        boolean flag;
        int j;
        stringbuilder.append(i).append("(");
        flag = true;
        j = 0;
_L8:
        if (j >= acustomvariable.length)
        {
            break MISSING_BLOCK_LABEL_159;
        }
        if (acustomvariable[j] == null) goto _L2; else goto _L1
_L1:
        CustomVariable customvariable;
        customvariable = acustomvariable[j];
        if (!flag)
        {
            stringbuilder.append("*");
        } else
        {
            flag = false;
        }
        stringbuilder.append(customvariable.getIndex()).append("!");
        i;
        JVM INSTR tableswitch 8 11: default 96
    //                   8 108
    //                   9 127
    //                   10 96
    //                   11 146;
           goto _L3 _L4 _L5 _L3 _L6
_L6:
        break MISSING_BLOCK_LABEL_146;
_L3:
        break; /* Loop/switch isn't completed */
_L4:
        break; /* Loop/switch isn't completed */
_L2:
        j++;
        if (true) goto _L8; else goto _L7
_L7:
        stringbuilder.append(x10Escape(encode(customvariable.getName())));
          goto _L2
_L5:
        stringbuilder.append(x10Escape(encode(customvariable.getValue())));
          goto _L2
        stringbuilder.append(customvariable.getScope());
          goto _L2
        stringbuilder.append(")");
        return;
    }

    private static String encode(String s)
    {
        return AnalyticsParameterEncoder.encode(s);
    }

    public static String getCustomVariableParams(Event event)
    {
        StringBuilder stringbuilder = new StringBuilder();
        CustomVariableBuffer customvariablebuffer = event.getCustomVariableBuffer();
        if (customvariablebuffer == null)
        {
            return "";
        }
        if (!customvariablebuffer.hasCustomVariables())
        {
            return "";
        } else
        {
            CustomVariable acustomvariable[] = customvariablebuffer.getCustomVariableArray();
            createX10Project(acustomvariable, stringbuilder, 8);
            createX10Project(acustomvariable, stringbuilder, 9);
            createX10Project(acustomvariable, stringbuilder, 11);
            return stringbuilder.toString();
        }
    }

    public static String getEscapedCookieString(Event event, String s)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("__utma=");
        stringbuilder.append("999").append(".");
        stringbuilder.append(event.userId).append(".");
        stringbuilder.append(event.timestampFirst).append(".");
        stringbuilder.append(event.timestampPrevious).append(".");
        stringbuilder.append(event.timestampCurrent).append(".");
        stringbuilder.append(event.visits);
        if (s != null)
        {
            stringbuilder.append("+__utmz=");
            stringbuilder.append("999").append(".");
            stringbuilder.append(event.timestampFirst).append(".");
            stringbuilder.append("1.1.");
            stringbuilder.append(s);
        }
        return encode(stringbuilder.toString());
    }

    private static String x10Escape(String s)
    {
        return s.replace("'", "'0").replace(")", "'1").replace("*", "'2").replace("!", "'3");
    }
}
