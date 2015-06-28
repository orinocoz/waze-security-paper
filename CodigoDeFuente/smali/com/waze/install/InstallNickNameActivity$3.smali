.class Lcom/waze/install/InstallNickNameActivity$3;
.super Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;
.source "InstallNickNameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/install/InstallNickNameActivity;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/install/InstallNickNameActivity;


# direct methods
.method constructor <init>(Lcom/waze/install/InstallNickNameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/install/InstallNickNameActivity$3;->this$0:Lcom/waze/install/InstallNickNameActivity;

    .line 131
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogin(Z)V
    .locals 2
    .parameter "result"

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 135
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/waze/profile/ProfileLauncher;->launch(Landroid/content/Context;Z)V

    .line 137
    :cond_0
    return-void
.end method
