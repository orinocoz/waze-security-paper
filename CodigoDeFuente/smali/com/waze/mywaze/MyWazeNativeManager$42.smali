.class Lcom/waze/mywaze/MyWazeNativeManager$42;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->facebook_settings_dialog_open()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$settings:Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$42;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$42;->val$settings:Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;

    .line 859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 861
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/waze/mywaze/social/FacebookActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 862
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.waze.mywaze.facebooksettings"

    iget-object v2, p0, Lcom/waze/mywaze/MyWazeNativeManager$42;->val$settings:Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 863
    invoke-static {v0}, Lcom/waze/AppService;->showActivity(Landroid/content/Intent;)V

    .line 864
    return-void
.end method
