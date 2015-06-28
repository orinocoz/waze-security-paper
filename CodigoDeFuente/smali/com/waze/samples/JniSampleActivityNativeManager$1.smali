.class Lcom/waze/samples/JniSampleActivityNativeManager$1;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "JniSampleActivityNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/samples/JniSampleActivityNativeManager;->runButtonClick(Lcom/waze/samples/JniSampleActivityNativeManager$ITimeUpdater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mData:Lcom/waze/samples/JniSampleActivityNativeManager$TimeData;

.field final synthetic this$0:Lcom/waze/samples/JniSampleActivityNativeManager;

.field private final synthetic val$updater:Lcom/waze/samples/JniSampleActivityNativeManager$ITimeUpdater;


# direct methods
.method constructor <init>(Lcom/waze/samples/JniSampleActivityNativeManager;Lcom/waze/samples/JniSampleActivityNativeManager$ITimeUpdater;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/samples/JniSampleActivityNativeManager$1;->this$0:Lcom/waze/samples/JniSampleActivityNativeManager;

    iput-object p2, p0, Lcom/waze/samples/JniSampleActivityNativeManager$1;->val$updater:Lcom/waze/samples/JniSampleActivityNativeManager$ITimeUpdater;

    .line 28
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 4

    .prologue
    .line 38
    const-string v0, "WAZE"

    const-string v1, "ButtonEvent - callback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/waze/samples/JniSampleActivityNativeManager$1;->val$updater:Lcom/waze/samples/JniSampleActivityNativeManager$ITimeUpdater;

    iget-object v1, p0, Lcom/waze/samples/JniSampleActivityNativeManager$1;->mData:Lcom/waze/samples/JniSampleActivityNativeManager$TimeData;

    iget v1, v1, Lcom/waze/samples/JniSampleActivityNativeManager$TimeData;->hour:I

    iget-object v2, p0, Lcom/waze/samples/JniSampleActivityNativeManager$1;->mData:Lcom/waze/samples/JniSampleActivityNativeManager$TimeData;

    iget v2, v2, Lcom/waze/samples/JniSampleActivityNativeManager$TimeData;->min:I

    iget-object v3, p0, Lcom/waze/samples/JniSampleActivityNativeManager$1;->mData:Lcom/waze/samples/JniSampleActivityNativeManager$TimeData;

    iget v3, v3, Lcom/waze/samples/JniSampleActivityNativeManager$TimeData;->sec:I

    invoke-interface {v0, v1, v2, v3}, Lcom/waze/samples/JniSampleActivityNativeManager$ITimeUpdater;->updateTime(III)V

    .line 40
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "WAZE"

    const-string v1, "ButtonEvent - event"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/waze/samples/JniSampleActivityNativeManager$1;->this$0:Lcom/waze/samples/JniSampleActivityNativeManager;

    #calls: Lcom/waze/samples/JniSampleActivityNativeManager;->LoadTimeNTV()Lcom/waze/samples/JniSampleActivityNativeManager$TimeData;
    invoke-static {v0}, Lcom/waze/samples/JniSampleActivityNativeManager;->access$0(Lcom/waze/samples/JniSampleActivityNativeManager;)Lcom/waze/samples/JniSampleActivityNativeManager$TimeData;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/samples/JniSampleActivityNativeManager$1;->mData:Lcom/waze/samples/JniSampleActivityNativeManager$TimeData;

    .line 34
    return-void
.end method
