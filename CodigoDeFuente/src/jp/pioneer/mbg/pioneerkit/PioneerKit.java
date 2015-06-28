// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.mbg.pioneerkit;

import android.content.Context;
import jp.pioneer.mbg.pioneerkit.a.b.b;
import jp.pioneer.mbg.pioneerkit.b.a;
import jp.pioneer.mbg.pioneerkit.b.u;

// Referenced classes of package jp.pioneer.mbg.pioneerkit:
//            IExtLocationListener, IExtRemoteCtrlListener, IExtAppFocusListener, IExtRequiredListener

public class PioneerKit
{

    public static final int ADVANCED_APP_MODE = 0;
    public static final int AV_APP_CTRL_MODE = 1;
    public static final int EXT_DEVICE_LOCATION_GPS = 1;
    public static final int EXT_DEVICE_LOCATION_GPS_SENSOR = 2;
    public static final int EXT_DEVICE_LOCATION_GPS_SENSOR_PULSE = 3;
    public static final int EXT_DEVICE_LOCATION_INVALID = 0;
    public static final int EXT_DEVICE_LOCTION_ACCURACY_COARSE = 100;
    public static final int EXT_DEVICE_LOCTION_ACCURACY_FINE = 10;
    public static final int EXT_DEVICE_LOCTION_ACCURACY_INVALID = -1;
    public static final int EXT_DEVICE_REMOTE_CONTROLLER_AV_REMOTE_CONTROL = 1;
    public static final int EXT_DEVICE_REMOTE_CONTROLLER_INVALID = 0;
    public static final int EXT_DEVICE_SPEC_POINTER_1 = 1;
    public static final int EXT_DEVICE_SPEC_POINTER_2 = 2;
    public static final int EXT_DEVICE_SPEC_POINTER_3 = 3;
    public static final int EXT_DEVICE_SPEC_POINTER_INVALID = 0;
    public static final int EXT_REMOTE_CTRL_AV_CMD_FF = 5;
    public static final int EXT_REMOTE_CTRL_AV_CMD_PAUSE = 2;
    public static final int EXT_REMOTE_CTRL_AV_CMD_PLAY = 1;
    public static final int EXT_REMOTE_CTRL_AV_CMD_RW = 6;
    public static final int EXT_REMOTE_CTRL_AV_CMD_TOGGLE = 0;
    public static final int EXT_REMOTE_CTRL_AV_CMD_TRACKDOWN = 4;
    public static final int EXT_REMOTE_CTRL_AV_CMD_TRACKUP = 3;

    public PioneerKit()
    {
    }

    public static boolean pIsAdvancedAppMode()
    {
        return a.b().d();
    }

    public static boolean pIsAvAppControlMode()
    {
        return a.b().j();
    }

    public static boolean pIsParking()
    {
        return a.b().e();
    }

    public static boolean pRegisterAppFocusListener(IExtAppFocusListener iextappfocuslistener)
    {
        return a.b().a(iextappfocuslistener);
    }

    public static boolean pRegisterLocationListener(IExtLocationListener iextlocationlistener)
    {
        return a.b().a(iextlocationlistener);
    }

    public static boolean pRegisterRemoteCtrlListener(IExtRemoteCtrlListener iextremotectrllistener)
    {
        return a.b().a(iextremotectrllistener);
    }

    public static boolean pSendAppName(String s)
    {
        return a.b().b(s);
    }

    public static boolean pSendTrackInfo(byte byte0, byte abyte0[])
    {
        return a.b().b(byte0, abyte0);
    }

    public static boolean pSendTrackInfoSetting(byte abyte0[])
    {
        return a.b().a(abyte0);
    }

    public static boolean pSetMediaPlayerStatus(int i)
    {
        return a.b().c(i);
    }

    public static boolean pStartPioneerKit(Context context, IExtRequiredListener iextrequiredlistener)
    {
        if (context == null || iextrequiredlistener == null)
        {
            return false;
        } else
        {
            b.a();
            jp.pioneer.mbg.pioneerkit.a.b.a.a(u.b(context));
            a.b().a(iextrequiredlistener);
            return a.b().c(context);
        }
    }

    public static boolean pStopPioneerKit(Context context, IExtRequiredListener iextrequiredlistener)
    {
        if (context == null || iextrequiredlistener == null)
        {
            return false;
        }
        if (iextrequiredlistener instanceof IExtLocationListener)
        {
            a.b().b((IExtLocationListener)iextrequiredlistener);
        }
        if (iextrequiredlistener instanceof IExtRemoteCtrlListener)
        {
            a.b().b((IExtRemoteCtrlListener)iextrequiredlistener);
        }
        a.b().b(iextrequiredlistener);
        a.b().d(context);
        return true;
    }

    public static boolean pUnregisterAppFocusListener(IExtAppFocusListener iextappfocuslistener)
    {
        return a.b().b(iextappfocuslistener);
    }

    public static boolean pUnregisterLocationListener(IExtLocationListener iextlocationlistener)
    {
        return a.b().b(iextlocationlistener);
    }

    public static boolean pUnregisterRemoteCtrlListener(IExtRemoteCtrlListener iextremotectrllistener)
    {
        return a.b().b(iextremotectrllistener);
    }
}
