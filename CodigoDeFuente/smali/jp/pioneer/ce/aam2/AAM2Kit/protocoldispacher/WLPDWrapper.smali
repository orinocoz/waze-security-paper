.class public Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;
.super Ljava/lang/Object;


# static fields
.field private static final INTENT_ACTION_BIND_PROTOCOL_DISPATCHER_SERVICE:Ljava/lang/String; = "abaltatech.intent.action.bindProtocolDispatcherService"


# instance fields
.field private mBindService:Z

.field private final m_notificationCallback:Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcherNotification;

.field private m_protocolDispatcherService:Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcher;

.field private m_serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->mBindService:Z

    new-instance v0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper$1;

    invoke-direct {v0, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper$1;-><init>(Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;)V

    iput-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->m_serviceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper$2;

    invoke-direct {v0, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper$2;-><init>(Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;)V

    iput-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->m_notificationCallback:Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcherNotification;

    return-void
.end method

.method static synthetic access$0(Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcher;)V
    .locals 0

    iput-object p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->m_protocolDispatcherService:Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcher;

    return-void
.end method

.method static synthetic access$1(Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;)Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcher;
    .locals 1

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->m_protocolDispatcherService:Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcher;

    return-object v0
.end method

.method static synthetic access$2(Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;)Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcherNotification;
    .locals 1

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->m_notificationCallback:Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcherNotification;

    return-object v0
.end method

.method static synthetic access$3(Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->mBindService:Z

    return-void
.end method

.method static synthetic access$4(Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->m_serviceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method


# virtual methods
.method public connectProtocolDispatcher()V
    .locals 4

    const/16 v3, 0x41

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->m_protocolDispatcherService:Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcher;

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "jp.pioneer.mbg.appradio.AppRadioLauncher"

    const-string v2, "com.abaltatech.protocoldispatcher.ProtocolDispatcherService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "abaltatech.intent.action.bindProtocolDispatcherService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/abaltatech/weblinkserver/WLServerApp;->getApplication()Lcom/abaltatech/weblinkserver/WLServerApp;

    move-result-object v0

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->m_serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Lcom/abaltatech/weblinkserver/WLServerApp;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isSuccess: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;)V

    const-string v0, "The Service will be connected soon (asynchronus call)!"

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->m_protocolDispatcherService:Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcher;

    invoke-interface {v0}, Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "jp.pioneer.mbg.appradio.AppRadioLauncher"

    const-string v2, "com.abaltatech.protocoldispatcher.ProtocolDispatcherService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "abaltatech.intent.action.bindProtocolDispatcherService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/abaltatech/weblinkserver/WLServerApp;->getApplication()Lcom/abaltatech/weblinkserver/WLServerApp;

    move-result-object v0

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->m_serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Lcom/abaltatech/weblinkserver/WLServerApp;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DispatcherService.asBinder().pingBinder isSuccess: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;)V

    const-string v0, "DispatcherService.asBinder().pingBinder The Service will be connected soon (asynchronus call)!"

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disconnectProtocolDispatcher()V
    .locals 3

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->m_protocolDispatcherService:Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcher;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->mBindService:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->m_protocolDispatcherService:Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcher;

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->m_notificationCallback:Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcherNotification;

    invoke-interface {v0, v1}, Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcher;->unregisterNotificationListener(Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcherNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->m_protocolDispatcherService:Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcher;

    invoke-static {}, Lcom/abaltatech/weblinkserver/WLServerApp;->getApplication()Lcom/abaltatech/weblinkserver/WLServerApp;

    move-result-object v0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->m_serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/abaltatech/weblinkserver/WLServerApp;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->mBindService:Z

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAn error occured during the call"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
