.class Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper$2;
.super Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcherNotification$Stub;


# instance fields
.field final synthetic this$0:Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;


# direct methods
.method constructor <init>(Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;)V
    .locals 0

    iput-object p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper$2;->this$0:Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;

    invoke-direct {p0}, Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcherNotification$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplicationActivated(I)V
    .locals 3

    invoke-static {}, Lcom/abaltatech/weblinkserver/WLServer;->getInstance()Lcom/abaltatech/weblinkserver/WLServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/abaltatech/weblinkserver/WLServer;->getListenPort()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onApplicationActivated - Notification from Service, sessionID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper$2;->this$0:Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;

    #getter for: Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->m_protocolDispatcherService:Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcher;
    invoke-static {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;->access$1(Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/WLPDWrapper;)Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcher;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v1, v2, p1, v0}, Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcher;->setPortNumber(III)V

    return-void
.end method

.method public onApplicationDeactivated()V
    .locals 1

    const-string v0, "onApplicationDeactivated - Notification from Service"

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onApplicationPaused()V
    .locals 1

    const-string v0, "onApplicationPaused - Notification from Service"

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onApplicationResumed()V
    .locals 1

    const-string v0, "onApplicationResumed - Notification from Service"

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onLoggingChanged(Z)V
    .locals 1

    invoke-static {}, Lcom/abaltatech/weblinkserver/WLServer;->getInstance()Lcom/abaltatech/weblinkserver/WLServer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/abaltatech/weblinkserver/WLServer;->setLoggingEnabled(Z)V

    const-string v0, "onLoggingChanged - Notification from Service"

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoChannelClosed()V
    .locals 1

    const-string v0, "onVideoChannelClosed - Notification from Service"

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoChannelReady()V
    .locals 1

    const-string v0, "onVideoChannelReady - Notification from Service"

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;)V

    return-void
.end method
