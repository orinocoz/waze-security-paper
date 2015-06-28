.class Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;


# direct methods
.method constructor <init>(Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;)V
    .locals 0

    iput-object p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper$1;->this$0:Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "The PD service is now connected!"

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper$1;->this$0:Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;

    invoke-static {p2}, Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcher;

    move-result-object v1

    #setter for: Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->m_protocolDispatcherService:Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcher;
    invoke-static {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->access$0(Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcher;)V

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper$1;->this$0:Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;

    #getter for: Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->m_protocolDispatcherService:Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcher;
    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->access$1(Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;)Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcher;

    move-result-object v0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper$1;->this$0:Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;

    #getter for: Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->m_notificationCallback:Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcherNotification;
    invoke-static {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->access$2(Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;)Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcherNotification;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcher;->registerNotificationListener(Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcherNotification;I)V

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper$1;->this$0:Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;

    const/4 v1, 0x1

    #setter for: Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->mBindService:Z
    invoke-static {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->access$3(Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An error occured during the call"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    const-string v0, "The connection to the PD service was closed !"

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper$1;->this$0:Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;

    #getter for: Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->m_protocolDispatcherService:Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcher;
    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->access$1(Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;)Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcher;

    move-result-object v0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper$1;->this$0:Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;

    #getter for: Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->m_notificationCallback:Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcherNotification;
    invoke-static {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->access$2(Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;)Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcherNotification;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcher;->unregisterNotificationListener(Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcherNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper$1;->this$0:Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;

    const/4 v1, 0x0

    #setter for: Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->m_protocolDispatcherService:Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcher;
    invoke-static {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->access$0(Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcher;)V

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper$1;->this$0:Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;

    const/4 v1, 0x0

    #setter for: Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->mBindService:Z
    invoke-static {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->access$3(Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;Z)V

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

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper$1;->this$0:Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;

    #getter for: Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->m_serviceConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->access$4(Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/16 v3, 0x41

    invoke-virtual {v0, v1, v2, v3}, Lcom/abaltatech/weblinkserver/WLServerApp;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
