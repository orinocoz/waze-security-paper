.class Lcom/waze/mywaze/MyWazeNativeManager$68;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->showFoursquareVenues([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$addresses:[Ljava/lang/String;

.field private final synthetic val$descriptions:[Ljava/lang/String;

.field private final synthetic val$distances:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$68;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$68;->val$descriptions:[Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/mywaze/MyWazeNativeManager$68;->val$addresses:[Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/mywaze/MyWazeNativeManager$68;->val$distances:[Ljava/lang/String;

    .line 1161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1163
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/waze/mywaze/social/FoursquareListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1164
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.waze.mywaze.foursquare.descriptions"

    iget-object v2, p0, Lcom/waze/mywaze/MyWazeNativeManager$68;->val$descriptions:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1165
    const-string v1, "com.waze.mywaze.foursquare.addresses"

    iget-object v2, p0, Lcom/waze/mywaze/MyWazeNativeManager$68;->val$addresses:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1166
    const-string v1, "com.waze.mywaze.foursquare.distances"

    iget-object v2, p0, Lcom/waze/mywaze/MyWazeNativeManager$68;->val$distances:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1167
    invoke-static {v0}, Lcom/waze/AppService;->showActivity(Landroid/content/Intent;)V

    .line 1168
    return-void
.end method
