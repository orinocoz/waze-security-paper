.class Ljp/pioneer/ce/aam2/AAM2Kit/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Ljp/pioneer/ce/aam2/AAM2Kit/a/a;


# direct methods
.method constructor <init>(Ljp/pioneer/ce/aam2/AAM2Kit/a/a;)V
    .locals 0

    iput-object p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/a/b;->a:Ljp/pioneer/ce/aam2/AAM2Kit/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/a/b;->a:Ljp/pioneer/ce/aam2/AAM2Kit/a/a;

    invoke-static {p2}, Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcherPrivate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcherPrivate;

    move-result-object v1

    invoke-static {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/a/a;->a(Ljp/pioneer/ce/aam2/AAM2Kit/a/a;Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcherPrivate;)V

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/a/b;->a:Ljp/pioneer/ce/aam2/AAM2Kit/a/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/a/a;->a(Ljp/pioneer/ce/aam2/AAM2Kit/a/a;Z)V

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/a/b;->a:Ljp/pioneer/ce/aam2/AAM2Kit/a/a;

    iget-boolean v0, v0, Ljp/pioneer/ce/aam2/AAM2Kit/a/a;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/a/b;->a:Ljp/pioneer/ce/aam2/AAM2Kit/a/a;

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/a/a;->a(Ljp/pioneer/ce/aam2/AAM2Kit/a/a;)Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcherPrivate;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/a/b;->a:Ljp/pioneer/ce/aam2/AAM2Kit/a/a;

    invoke-static {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/a/a;->a(Ljp/pioneer/ce/aam2/AAM2Kit/a/a;)Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcherPrivate;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcherPrivate;->setActiveApp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/a/b;->a:Ljp/pioneer/ce/aam2/AAM2Kit/a/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljp/pioneer/ce/aam2/AAM2Kit/a/a;->a:Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "An error occured during the call"

    invoke-static {v1, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/a/b;->a:Ljp/pioneer/ce/aam2/AAM2Kit/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/a/a;->a(Ljp/pioneer/ce/aam2/AAM2Kit/a/a;Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcherPrivate;)V

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/a/b;->a:Ljp/pioneer/ce/aam2/AAM2Kit/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/a/a;->a(Ljp/pioneer/ce/aam2/AAM2Kit/a/a;Z)V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "jp.pioneer.mbg.appradio.AppRadioLauncher"

    const-string v2, "com.abaltatech.protocoldispatcher.ProtocolDispatcherService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "abaltatech.intent.action.bindProtocolDispatcherPrivateService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/abaltatech/weblinkserver/WLServerApp;->getApplication()Lcom/abaltatech/weblinkserver/WLServerApp;

    move-result-object v0

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/a/b;->a:Ljp/pioneer/ce/aam2/AAM2Kit/a/a;

    invoke-static {v2}, Ljp/pioneer/ce/aam2/AAM2Kit/a/a;->b(Ljp/pioneer/ce/aam2/AAM2Kit/a/a;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/abaltatech/weblinkserver/WLServerApp;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
