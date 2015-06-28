.class Lcom/waze/mywaze/MyWazeNativeManager$48;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->openWelcomeActivityAndCloseCurrentActivity()V
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
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$48;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private shouldOpenWelcomeActivity(Landroid/app/Activity;)Z
    .locals 2
    .parameter "activity"

    .prologue
    .line 942
    const/4 v0, 0x0

    .line 943
    .local v0, ans:Z
    instance-of v1, p1, Lcom/waze/install/GuidedTourActivity;

    if-eqz v1, :cond_1

    .line 945
    invoke-static {}, Lcom/waze/install/InstallNativeManager;->IsMinimalInstallation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 947
    const/4 v0, 0x1

    .line 954
    :cond_0
    :goto_0
    return v0

    .line 950
    :cond_1
    instance-of v1, p1, Lcom/waze/profile/SignInActivity;

    if-eqz v1, :cond_0

    .line 952
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private writeSkipSignInLogs(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 958
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 960
    .local v0, nativeManager:Lcom/waze/NativeManager;
    instance-of v1, p1, Lcom/waze/install/GuidedTourActivity;

    if-eqz v1, :cond_1

    .line 962
    invoke-static {}, Lcom/waze/install/InstallNativeManager;->IsMinimalInstallation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 964
    const-string v1, "START_DRIVING"

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 973
    :cond_0
    :goto_0
    return-void

    .line 968
    :cond_1
    instance-of v1, p1, Lcom/waze/profile/SignInActivity;

    if-eqz v1, :cond_0

    .line 970
    const-string v1, "NEW_EXISTING_SKIP"

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 923
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    .line 925
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 927
    invoke-direct {p0, v0}, Lcom/waze/mywaze/MyWazeNativeManager$48;->writeSkipSignInLogs(Landroid/app/Activity;)V

    .line 929
    invoke-direct {p0, v0}, Lcom/waze/mywaze/MyWazeNativeManager$48;->shouldOpenWelcomeActivity(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 932
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/waze/profile/WelcomeActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 933
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 935
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 936
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 939
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
