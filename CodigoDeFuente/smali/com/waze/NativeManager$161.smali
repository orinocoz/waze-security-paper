.class Lcom/waze/NativeManager$161;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->ClearNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$161;->this$0:Lcom/waze/NativeManager;

    .line 3686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3688
    iget-object v1, p0, Lcom/waze/NativeManager$161;->this$0:Lcom/waze/NativeManager;

    #getter for: Lcom/waze/NativeManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v1}, Lcom/waze/NativeManager;->access$92(Lcom/waze/NativeManager;)Landroid/app/NotificationManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3690
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 3691
    .local v0, AppContext:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 3693
    iget-object v2, p0, Lcom/waze/NativeManager$161;->this$0:Lcom/waze/NativeManager;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    #setter for: Lcom/waze/NativeManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v2, v1}, Lcom/waze/NativeManager;->access$93(Lcom/waze/NativeManager;Landroid/app/NotificationManager;)V

    .line 3697
    .end local v0           #AppContext:Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Lcom/waze/NativeManager$161;->this$0:Lcom/waze/NativeManager;

    #getter for: Lcom/waze/NativeManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v1}, Lcom/waze/NativeManager;->access$92(Lcom/waze/NativeManager;)Landroid/app/NotificationManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3699
    invoke-static {}, Lcom/waze/push/Alerter;->instance()Lcom/waze/push/Alerter;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/NativeManager$161;->this$0:Lcom/waze/NativeManager;

    #getter for: Lcom/waze/NativeManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/waze/NativeManager;->access$92(Lcom/waze/NativeManager;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/push/Alerter;->clear(Landroid/app/NotificationManager;)V

    .line 3701
    :cond_1
    return-void
.end method
