.class Lcom/waze/mywaze/MyWazeNativeManager$41;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->showSignIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$41;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 849
    invoke-static {}, Lcom/waze/profile/SignInActivity;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 850
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/waze/profile/SignInActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 851
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/waze/AppService;->showActivity(Landroid/content/Intent;)V

    .line 853
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
