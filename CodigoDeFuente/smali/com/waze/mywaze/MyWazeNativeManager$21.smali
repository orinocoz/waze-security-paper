.class Lcom/waze/mywaze/MyWazeNativeManager$21;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "MyWazeNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->getUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;

.field url:Ljava/lang/String;

.field private final synthetic val$callback:Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;

.field private final synthetic val$height:I

.field private final synthetic val$selector:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

.field private final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;IILcom/waze/mywaze/MyWazeNativeManager$UrlCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$21;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iput-object p2, p0, Lcom/waze/mywaze/MyWazeNativeManager$21;->val$selector:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    iput p3, p0, Lcom/waze/mywaze/MyWazeNativeManager$21;->val$width:I

    iput p4, p0, Lcom/waze/mywaze/MyWazeNativeManager$21;->val$height:I

    iput-object p5, p0, Lcom/waze/mywaze/MyWazeNativeManager$21;->val$callback:Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;

    .line 562
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 573
    const-string v0, "WAZE"

    const-string v1, "getGroupsEvent - callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$21;->val$callback:Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$21;->url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;->onUrl(Ljava/lang/String;)V

    .line 575
    return-void
.end method

.method public event()V
    .locals 4

    .prologue
    .line 567
    const-string v0, "WAZE"

    const-string v1, "getGroupsEvent - event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$21;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeNativeManager$21;->val$selector:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->ordinal()I

    move-result v1

    iget v2, p0, Lcom/waze/mywaze/MyWazeNativeManager$21;->val$width:I

    iget v3, p0, Lcom/waze/mywaze/MyWazeNativeManager$21;->val$height:I

    #calls: Lcom/waze/mywaze/MyWazeNativeManager;->getUrlNTV(III)Ljava/lang/String;
    invoke-static {v0, v1, v2, v3}, Lcom/waze/mywaze/MyWazeNativeManager;->access$35(Lcom/waze/mywaze/MyWazeNativeManager;III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager$21;->url:Ljava/lang/String;

    .line 569
    return-void
.end method
