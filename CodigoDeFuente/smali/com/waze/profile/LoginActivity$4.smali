.class Lcom/waze/profile/LoginActivity$4;
.super Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/LoginActivity;->conclude()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/LoginActivity;


# direct methods
.method constructor <init>(Lcom/waze/profile/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/LoginActivity$4;->this$0:Lcom/waze/profile/LoginActivity;

    .line 113
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogin(Z)V
    .locals 2
    .parameter "result"

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 117
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/waze/profile/ProfileLauncher;->launch(Landroid/content/Context;Z)V

    .line 119
    :cond_0
    return-void
.end method
