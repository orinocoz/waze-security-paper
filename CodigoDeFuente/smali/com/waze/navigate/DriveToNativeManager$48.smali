.class Lcom/waze/navigate/DriveToNativeManager$48;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "DriveToNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->getLocationData(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/waze/navigate/DriveToNativeManager$LocationDataListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private locationData:Lcom/waze/main/navigate/LocationData;

.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$Index:Ljava/lang/String;

.field private final synthetic val$listener:Lcom/waze/navigate/DriveToNativeManager$LocationDataListener;

.field private final synthetic val$locationX:Ljava/lang/Integer;

.field private final synthetic val$locationY:Ljava/lang/Integer;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$LocationDataListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$48;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput p2, p0, Lcom/waze/navigate/DriveToNativeManager$48;->val$type:I

    iput-object p3, p0, Lcom/waze/navigate/DriveToNativeManager$48;->val$locationX:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/waze/navigate/DriveToNativeManager$48;->val$locationY:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/waze/navigate/DriveToNativeManager$48;->val$Index:Ljava/lang/String;

    iput-object p6, p0, Lcom/waze/navigate/DriveToNativeManager$48;->val$listener:Lcom/waze/navigate/DriveToNativeManager$LocationDataListener;

    .line 1335
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$48;->val$listener:Lcom/waze/navigate/DriveToNativeManager$LocationDataListener;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$48;->locationData:Lcom/waze/main/navigate/LocationData;

    invoke-interface {v0, v1}, Lcom/waze/navigate/DriveToNativeManager$LocationDataListener;->onComplete(Lcom/waze/main/navigate/LocationData;)V

    .line 1351
    return-void
.end method

.method public event()V
    .locals 6

    .prologue
    .line 1341
    :try_start_0
    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$48;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget v2, p0, Lcom/waze/navigate/DriveToNativeManager$48;->val$type:I

    iget-object v3, p0, Lcom/waze/navigate/DriveToNativeManager$48;->val$locationX:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1342
    iget-object v4, p0, Lcom/waze/navigate/DriveToNativeManager$48;->val$locationY:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/waze/navigate/DriveToNativeManager$48;->val$Index:Ljava/lang/String;

    .line 1341
    #calls: Lcom/waze/navigate/DriveToNativeManager;->getLocationDataNTV(IIILjava/lang/String;)Lcom/waze/main/navigate/LocationData;
    invoke-static {v1, v2, v3, v4, v5}, Lcom/waze/navigate/DriveToNativeManager;->access$42(Lcom/waze/navigate/DriveToNativeManager;IIILjava/lang/String;)Lcom/waze/main/navigate/LocationData;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$48;->locationData:Lcom/waze/main/navigate/LocationData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1346
    :goto_0
    return-void

    .line 1343
    :catch_0
    move-exception v0

    .line 1344
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$48;->locationData:Lcom/waze/main/navigate/LocationData;

    goto :goto_0
.end method
