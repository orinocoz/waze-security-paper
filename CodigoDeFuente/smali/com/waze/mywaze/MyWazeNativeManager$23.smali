.class Lcom/waze/mywaze/MyWazeNativeManager$23;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "MyWazeNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->launchMyWaze(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field couponsEnabled:Z

.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$23;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$23;->val$context:Landroid/content/Context;

    .line 613
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 3

    .prologue
    .line 623
    const-string v1, "WAZE"

    const-string v2, "launchMyWaze - callback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$23;->val$context:Landroid/content/Context;

    const-class v2, Lcom/waze/mywaze/MyWazeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 625
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.waze.mywaze.coupons"

    iget-boolean v2, p0, Lcom/waze/mywaze/MyWazeNativeManager$23;->couponsEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 626
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    const v2, 0x8004

    invoke-virtual {v1, v0, v2}, Lcom/waze/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 627
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 617
    const-string v0, "WAZE"

    const-string v1, "launchMyWaze - event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$23;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->myCouponsEnabledNTV()Z
    invoke-static {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->access$38(Lcom/waze/mywaze/MyWazeNativeManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$23;->couponsEnabled:Z

    .line 619
    return-void
.end method
