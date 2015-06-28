.class Lcom/waze/NativeManager$211;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->OpenAccountAndLogin()V
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
    iput-object p1, p0, Lcom/waze/NativeManager$211;->this$0:Lcom/waze/NativeManager;

    .line 5856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5861
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->isRandomUserNTV()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5863
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    const-class v2, Lcom/waze/profile/TempUserProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5864
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/waze/ifs/ui/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 5871
    :goto_0
    return-void

    .line 5868
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    const-class v2, Lcom/waze/profile/MyProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5869
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/waze/ifs/ui/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
