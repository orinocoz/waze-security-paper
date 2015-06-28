// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import java.util.List;

// Referenced classes of package com.waze.ifs.ui:
//            CameraPreview

private static final class 
{

    private static final int MAX_CAPTURE_SIZE = 0x800000;

    public static android.hardware._cls9 getBestFitSize(int i, int j, boolean flag, android.hardware._cls9 _pcls9)
    {
        List list;
        int k;
        float f;
        int l;
        list = _pcls9.reSizes();
        k = -1;
        f = 3.402823E+38F;
        if (i < j)
        {
            int i1 = i;
            i = j;
            j = i1;
        }
        l = 0;
_L2:
        android.hardware._cls9 _lcls9;
        if (l >= list.size())
        {
            return (android.hardware.reSizes)list.get(k);
        }
        _lcls9 = (android.hardware.reSizes)list.get(l);
        if (_lcls9.reSizes >= i && _lcls9.reSizes >= j)
        {
            break; /* Loop/switch isn't completed */
        }
_L4:
        l++;
        if (true) goto _L2; else goto _L1
_L1:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_204;
        }
        if (_lcls9.reSizes * _lcls9.reSizes > 0x800000) goto _L4; else goto _L3
_L3:
        if (k < 0) goto _L6; else goto _L5
_L5:
        android.hardware._cls9 _lcls9_1 = (android.hardware.reSizes)list.get(k);
        if (_lcls9.reSizes < _lcls9_1.reSizes && _lcls9.reSizes < _lcls9_1.reSizes) goto _L4; else goto _L6
_L6:
        float f1;
        float f2 = (float)_lcls9.reSizes / (float)_lcls9.reSizes;
        f1 = Math.abs((float)i / (float)j - f2);
_L7:
        if (f1 <= f)
        {
            k = l;
            f = f1;
        }
          goto _L4
        f1 = (float)(Math.sqrt((double)_lcls9.reSizes - (double)i) + Math.sqrt((double)_lcls9.reSizes - (double)j));
          goto _L7
    }

    public static android.hardware.reSizes getBestPreviewSize(int i, int j, android.hardware.reSizes resizes)
    {
        List list;
        int k;
        int l;
        int i1;
        list = resizes.ewSizes();
        k = 0;
        l = 0x7fffffff;
        if (i < j)
        {
            int k1 = i;
            i = j;
            j = k1;
        }
        i1 = 0;
_L2:
        android.hardware.reSizes resizes1;
        if (i1 >= list.size())
        {
            return (android.hardware.ewSizes)list.get(k);
        }
        resizes1 = (android.hardware.ewSizes)list.get(i1);
        if (resizes1.ewSizes >= i && resizes1.ewSizes >= j)
        {
            break; /* Loop/switch isn't completed */
        }
_L3:
        i1++;
        if (true) goto _L2; else goto _L1
_L1:
        int j1 = (int)(Math.sqrt((double)resizes1.ewSizes - (double)i) + Math.sqrt((double)resizes1.ewSizes - (double)j));
        if (j1 < l)
        {
            k = i1;
            l = j1;
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    private ()
    {
    }
}
