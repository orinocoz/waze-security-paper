.class Lcom/waze/mywaze/NicknameActivity$2;
.super Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;
.source "NicknameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/NicknameActivity;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/NicknameActivity;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/NicknameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/NicknameActivity$2;->this$0:Lcom/waze/mywaze/NicknameActivity;

    .line 115
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogin(Z)V
    .locals 2
    .parameter "result"

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 119
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/waze/profile/ProfileLauncher;->launch(Landroid/content/Context;Z)V

    .line 121
    :cond_0
    return-void
.end method
