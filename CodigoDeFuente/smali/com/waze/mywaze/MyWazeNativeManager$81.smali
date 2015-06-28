.class Lcom/waze/mywaze/MyWazeNativeManager$81;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->showFoursquareResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$address:Ljava/lang/String;

.field private final synthetic val$label:Ljava/lang/String;

.field private final synthetic val$points:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$81;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$81;->val$label:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/mywaze/MyWazeNativeManager$81;->val$address:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/mywaze/MyWazeNativeManager$81;->val$points:Ljava/lang/String;

    .line 1291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1293
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    .line 1294
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1295
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/waze/mywaze/social/FoursquareCheckedinActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1296
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.waze.mywaze.foursquare_label"

    iget-object v3, p0, Lcom/waze/mywaze/MyWazeNativeManager$81;->val$label:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1297
    const-string v2, "com.waze.mywaze.foursquare_address"

    iget-object v3, p0, Lcom/waze/mywaze/MyWazeNativeManager$81;->val$address:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1298
    const-string v2, "com.waze.mywaze.foursquare_points"

    iget-object v3, p0, Lcom/waze/mywaze/MyWazeNativeManager$81;->val$points:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1299
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/waze/ifs/ui/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1301
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
