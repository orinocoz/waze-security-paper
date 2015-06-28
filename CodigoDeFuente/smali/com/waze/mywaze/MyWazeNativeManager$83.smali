.class Lcom/waze/mywaze/MyWazeNativeManager$83;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->socialContactsSavePhoneRecovery(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field private final synthetic val$phoneNumber:Ljava/lang/String;

.field private final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$83;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$83;->val$phoneNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/mywaze/MyWazeNativeManager$83;->val$token:Ljava/lang/String;

    .line 1369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1373
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 1374
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_0

    .line 1375
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 1377
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "socialContactsPhoneRecovery_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/waze/mywaze/MyWazeNativeManager$83;->val$phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/mywaze/MyWazeNativeManager$83;->val$token:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/waze/WazeBackupAgent;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    const-string v2, "socialContactsLastPhoneUsed"

    iget-object v3, p0, Lcom/waze/mywaze/MyWazeNativeManager$83;->val$phoneNumber:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/waze/WazeBackupAgent;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, v1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 1380
    .local v0, bm:Landroid/app/backup/BackupManager;
    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1381
    return-void
.end method
