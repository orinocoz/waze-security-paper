// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.analytics;


// Referenced classes of package com.google.android.gms.analytics:
//            u

public static final class  extends Enum
{

    public static final we uT;
    public static final we uU;
    public static final we uV;
    public static final we uW;
    public static final we uX;
    public static final we uY;
    public static final we uZ;
    public static final we vA;
    public static final we vB;
    public static final we vC;
    public static final we vD;
    public static final we vE;
    public static final we vF;
    public static final we vG;
    public static final we vH;
    public static final we vI;
    public static final we vJ;
    public static final we vK;
    public static final we vL;
    public static final we vM;
    public static final we vN;
    public static final we vO;
    public static final we vP;
    public static final we vQ;
    public static final we vR;
    public static final we vS;
    public static final we vT;
    public static final we vU;
    public static final we vV;
    public static final we vW;
    public static final we vX;
    public static final we vY;
    public static final we vZ;
    public static final we va;
    public static final we vb;
    public static final we vc;
    public static final we vd;
    public static final we ve;
    public static final we vf;
    public static final we vg;
    public static final we vh;
    public static final we vi;
    public static final we vj;
    public static final we vk;
    public static final we vl;
    public static final we vm;
    public static final we vn;
    public static final we vo;
    public static final we vp;
    public static final we vq;
    public static final we vr;
    public static final we vs;
    public static final we vt;
    public static final we vu;
    public static final we vv;
    public static final we vw;
    public static final we vx;
    public static final we vy;
    public static final we vz;
    public static final we wa;
    public static final we wb;
    public static final we wc;
    public static final we wd;
    private static final we we[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/google/android/gms/analytics/u$a, s);
    }

    public static [] values()
    {
        return ([])we.clone();
    }

    static 
    {
        uT = new <init>("MAP_BUILDER_SET", 0);
        uU = new <init>("MAP_BUILDER_SET_ALL", 1);
        uV = new <init>("MAP_BUILDER_GET", 2);
        uW = new <init>("MAP_BUILDER_SET_CAMPAIGN_PARAMS", 3);
        uX = new <init>("BLANK_04", 4);
        uY = new <init>("BLANK_05", 5);
        uZ = new <init>("BLANK_06", 6);
        va = new <init>("BLANK_07", 7);
        vb = new <init>("BLANK_08", 8);
        vc = new <init>("GET", 9);
        vd = new <init>("SET", 10);
        ve = new <init>("SEND", 11);
        vf = new <init>("BLANK_12", 12);
        vg = new <init>("BLANK_13", 13);
        vh = new <init>("BLANK_14", 14);
        vi = new <init>("BLANK_15", 15);
        vj = new <init>("BLANK_16", 16);
        vk = new <init>("BLANK_17", 17);
        vl = new <init>("BLANK_18", 18);
        vm = new <init>("BLANK_19", 19);
        vn = new <init>("BLANK_20", 20);
        vo = new <init>("BLANK_21", 21);
        vp = new <init>("BLANK_22", 22);
        vq = new <init>("BLANK_23", 23);
        vr = new <init>("BLANK_24", 24);
        vs = new <init>("BLANK_25", 25);
        vt = new <init>("BLANK_26", 26);
        vu = new <init>("BLANK_27", 27);
        vv = new <init>("BLANK_28", 28);
        vw = new <init>("BLANK_29", 29);
        vx = new <init>("SET_EXCEPTION_PARSER", 30);
        vy = new <init>("GET_EXCEPTION_PARSER", 31);
        vz = new <init>("CONSTRUCT_TRANSACTION", 32);
        vA = new <init>("CONSTRUCT_EXCEPTION", 33);
        vB = new <init>("CONSTRUCT_RAW_EXCEPTION", 34);
        vC = new <init>("CONSTRUCT_TIMING", 35);
        vD = new <init>("CONSTRUCT_SOCIAL", 36);
        vE = new <init>("BLANK_37", 37);
        vF = new <init>("BLANK_38", 38);
        vG = new <init>("GET_TRACKER", 39);
        vH = new <init>("GET_DEFAULT_TRACKER", 40);
        vI = new <init>("SET_DEFAULT_TRACKER", 41);
        vJ = new <init>("SET_APP_OPT_OUT", 42);
        vK = new <init>("GET_APP_OPT_OUT", 43);
        vL = new <init>("DISPATCH", 44);
        vM = new <init>("SET_DISPATCH_PERIOD", 45);
        vN = new <init>("BLANK_46", 46);
        vO = new <init>("REPORT_UNCAUGHT_EXCEPTIONS", 47);
        vP = new <init>("SET_AUTO_ACTIVITY_TRACKING", 48);
        vQ = new <init>("SET_SESSION_TIMEOUT", 49);
        vR = new <init>("CONSTRUCT_EVENT", 50);
        vS = new <init>("CONSTRUCT_ITEM", 51);
        vT = new <init>("BLANK_52", 52);
        vU = new <init>("BLANK_53", 53);
        vV = new <init>("SET_DRY_RUN", 54);
        vW = new <init>("GET_DRY_RUN", 55);
        vX = new <init>("SET_LOGGER", 56);
        vY = new <init>("SET_FORCE_LOCAL_DISPATCH", 57);
        vZ = new <init>("GET_TRACKER_NAME", 58);
        wa = new <init>("CLOSE_TRACKER", 59);
        wb = new <init>("EASY_TRACKER_ACTIVITY_START", 60);
        wc = new <init>("EASY_TRACKER_ACTIVITY_STOP", 61);
        wd = new <init>("CONSTRUCT_APP_VIEW", 62);
        lone alone[] = new <init>[63];
        alone[0] = uT;
        alone[1] = uU;
        alone[2] = uV;
        alone[3] = uW;
        alone[4] = uX;
        alone[5] = uY;
        alone[6] = uZ;
        alone[7] = va;
        alone[8] = vb;
        alone[9] = vc;
        alone[10] = vd;
        alone[11] = ve;
        alone[12] = vf;
        alone[13] = vg;
        alone[14] = vh;
        alone[15] = vi;
        alone[16] = vj;
        alone[17] = vk;
        alone[18] = vl;
        alone[19] = vm;
        alone[20] = vn;
        alone[21] = vo;
        alone[22] = vp;
        alone[23] = vq;
        alone[24] = vr;
        alone[25] = vs;
        alone[26] = vt;
        alone[27] = vu;
        alone[28] = vv;
        alone[29] = vw;
        alone[30] = vx;
        alone[31] = vy;
        alone[32] = vz;
        alone[33] = vA;
        alone[34] = vB;
        alone[35] = vC;
        alone[36] = vD;
        alone[37] = vE;
        alone[38] = vF;
        alone[39] = vG;
        alone[40] = vH;
        alone[41] = vI;
        alone[42] = vJ;
        alone[43] = vK;
        alone[44] = vL;
        alone[45] = vM;
        alone[46] = vN;
        alone[47] = vO;
        alone[48] = vP;
        alone[49] = vQ;
        alone[50] = vR;
        alone[51] = vS;
        alone[52] = vT;
        alone[53] = vU;
        alone[54] = vV;
        alone[55] = vW;
        alone[56] = vX;
        alone[57] = vY;
        alone[58] = vZ;
        alone[59] = wa;
        alone[60] = wb;
        alone[61] = wc;
        alone[62] = wd;
        we = alone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
