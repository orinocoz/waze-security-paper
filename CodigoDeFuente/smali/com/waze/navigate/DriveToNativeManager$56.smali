.class Lcom/waze/navigate/DriveToNativeManager$56;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->refreshSearchEnginesIconsOnSearchActivity(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$finalSearchEngineName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$56;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$56;->val$finalSearchEngineName:Ljava/lang/String;

    .line 1489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1492
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    .line 1494
    .local v0, currentActivity:Landroid/app/Activity;
    instance-of v1, v0, Lcom/waze/navigate/SearchActivity;

    if-eqz v1, :cond_0

    .line 1496
    const-string v1, "WAZE"

    .line 1497
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "refreshSearchEnginesIconsOnSearchActivity callback running in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1498
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1497
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1496
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    check-cast v0, Lcom/waze/navigate/SearchActivity;

    .end local v0           #currentActivity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$56;->val$finalSearchEngineName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waze/navigate/SearchActivity;->refreshSearchEngines(Ljava/lang/String;)V

    .line 1504
    :cond_0
    return-void
.end method
