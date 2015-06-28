// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.abaltatech.weblinkserver.WLServer;
import jp.pioneer.ce.aam2.AAM2Kit.a.a;
import jp.pioneer.ce.aam2.AAM2Kit.b.b.b;
import jp.pioneer.ce.aam2.AAM2Kit.c.z;
import jp.pioneer.ce.aam2.AAM2Kit.replydata.AAM2TrackInfoReplyDataBase;
import jp.pioneer.ce.aam2.AAM2Kit.replydata.AAM2TrackSettingInfoReplyData;

// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit:
//            IAAM2LocationListener, IAAM2RemoteCtrlListener, IAAM2MediaInfoReqListener, IAAM2AppFocusListener, 
//            c, IAAM2ExtendedDataListener, IAAM2RequiredListener

public class AAM2Kit
{

    public static final int AAM2_LOCATION_INFO_ACCURACY_COARSE = 100;
    public static final int AAM2_LOCATION_INFO_ACCURACY_FINE = 10;
    public static final int AAM2_LOCATION_INFO_ACCURACY_INVALID = -1;
    public static final int AAM2_MAINUNIT_SPEC_LOCATION_GPS = 1;
    public static final int AAM2_MAINUNIT_SPEC_LOCATION_GPS_SENSOR = 2;
    public static final int AAM2_MAINUNIT_SPEC_LOCATION_GPS_SENSOR_PULSE = 3;
    public static final int AAM2_MAINUNIT_SPEC_LOCATION_INVALID = 0;
    public static final int AAM2_MAINUNIT_SPEC_POINTER_1 = 1;
    public static final int AAM2_MAINUNIT_SPEC_POINTER_2 = 2;
    public static final int AAM2_MAINUNIT_SPEC_POINTER_INVALID = 0;
    public static final int AAM2_MAINUNIT_SPEC_REMOTE_CONTROLLER_AV = 1;
    public static final int AAM2_MAINUNIT_SPEC_REMOTE_CONTROLLER_INVALID = 0;
    public static final int AAM2_MEDIA_PLAYER_STATUS_PAUSE = 0;
    public static final int AAM2_MEDIA_PLAYER_STATUS_PLAY = 1;
    public static final int AAM2_REMOTE_CTRL_CMD_AV_FF = 5;
    public static final int AAM2_REMOTE_CTRL_CMD_AV_PAUSE = 2;
    public static final int AAM2_REMOTE_CTRL_CMD_AV_PLAY = 1;
    public static final int AAM2_REMOTE_CTRL_CMD_AV_RW = 6;
    public static final int AAM2_REMOTE_CTRL_CMD_AV_TOGGLE = 0;
    public static final int AAM2_REMOTE_CTRL_CMD_AV_TRACKDOWN = 4;
    public static final int AAM2_REMOTE_CTRL_CMD_AV_TRACKUP = 3;
    public static final long AAM2_TRACKINFO_INVALID_TOKEN = -1L;
    public static final int AAM2_TRACKINFO_TYPE_ALBUM = 5;
    public static final int AAM2_TRACKINFO_TYPE_ARTIST = 4;
    public static final int AAM2_TRACKINFO_TYPE_ELAPSED_TIME = 6;
    public static final int AAM2_TRACKINFO_TYPE_INFO = 2;
    public static final int AAM2_TRACKINFO_TYPE_TITLE = 3;
    public static final int ADVANCED_APP_MODE_2;

    public AAM2Kit()
    {
    }

    public static boolean a(Context context)
    {
        if (context == null)
        {
            return false;
        }
        Context context1 = context.getApplicationContext();
        Intent intent = new Intent("abaltatech.intent.action.bindProtocolDispatcherPrivateService");
        intent.setComponent(new ComponentName("jp.pioneer.mbg.appradio.AppRadioLauncher", "com.abaltatech.protocoldispatcher.ProtocolDispatcherService"));
        if (context1.startService(intent) != null)
        {
            jp.pioneer.ce.aam2.AAM2Kit.a.a.a().b();
        }
        jp.pioneer.ce.aam2.AAM2Kit.c.a.a(true);
        return true;
    }

    public static boolean pIsAdvancedAppMode()
    {
        return jp.pioneer.ce.aam2.AAM2Kit.c.a.b().d();
    }

    public static boolean pIsDriveStopping()
    {
        return jp.pioneer.ce.aam2.AAM2Kit.c.a.b().f();
    }

    public static boolean pIsFocused()
    {
        return jp.pioneer.ce.aam2.AAM2Kit.c.a.b().l();
    }

    public static boolean pIsParkingSwitch()
    {
        return jp.pioneer.ce.aam2.AAM2Kit.c.a.b().e();
    }

    public static boolean pRegisterAppFocusListener(IAAM2AppFocusListener iaam2appfocuslistener)
    {
        return jp.pioneer.ce.aam2.AAM2Kit.c.a.b().a(iaam2appfocuslistener);
    }

    public static boolean pRegisterExtendedDataListener(IAAM2ExtendedDataListener iaam2extendeddatalistener)
    {
        return jp.pioneer.ce.aam2.AAM2Kit.c.a.b().a(iaam2extendeddatalistener);
    }

    public static boolean pRegisterLocationListener(IAAM2LocationListener iaam2locationlistener)
    {
        return jp.pioneer.ce.aam2.AAM2Kit.c.a.b().a(iaam2locationlistener);
    }

    public static boolean pRegisterMediaInfoReqListener(IAAM2MediaInfoReqListener iaam2mediainforeqlistener)
    {
        return jp.pioneer.ce.aam2.AAM2Kit.c.a.b().a(iaam2mediainforeqlistener);
    }

    public static boolean pRegisterRemoteCtrlListener(IAAM2RemoteCtrlListener iaam2remotectrllistener)
    {
        return jp.pioneer.ce.aam2.AAM2Kit.c.a.b().a(iaam2remotectrllistener);
    }

    public static void pSendExtendedData(byte abyte0[])
    {
        jp.pioneer.ce.aam2.AAM2Kit.c.a.b().a(abyte0);
    }

    public static boolean pSendTrackInfo(int i, AAM2TrackInfoReplyDataBase aam2trackinforeplydatabase)
    {
        byte abyte0[] = jp.pioneer.ce.aam2.AAM2Kit.replydata.a.a(i, aam2trackinforeplydatabase);
        if (abyte0 == null)
        {
            return false;
        } else
        {
            return jp.pioneer.ce.aam2.AAM2Kit.c.a.b().a((byte)i, abyte0);
        }
    }

    public static boolean pSendTrackInfoSetting(AAM2TrackSettingInfoReplyData aam2tracksettinginforeplydata)
    {
        byte abyte0[] = jp.pioneer.ce.aam2.AAM2Kit.replydata.a.a(aam2tracksettinginforeplydata);
        if (abyte0 == null)
        {
            return false;
        } else
        {
            return jp.pioneer.ce.aam2.AAM2Kit.c.a.b().b(abyte0);
        }
    }

    public static boolean pSetMediaPlayerStatus(int i)
    {
        return jp.pioneer.ce.aam2.AAM2Kit.c.a.b().c(i);
    }

    public static void pSetNonCacheViewClass(Class class1)
    {
        if (class1 != null && WLServer.getInstance() != null)
        {
            WLServer.getInstance().registerNonCacheView(class1);
        }
    }

    public static boolean pSoundInterruptionRequest(boolean flag)
    {
        return jp.pioneer.ce.aam2.AAM2Kit.c.a.b().g(flag);
    }

    public static boolean pStartAAM2Kit(Context context, IAAM2RequiredListener iaam2requiredlistener)
    {
        if (context == null || iaam2requiredlistener == null)
        {
            return false;
        } else
        {
            b.a();
            jp.pioneer.ce.aam2.AAM2Kit.b.b.a.a(z.b(context));
            jp.pioneer.ce.aam2.AAM2Kit.c.a.b().a(iaam2requiredlistener);
            return jp.pioneer.ce.aam2.AAM2Kit.c.a.b().c(context);
        }
    }

    public static boolean pStopAAM2Kit(Context context, IAAM2RequiredListener iaam2requiredlistener)
    {
        if (context == null || iaam2requiredlistener == null)
        {
            return false;
        }
        if (iaam2requiredlistener instanceof IAAM2LocationListener)
        {
            jp.pioneer.ce.aam2.AAM2Kit.c.a.b().b((IAAM2LocationListener)iaam2requiredlistener);
        }
        if (iaam2requiredlistener instanceof IAAM2RemoteCtrlListener)
        {
            jp.pioneer.ce.aam2.AAM2Kit.c.a.b().b((IAAM2RemoteCtrlListener)iaam2requiredlistener);
        }
        if (iaam2requiredlistener instanceof IAAM2MediaInfoReqListener)
        {
            jp.pioneer.ce.aam2.AAM2Kit.c.a.b().b((IAAM2MediaInfoReqListener)iaam2requiredlistener);
        }
        if (iaam2requiredlistener instanceof IAAM2AppFocusListener)
        {
            jp.pioneer.ce.aam2.AAM2Kit.c.a.b().b((IAAM2AppFocusListener)iaam2requiredlistener);
        }
        if (iaam2requiredlistener instanceof c)
        {
            jp.pioneer.ce.aam2.AAM2Kit.c.a.b().a((c)iaam2requiredlistener);
        }
        jp.pioneer.ce.aam2.AAM2Kit.c.a.b().b(iaam2requiredlistener);
        jp.pioneer.ce.aam2.AAM2Kit.c.a.b().d(context);
        return true;
    }

    public static boolean pUnregisterAppFocusListener(IAAM2AppFocusListener iaam2appfocuslistener)
    {
        return jp.pioneer.ce.aam2.AAM2Kit.c.a.b().b(iaam2appfocuslistener);
    }

    public static boolean pUnregisterExtendedDataListener(IAAM2ExtendedDataListener iaam2extendeddatalistener)
    {
        return jp.pioneer.ce.aam2.AAM2Kit.c.a.b().b(iaam2extendeddatalistener);
    }

    public static boolean pUnregisterLocationListener(IAAM2LocationListener iaam2locationlistener)
    {
        return jp.pioneer.ce.aam2.AAM2Kit.c.a.b().b(iaam2locationlistener);
    }

    public static boolean pUnregisterMediaInfoReqListener(IAAM2MediaInfoReqListener iaam2mediainforeqlistener)
    {
        return jp.pioneer.ce.aam2.AAM2Kit.c.a.b().b(iaam2mediainforeqlistener);
    }

    public static boolean pUnregisterRemoteCtrlListener(IAAM2RemoteCtrlListener iaam2remotectrllistener)
    {
        return jp.pioneer.ce.aam2.AAM2Kit.c.a.b().b(iaam2remotectrllistener);
    }
}
