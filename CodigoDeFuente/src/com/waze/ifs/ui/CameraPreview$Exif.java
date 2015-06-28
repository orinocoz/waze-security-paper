// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import com.waze.Logger;

// Referenced classes of package com.waze.ifs.ui:
//            CameraPreview

public static class 
{

    public static int getOrientation(byte abyte0[])
    {
        boolean flag = true;
        if (abyte0 != null) goto _L2; else goto _L1
_L1:
        return 0;
_L2:
        int i = 0;
_L9:
        int j;
        int k;
        int l;
        j = i + 3;
        k = abyte0.length;
        l = 0;
        if (j >= k) goto _L4; else goto _L3
_L3:
        int k2 = i + 1;
        if ((0xff & abyte0[i]) == 255) goto _L6; else goto _L5
_L5:
        i = k2;
          goto _L4
_L6:
label0:
        {
            l2 = 0xff & abyte0[k2];
            if (l2 != 255)
            {
                break label0;
            }
            i = k2;
        }
        continue; /* Loop/switch isn't completed */
        for (i = k2 + 1; l2 == 216 || l2 == flag; i = k2 + 1)
        {
            continue; /* Loop/switch isn't completed */
        }

        l = 0;
        if (l2 != 217)
        {
            l = 0;
            if (l2 != 218)
            {
label1:
                {
                    i3 = pack(abyte0, i, 2, false);
                    if (i3 < 2 || i + i3 > abyte0.length)
                    {
                        Logger.e("Invalid length");
                        return 0;
                    }
                    if (l2 != 225 || i3 < 8 || pack(abyte0, i + 2, 4, false) != 0x45786966 || pack(abyte0, i + 6, 2, false) != 0)
                    {
                        break label1;
                    }
                    i += 8;
                    l = i3 - 8;
                }
            }
        }
        if (true) goto _L4; else goto _L7
_L7:
        break; /* Loop/switch isn't completed */
        i += i3;
        if (true) goto _L9; else goto _L8
_L4:
        int k1;
        int l1;
        int i2;
        if (l <= 8)
        {
            break; /* Loop/switch isn't completed */
        }
        int i1 = pack(abyte0, i, 4, false);
        int l2;
        int i3;
        if (i1 != 0x49492a00 && i1 != 0x4d4d002a)
        {
            Logger.e("Invalid byte order");
            return 0;
        }
        int j1;
        if (i1 != 0x49492a00)
        {
            flag = false;
        }
        j1 = 2 + pack(abyte0, i + 4, 4, flag);
        if (j1 < 10 || j1 > l)
        {
            Logger.e("Invalid offset");
            return 0;
        }
        k1 = i + j1;
        l1 = l - j1;
        i2 = pack(abyte0, k1 - 2, 2, flag);
_L11:
        int j2 = i2 - 1;
        if (i2 > 0 && l1 >= 12) goto _L10; else goto _L8
_L8:
        Logger.i("Orientation not found");
        return 0;
_L10:
label2:
        {
            if (pack(abyte0, k1, 2, flag) != 274)
            {
                break label2;
            }
            switch (pack(abyte0, k1 + 8, 2, flag))
            {
            case 2: // '\002'
            case 4: // '\004'
            case 5: // '\005'
            case 7: // '\007'
            default:
                Logger.i("Unsupported orientation");
                return 0;

            case 3: // '\003'
                return 180;

            case 6: // '\006'
                return 90;

            case 8: // '\b'
                return 270;

            case 1: // '\001'
                break;
            }
        }
          goto _L1
        k1 += 12;
        l1 -= 12;
        i2 = j2;
          goto _L11
    }

    private static int pack(byte abyte0[], int i, int j, boolean flag)
    {
        byte byte0 = 1;
        if (flag)
        {
            i += j - 1;
            byte0 = -1;
        }
        int k = 0;
        int l = j;
        do
        {
            int i1 = l - 1;
            if (l <= 0)
            {
                return k;
            }
            k = k << 8 | 0xff & abyte0[i];
            i += byte0;
            l = i1;
        } while (true);
    }

    public ()
    {
    }
}
