.class Lcom/waze/navigate/DriveToNativeManager$1;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "DriveToNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->getEndDriveData(Lcom/waze/navigate/DriveToNativeManager$EndDriveListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private data:Lcom/waze/navigate/social/EndDriveData;

.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$listener:Lcom/waze/navigate/DriveToNativeManager$EndDriveListener;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$EndDriveListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$1;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$1;->val$listener:Lcom/waze/navigate/DriveToNativeManager$EndDriveListener;

    .line 173
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$1;->val$listener:Lcom/waze/navigate/DriveToNativeManager$EndDriveListener;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$1;->data:Lcom/waze/navigate/social/EndDriveData;

    invoke-interface {v0, v1}, Lcom/waze/navigate/DriveToNativeManager$EndDriveListener;->onComplete(Lcom/waze/navigate/social/EndDriveData;)V

    .line 188
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$1;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->getEndDriveDataNTV()Lcom/waze/navigate/social/EndDriveData;
    invoke-static {v1}, Lcom/waze/navigate/DriveToNativeManager;->access$0(Lcom/waze/navigate/DriveToNativeManager;)Lcom/waze/navigate/social/EndDriveData;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$1;->data:Lcom/waze/navigate/social/EndDriveData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$1;->data:Lcom/waze/navigate/social/EndDriveData;

    goto :goto_0
.end method
