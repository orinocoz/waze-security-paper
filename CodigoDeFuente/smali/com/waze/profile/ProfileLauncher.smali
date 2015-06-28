.class public Lcom/waze/profile/ProfileLauncher;
.super Ljava/lang/Object;
.source "ProfileLauncher.java"

# interfaces
.implements Lcom/waze/mywaze/MyWazeNativeManager$ProfileCallback;


# instance fields
.field private afterFailure:Z

.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .parameter "context"
    .parameter "afterFailure"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/waze/profile/ProfileLauncher;->context:Landroid/content/Context;

    .line 23
    iput-boolean p2, p0, Lcom/waze/profile/ProfileLauncher;->afterFailure:Z

    .line 24
    return-void
.end method

.method public static launch(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "afterFailure"

    .prologue
    .line 17
    new-instance v0, Lcom/waze/profile/ProfileLauncher;

    invoke-direct {v0, p0, p1}, Lcom/waze/profile/ProfileLauncher;-><init>(Landroid/content/Context;Z)V

    .line 18
    .local v0, inst:Lcom/waze/profile/ProfileLauncher;
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/waze/mywaze/MyWazeNativeManager;->getProfileSettings(Lcom/waze/mywaze/MyWazeNativeManager$ProfileCallback;)V

    .line 19
    return-void
.end method


# virtual methods
.method public onProfile(Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;)V
    .locals 4
    .parameter "profile"

    .prologue
    .line 29
    iget-boolean v2, p1, Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;->randomUser:Z

    if-eqz v2, :cond_2

    .line 30
    iget-boolean v2, p0, Lcom/waze/profile/ProfileLauncher;->afterFailure:Z

    if-eqz v2, :cond_1

    .line 31
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/waze/profile/ProfileLauncher;->context:Landroid/content/Context;

    const-class v3, Lcom/waze/profile/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v1, intent:Landroid/content/Intent;
    :goto_0
    const-string v2, "com.waze.mywaze.nickname"

    iget-object v3, p1, Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;->nickName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v2, "com.waze.mywaze.pingable"

    iget-boolean v3, p1, Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;->allowPings:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    .line 45
    .local v0, context:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 46
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 47
    :cond_0
    return-void

    .line 33
    .end local v0           #context:Landroid/app/Activity;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/waze/profile/ProfileLauncher;->context:Landroid/content/Context;

    const-class v3, Lcom/waze/profile/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 37
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/waze/profile/ProfileLauncher;->context:Landroid/content/Context;

    const-class v3, Lcom/waze/profile/ProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.waze.mywaze.username"

    iget-object v3, p1, Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;->userName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v2, "com.waze.mywaze.password"

    iget-object v3, p1, Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;->password:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
