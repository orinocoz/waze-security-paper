.class Lcom/waze/mywaze/MyWazeNativeManager$9;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->openFoursquareDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$settings:Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$9;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$9;->val$settings:Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 401
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    .line 402
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 404
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/waze/mywaze/social/FoursquareActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 405
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.waze.mywaze.foursquaresettings"

    iget-object v3, p0, Lcom/waze/mywaze/MyWazeNativeManager$9;->val$settings:Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 406
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 408
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
