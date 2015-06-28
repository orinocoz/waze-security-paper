.class public Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/AAM2ServerApp;
.super Lcom/abaltatech/weblinkserver/WLServerApp;

# interfaces
.implements Lcom/abaltatech/weblinkserver/WLServer$IServerReadyListener;


# static fields
.field public static final SERVER_ID:Ljava/lang/String; = "aam2serverapp://"

.field public static final SERVER_NAME:Ljava/lang/String; = "AAM2ServerApp"

.field public static final SERVER_PORT:I = 0x0

.field public static final TAG:Ljava/lang/String; = "AAM2ServerAppTAG"


# instance fields
.field private final m_pdWrapper:Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/abaltatech/weblinkserver/WLServerApp;-><init>()V

    new-instance v0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;

    invoke-direct {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;-><init>()V

    iput-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/AAM2ServerApp;->m_pdWrapper:Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/abaltatech/weblinkserver/WLServerApp;->setMode(I)V

    return-void
.end method


# virtual methods
.method public connectToPDService()V
    .locals 1

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/AAM2ServerApp;->m_pdWrapper:Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;

    invoke-virtual {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->connectProtocolDispatcher()V

    return-void
.end method

.method public disconnectFromPDService()V
    .locals 1

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/AAM2ServerApp;->m_pdWrapper:Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;

    invoke-virtual {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->disconnectProtocolDispatcher()V

    return-void
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Lcom/abaltatech/weblinkserver/WLServerApp;->onCreate()V

    return-void
.end method

.method public onServerReady()V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/abaltatech/weblinkserver/WLServer;->getInstance()Lcom/abaltatech/weblinkserver/WLServer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Lcom/abaltatech/weblinkserver/WLServer;->setIsBroadcastingEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/abaltatech/weblinkserver/WLServer;->setServerReadyListener(Lcom/abaltatech/weblinkserver/WLServer$IServerReadyListener;)V

    const-string v1, "AAM2ServerApp"

    const-string v2, "aam2serverapp://"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/abaltatech/weblinkserver/WLServer;->start(Ljava/lang/String;Ljava/lang/String;ILandroid/bluetooth/BluetoothAdapter;Ljava/util/UUID;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "server.start fail!!!"

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/AAM2ServerApp;->m_pdWrapper:Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;

    invoke-virtual {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->connectProtocolDispatcher()V

    goto :goto_0
.end method

.method public startWLServer()V
    .locals 2

    invoke-static {}, Lcom/abaltatech/weblinkserver/WLServer;->getInstance()Lcom/abaltatech/weblinkserver/WLServer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/abaltatech/weblinkserver/WLServer;->isStarted()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Lcom/abaltatech/weblinkserver/WLServer;->setServerReadyListener(Lcom/abaltatech/weblinkserver/WLServer$IServerReadyListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/AAM2ServerApp;->m_pdWrapper:Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;

    invoke-virtual {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->connectProtocolDispatcher()V

    goto :goto_0
.end method

.method public stopWLServer()V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/AAM2ServerApp;->m_pdWrapper:Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;

    invoke-virtual {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->disconnectProtocolDispatcher()V

    invoke-static {}, Lcom/abaltatech/weblinkserver/WLServer;->getInstance()Lcom/abaltatech/weblinkserver/WLServer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/abaltatech/weblinkserver/WLServer;->setServerReadyListener(Lcom/abaltatech/weblinkserver/WLServer$IServerReadyListener;)V

    invoke-virtual {v0}, Lcom/abaltatech/weblinkserver/WLServer;->stop()V

    :cond_0
    return-void
.end method
