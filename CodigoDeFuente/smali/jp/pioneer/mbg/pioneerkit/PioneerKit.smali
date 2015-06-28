.class public Ljp/pioneer/mbg/pioneerkit/PioneerKit;
.super Ljava/lang/Object;


# static fields
.field public static final ADVANCED_APP_MODE:I = 0x0

.field public static final AV_APP_CTRL_MODE:I = 0x1

.field public static final EXT_DEVICE_LOCATION_GPS:I = 0x1

.field public static final EXT_DEVICE_LOCATION_GPS_SENSOR:I = 0x2

.field public static final EXT_DEVICE_LOCATION_GPS_SENSOR_PULSE:I = 0x3

.field public static final EXT_DEVICE_LOCATION_INVALID:I = 0x0

.field public static final EXT_DEVICE_LOCTION_ACCURACY_COARSE:I = 0x64

.field public static final EXT_DEVICE_LOCTION_ACCURACY_FINE:I = 0xa

.field public static final EXT_DEVICE_LOCTION_ACCURACY_INVALID:I = -0x1

.field public static final EXT_DEVICE_REMOTE_CONTROLLER_AV_REMOTE_CONTROL:I = 0x1

.field public static final EXT_DEVICE_REMOTE_CONTROLLER_INVALID:I = 0x0

.field public static final EXT_DEVICE_SPEC_POINTER_1:I = 0x1

.field public static final EXT_DEVICE_SPEC_POINTER_2:I = 0x2

.field public static final EXT_DEVICE_SPEC_POINTER_3:I = 0x3

.field public static final EXT_DEVICE_SPEC_POINTER_INVALID:I = 0x0

.field public static final EXT_REMOTE_CTRL_AV_CMD_FF:I = 0x5

.field public static final EXT_REMOTE_CTRL_AV_CMD_PAUSE:I = 0x2

.field public static final EXT_REMOTE_CTRL_AV_CMD_PLAY:I = 0x1

.field public static final EXT_REMOTE_CTRL_AV_CMD_RW:I = 0x6

.field public static final EXT_REMOTE_CTRL_AV_CMD_TOGGLE:I = 0x0

.field public static final EXT_REMOTE_CTRL_AV_CMD_TRACKDOWN:I = 0x4

.field public static final EXT_REMOTE_CTRL_AV_CMD_TRACKUP:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pIsAdvancedAppMode()Z
    .locals 1

    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/b/a;->b()Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    invoke-virtual {v0}, Ljp/pioneer/mbg/pioneerkit/b/a;->d()Z

    move-result v0

    return v0
.end method

.method public static pIsAvAppControlMode()Z
    .locals 1

    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/b/a;->b()Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    invoke-virtual {v0}, Ljp/pioneer/mbg/pioneerkit/b/a;->j()Z

    move-result v0

    return v0
.end method

.method public static pIsParking()Z
    .locals 1

    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/b/a;->b()Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    invoke-virtual {v0}, Ljp/pioneer/mbg/pioneerkit/b/a;->e()Z

    move-result v0

    return v0
.end method

.method public static pRegisterAppFocusListener(Ljp/pioneer/mbg/pioneerkit/IExtAppFocusListener;)Z
    .locals 1

    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/b/a;->b()Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/pioneer/mbg/pioneerkit/b/a;->a(Ljp/pioneer/mbg/pioneerkit/IExtAppFocusListener;)Z

    move-result v0

    return v0
.end method

.method public static pRegisterLocationListener(Ljp/pioneer/mbg/pioneerkit/IExtLocationListener;)Z
    .locals 1

    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/b/a;->b()Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/pioneer/mbg/pioneerkit/b/a;->a(Ljp/pioneer/mbg/pioneerkit/IExtLocationListener;)Z

    move-result v0

    return v0
.end method

.method public static pRegisterRemoteCtrlListener(Ljp/pioneer/mbg/pioneerkit/IExtRemoteCtrlListener;)Z
    .locals 1

    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/b/a;->b()Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/pioneer/mbg/pioneerkit/b/a;->a(Ljp/pioneer/mbg/pioneerkit/IExtRemoteCtrlListener;)Z

    move-result v0

    return v0
.end method

.method public static pSendAppName(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/b/a;->b()Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/pioneer/mbg/pioneerkit/b/a;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static pSendTrackInfo(B[B)Z
    .locals 1

    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/b/a;->b()Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljp/pioneer/mbg/pioneerkit/b/a;->b(B[B)Z

    move-result v0

    return v0
.end method

.method public static pSendTrackInfoSetting([B)Z
    .locals 1

    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/b/a;->b()Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/pioneer/mbg/pioneerkit/b/a;->a([B)Z

    move-result v0

    return v0
.end method

.method public static pSetMediaPlayerStatus(I)Z
    .locals 1

    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/b/a;->b()Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/pioneer/mbg/pioneerkit/b/a;->c(I)Z

    move-result v0

    return v0
.end method

.method public static pStartPioneerKit(Landroid/content/Context;Ljp/pioneer/mbg/pioneerkit/IExtRequiredListener;)Z
    .locals 1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/a/b/b;->a()Ljp/pioneer/mbg/pioneerkit/a/b/b;

    invoke-static {p0}, Ljp/pioneer/mbg/pioneerkit/b/u;->b(Landroid/content/Context;)Ljp/pioneer/mbg/pioneerkit/a/b/e;

    move-result-object v0

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/a/b/a;->a(Ljp/pioneer/mbg/pioneerkit/a/b/e;)V

    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/b/a;->b()Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljp/pioneer/mbg/pioneerkit/b/a;->a(Ljp/pioneer/mbg/pioneerkit/IExtRequiredListener;)Z

    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/b/a;->b()Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/pioneer/mbg/pioneerkit/b/a;->c(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public static pStopPioneerKit(Landroid/content/Context;Ljp/pioneer/mbg/pioneerkit/IExtRequiredListener;)Z
    .locals 2

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    instance-of v0, p1, Ljp/pioneer/mbg/pioneerkit/IExtLocationListener;

    if-eqz v0, :cond_2

    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/b/a;->b()Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Ljp/pioneer/mbg/pioneerkit/IExtLocationListener;

    invoke-virtual {v1, v0}, Ljp/pioneer/mbg/pioneerkit/b/a;->b(Ljp/pioneer/mbg/pioneerkit/IExtLocationListener;)Z

    :cond_2
    instance-of v0, p1, Ljp/pioneer/mbg/pioneerkit/IExtRemoteCtrlListener;

    if-eqz v0, :cond_3

    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/b/a;->b()Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Ljp/pioneer/mbg/pioneerkit/IExtRemoteCtrlListener;

    invoke-virtual {v1, v0}, Ljp/pioneer/mbg/pioneerkit/b/a;->b(Ljp/pioneer/mbg/pioneerkit/IExtRemoteCtrlListener;)Z

    :cond_3
    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/b/a;->b()Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljp/pioneer/mbg/pioneerkit/b/a;->b(Ljp/pioneer/mbg/pioneerkit/IExtRequiredListener;)Z

    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/b/a;->b()Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/pioneer/mbg/pioneerkit/b/a;->d(Landroid/content/Context;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static pUnregisterAppFocusListener(Ljp/pioneer/mbg/pioneerkit/IExtAppFocusListener;)Z
    .locals 1

    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/b/a;->b()Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/pioneer/mbg/pioneerkit/b/a;->b(Ljp/pioneer/mbg/pioneerkit/IExtAppFocusListener;)Z

    move-result v0

    return v0
.end method

.method public static pUnregisterLocationListener(Ljp/pioneer/mbg/pioneerkit/IExtLocationListener;)Z
    .locals 1

    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/b/a;->b()Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/pioneer/mbg/pioneerkit/b/a;->b(Ljp/pioneer/mbg/pioneerkit/IExtLocationListener;)Z

    move-result v0

    return v0
.end method

.method public static pUnregisterRemoteCtrlListener(Ljp/pioneer/mbg/pioneerkit/IExtRemoteCtrlListener;)Z
    .locals 1

    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/b/a;->b()Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/pioneer/mbg/pioneerkit/b/a;->b(Ljp/pioneer/mbg/pioneerkit/IExtRemoteCtrlListener;)Z

    move-result v0

    return v0
.end method
