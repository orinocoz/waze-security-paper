.class Lcom/waze/navigate/DriveToNativeManager$2;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "DriveToNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->getFriendsDriveData(Lcom/waze/navigate/DriveToNativeManager$EndDriveListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private data:Lcom/waze/navigate/social/EndDriveData;

.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$listener:Lcom/waze/navigate/DriveToNativeManager$EndDriveListener;

.field private final synthetic val$sMeetingID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$EndDriveListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$2;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$2;->val$sMeetingID:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/navigate/DriveToNativeManager$2;->val$listener:Lcom/waze/navigate/DriveToNativeManager$EndDriveListener;

    .line 194
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$2;->val$listener:Lcom/waze/navigate/DriveToNativeManager$EndDriveListener;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$2;->data:Lcom/waze/navigate/social/EndDriveData;

    invoke-interface {v0, v1}, Lcom/waze/navigate/DriveToNativeManager$EndDriveListener;->onComplete(Lcom/waze/navigate/social/EndDriveData;)V

    .line 209
    return-void
.end method

.method public event()V
    .locals 3

    .prologue
    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$2;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v2, p0, Lcom/waze/navigate/DriveToNativeManager$2;->val$sMeetingID:Ljava/lang/String;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->getFriendsDrivingDataNTV(Ljava/lang/String;)Lcom/waze/navigate/social/EndDriveData;
    invoke-static {v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->access$1(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)Lcom/waze/navigate/social/EndDriveData;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$2;->data:Lcom/waze/navigate/social/EndDriveData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$2;->data:Lcom/waze/navigate/social/EndDriveData;

    goto :goto_0
.end method
