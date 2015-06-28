.class Lcom/waze/navigate/DriveToNativeManager$58;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->refreshAddressItemsIconsOnSearchActivity(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$finalIcon:Ljava/lang/String;

.field private final synthetic val$finalPosition:I


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$58;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput p2, p0, Lcom/waze/navigate/DriveToNativeManager$58;->val$finalPosition:I

    iput-object p3, p0, Lcom/waze/navigate/DriveToNativeManager$58;->val$finalIcon:Ljava/lang/String;

    .line 1535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1538
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    .line 1540
    .local v0, currentActivity:Landroid/app/Activity;
    instance-of v1, v0, Lcom/waze/navigate/SearchActivity;

    if-eqz v1, :cond_0

    .line 1542
    const-string v1, "WAZE"

    .line 1543
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "refreshAddressItemsIconsOnSearchActivity callback running in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1544
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1543
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1542
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    check-cast v0, Lcom/waze/navigate/SearchActivity;

    .line 1547
    .end local v0           #currentActivity:Landroid/app/Activity;
    iget v1, p0, Lcom/waze/navigate/DriveToNativeManager$58;->val$finalPosition:I

    iget-object v2, p0, Lcom/waze/navigate/DriveToNativeManager$58;->val$finalIcon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/SearchActivity;->refreshAdressItemsIcons(ILjava/lang/String;)V

    .line 1549
    :cond_0
    return-void
.end method
