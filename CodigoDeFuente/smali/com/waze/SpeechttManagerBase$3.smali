.class Lcom/waze/SpeechttManagerBase$3;
.super Lcom/waze/SpeechttManagerBase$Callback;
.source "SpeechttManagerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/SpeechttManagerBase;->setNativeLayerCallback(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/SpeechttManagerBase;


# direct methods
.method constructor <init>(Lcom/waze/SpeechttManagerBase;J)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/SpeechttManagerBase$3;->this$0:Lcom/waze/SpeechttManagerBase;

    .line 255
    invoke-direct {p0, p2, p3}, Lcom/waze/SpeechttManagerBase$Callback;-><init>(J)V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/SpeechttManagerBase$3;)Lcom/waze/SpeechttManagerBase;
    .locals 1
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/waze/SpeechttManagerBase$3;->this$0:Lcom/waze/SpeechttManagerBase;

    return-object v0
.end method


# virtual methods
.method protected onResults(JLjava/lang/String;I)V
    .locals 6
    .parameter "aCbContext"
    .parameter "aResult"
    .parameter "aStatus"

    .prologue
    .line 259
    new-instance v0, Lcom/waze/SpeechttManagerBase$3$1;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/waze/SpeechttManagerBase$3$1;-><init>(Lcom/waze/SpeechttManagerBase$3;JLjava/lang/String;I)V

    .line 264
    .local v0, eventCb:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 265
    return-void
.end method
