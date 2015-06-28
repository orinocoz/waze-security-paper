.class Lcom/waze/navigate/DriveToNativeManager$4;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "DriveToNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->getIdsMatchData(Lcom/waze/navigate/DriveToNativeManager$IdsMatchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private data:Lcom/waze/navigate/social/IdsMatchData;

.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$listener:Lcom/waze/navigate/DriveToNativeManager$IdsMatchListener;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$IdsMatchListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$4;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$4;->val$listener:Lcom/waze/navigate/DriveToNativeManager$IdsMatchListener;

    .line 236
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$4;->val$listener:Lcom/waze/navigate/DriveToNativeManager$IdsMatchListener;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$4;->data:Lcom/waze/navigate/social/IdsMatchData;

    invoke-interface {v0, v1}, Lcom/waze/navigate/DriveToNativeManager$IdsMatchListener;->onComplete(Lcom/waze/navigate/social/IdsMatchData;)V

    .line 251
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$4;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->getIdsMatchDataNTV()Lcom/waze/navigate/social/IdsMatchData;
    invoke-static {v1}, Lcom/waze/navigate/DriveToNativeManager;->access$3(Lcom/waze/navigate/DriveToNativeManager;)Lcom/waze/navigate/social/IdsMatchData;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$4;->data:Lcom/waze/navigate/social/IdsMatchData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$4;->data:Lcom/waze/navigate/social/IdsMatchData;

    goto :goto_0
.end method
