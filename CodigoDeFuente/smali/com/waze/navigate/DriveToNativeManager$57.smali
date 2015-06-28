.class Lcom/waze/navigate/DriveToNativeManager$57;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->refreshIconsOnCategoriesActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$57;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    .line 1511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1514
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    .line 1516
    .local v0, currentActivity:Landroid/app/Activity;
    instance-of v1, v0, Lcom/waze/navigate/CategoriesActivity;

    if-eqz v1, :cond_0

    .line 1518
    const-string v1, "WAZE"

    .line 1519
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "refreshIconsOnCategoriesActivity callback running in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1520
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1519
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1518
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    check-cast v0, Lcom/waze/navigate/CategoriesActivity;

    .line 1523
    .end local v0           #currentActivity:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/waze/navigate/CategoriesActivity;->refreshCategoriesIcons()V

    .line 1525
    :cond_0
    return-void
.end method
