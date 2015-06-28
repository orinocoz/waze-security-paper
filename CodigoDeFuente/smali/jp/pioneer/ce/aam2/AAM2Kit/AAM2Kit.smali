.class public Ljp/pioneer/ce/aam2/AAM2Kit/AAM2Kit;
.super Ljava/lang/Object;


# static fields
.field public static final AAM2_LOCATION_INFO_ACCURACY_COARSE:I = 0x64

.field public static final AAM2_LOCATION_INFO_ACCURACY_FINE:I = 0xa

.field public static final AAM2_LOCATION_INFO_ACCURACY_INVALID:I = -0x1

.field public static final AAM2_MAINUNIT_SPEC_LOCATION_GPS:I = 0x1

.field public static final AAM2_MAINUNIT_SPEC_LOCATION_GPS_SENSOR:I = 0x2

.field public static final AAM2_MAINUNIT_SPEC_LOCATION_GPS_SENSOR_PULSE:I = 0x3

.field public static final AAM2_MAINUNIT_SPEC_LOCATION_INVALID:I = 0x0

.field public static final AAM2_MAINUNIT_SPEC_POINTER_1:I = 0x1

.field public static final AAM2_MAINUNIT_SPEC_POINTER_2:I = 0x2

.field public static final AAM2_MAINUNIT_SPEC_POINTER_INVALID:I = 0x0

.field public static final AAM2_MAINUNIT_SPEC_REMOTE_CONTROLLER_AV:I = 0x1

.field public static final AAM2_MAINUNIT_SPEC_REMOTE_CONTROLLER_INVALID:I = 0x0

.field public static final AAM2_MEDIA_PLAYER_STATUS_PAUSE:I = 0x0

.field public static final AAM2_MEDIA_PLAYER_STATUS_PLAY:I = 0x1

.field public static final AAM2_REMOTE_CTRL_CMD_AV_FF:I = 0x5

.field public static final AAM2_REMOTE_CTRL_CMD_AV_PAUSE:I = 0x2

.field public static final AAM2_REMOTE_CTRL_CMD_AV_PLAY:I = 0x1

.field public static final AAM2_REMOTE_CTRL_CMD_AV_RW:I = 0x6

.field public static final AAM2_REMOTE_CTRL_CMD_AV_TOGGLE:I = 0x0

.field public static final AAM2_REMOTE_CTRL_CMD_AV_TRACKDOWN:I = 0x4

.field public static final AAM2_REMOTE_CTRL_CMD_AV_TRACKUP:I = 0x3

.field public static final AAM2_TRACKINFO_INVALID_TOKEN:J = -0x1L

.field public static final AAM2_TRACKINFO_TYPE_ALBUM:I = 0x5

.field public static final AAM2_TRACKINFO_TYPE_ARTIST:I = 0x4

.field public static final AAM2_TRACKINFO_TYPE_ELAPSED_TIME:I = 0x6

.field public static final AAM2_TRACKINFO_TYPE_INFO:I = 0x2

.field public static final AAM2_TRACKINFO_TYPE_TITLE:I = 0x3

.field public static final ADVANCED_APP_MODE_2:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "abaltatech.intent.action.bindProtocolDispatcherPrivateService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "jp.pioneer.mbg.appradio.AppRadioLauncher"

    const-string v5, "com.abaltatech.protocoldispatcher.ProtocolDispatcherService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/a/a;->a()Ljp/pioneer/ce/aam2/AAM2Kit/a/a;

    move-result-object v1

    invoke-virtual {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/a/a;->b()V

    :cond_1
    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a(Z)V

    goto :goto_0
.end method

.method public static pIsAdvancedAppMode()Z
    .locals 1

    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    invoke-virtual {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->d()Z

    move-result v0

    return v0
.end method

.method public static pIsDriveStopping()Z
    .locals 1

    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    invoke-virtual {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->f()Z

    move-result v0

    return v0
.end method

.method public static pIsFocused()Z
    .locals 1

    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    invoke-virtual {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->l()Z

    move-result v0

    return v0
.end method

.method public static pIsParkingSwitch()Z
    .locals 1

    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    invoke-virtual {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->e()Z

    move-result v0

    return v0
.end method

.method public static pRegisterAppFocusListener(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2AppFocusListener;)Z
    .locals 1

    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2AppFocusListener;)Z

    move-result v0

    return v0
.end method

.method public static pRegisterExtendedDataListener(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2ExtendedDataListener;)Z
    .locals 1

    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2ExtendedDataListener;)Z

    move-result v0

    return v0
.end method

.method public static pRegisterLocationListener(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2LocationListener;)Z
    .locals 1

    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2LocationListener;)Z

    move-result v0

    return v0
.end method

.method public static pRegisterMediaInfoReqListener(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2MediaInfoReqListener;)Z
    .locals 1

    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2MediaInfoReqListener;)Z

    move-result v0

    return v0
.end method

.method public static pRegisterRemoteCtrlListener(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RemoteCtrlListener;)Z
    .locals 1

    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RemoteCtrlListener;)Z

    move-result v0

    return v0
.end method

.method public static pSendExtendedData([B)V
    .locals 1

    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a([B)V

    return-void
.end method

.method public static pSendTrackInfo(ILjp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyDataBase;)Z
    .locals 3

    invoke-static {p0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/a;->a(ILjp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyDataBase;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v1

    int-to-byte v2, p0

    invoke-virtual {v1, v2, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a(B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public static pSendTrackInfoSetting(Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;)Z
    .locals 2

    invoke-static {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/a;->a(Ljp/pioneer/ce/aam2/AAM2Kit/replydata/b;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b([B)Z

    move-result v0

    goto :goto_0
.end method

.method public static pSetMediaPlayerStatus(I)Z
    .locals 1

    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->c(I)Z

    move-result v0

    return v0
.end method

.method public static pSetNonCacheViewClass(Ljava/lang/Class;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/abaltatech/weblinkserver/WLServer;->getInstance()Lcom/abaltatech/weblinkserver/WLServer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/abaltatech/weblinkserver/WLServer;->getInstance()Lcom/abaltatech/weblinkserver/WLServer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/abaltatech/weblinkserver/WLServer;->registerNonCacheView(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static pSoundInterruptionRequest(Z)Z
    .locals 1

    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->g(Z)Z

    move-result v0

    return v0
.end method

.method public static pStartAAM2Kit(Landroid/content/Context;Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RequiredListener;)Z
    .locals 1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/b/b/b;->a()Ljp/pioneer/ce/aam2/AAM2Kit/b/b/b;

    invoke-static {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/z;->b(Landroid/content/Context;)Ljp/pioneer/ce/aam2/AAM2Kit/b/b/e;

    move-result-object v0

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/b/a;->a(Ljp/pioneer/ce/aam2/AAM2Kit/b/b/e;)V

    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RequiredListener;)Z

    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->c(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public static pStopAAM2Kit(Landroid/content/Context;Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RequiredListener;)Z
    .locals 2

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    instance-of v0, p1, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2LocationListener;

    if-eqz v0, :cond_2

    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2LocationListener;

    invoke-virtual {v1, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2LocationListener;)Z

    :cond_2
    instance-of v0, p1, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RemoteCtrlListener;

    if-eqz v0, :cond_3

    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RemoteCtrlListener;

    invoke-virtual {v1, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RemoteCtrlListener;)Z

    :cond_3
    instance-of v0, p1, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2MediaInfoReqListener;

    if-eqz v0, :cond_4

    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2MediaInfoReqListener;

    invoke-virtual {v1, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2MediaInfoReqListener;)Z

    :cond_4
    instance-of v0, p1, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2AppFocusListener;

    if-eqz v0, :cond_5

    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2AppFocusListener;

    invoke-virtual {v1, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2AppFocusListener;)Z

    :cond_5
    instance-of v0, p1, Ljp/pioneer/ce/aam2/AAM2Kit/c;

    if-eqz v0, :cond_6

    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/c;

    invoke-virtual {v1, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a(Ljp/pioneer/ce/aam2/AAM2Kit/c;)Z

    :cond_6
    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RequiredListener;)Z

    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->d(Landroid/content/Context;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static pUnregisterAppFocusListener(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2AppFocusListener;)Z
    .locals 1

    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2AppFocusListener;)Z

    move-result v0

    return v0
.end method

.method public static pUnregisterExtendedDataListener(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2ExtendedDataListener;)Z
    .locals 1

    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2ExtendedDataListener;)Z

    move-result v0

    return v0
.end method

.method public static pUnregisterLocationListener(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2LocationListener;)Z
    .locals 1

    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2LocationListener;)Z

    move-result v0

    return v0
.end method

.method public static pUnregisterMediaInfoReqListener(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2MediaInfoReqListener;)Z
    .locals 1

    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2MediaInfoReqListener;)Z

    move-result v0

    return v0
.end method

.method public static pUnregisterRemoteCtrlListener(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RemoteCtrlListener;)Z
    .locals 1

    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RemoteCtrlListener;)Z

    move-result v0

    return v0
.end method
