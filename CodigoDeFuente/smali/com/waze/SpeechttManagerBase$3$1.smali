.class Lcom/waze/SpeechttManagerBase$3$1;
.super Ljava/lang/Object;
.source "SpeechttManagerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/SpeechttManagerBase$3;->onResults(JLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/SpeechttManagerBase$3;

.field private final synthetic val$aCbContext:J

.field private final synthetic val$aResult:Ljava/lang/String;

.field private final synthetic val$aStatus:I


# direct methods
.method constructor <init>(Lcom/waze/SpeechttManagerBase$3;JLjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/SpeechttManagerBase$3$1;->this$1:Lcom/waze/SpeechttManagerBase$3;

    iput-wide p2, p0, Lcom/waze/SpeechttManagerBase$3$1;->val$aCbContext:J

    iput-object p4, p0, Lcom/waze/SpeechttManagerBase$3$1;->val$aResult:Ljava/lang/String;

    iput p5, p0, Lcom/waze/SpeechttManagerBase$3$1;->val$aStatus:I

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 261
    iget-object v0, p0, Lcom/waze/SpeechttManagerBase$3$1;->this$1:Lcom/waze/SpeechttManagerBase$3;

    #getter for: Lcom/waze/SpeechttManagerBase$3;->this$0:Lcom/waze/SpeechttManagerBase;
    invoke-static {v0}, Lcom/waze/SpeechttManagerBase$3;->access$0(Lcom/waze/SpeechttManagerBase$3;)Lcom/waze/SpeechttManagerBase;

    move-result-object v0

    iget-wide v1, p0, Lcom/waze/SpeechttManagerBase$3$1;->val$aCbContext:J

    iget-object v3, p0, Lcom/waze/SpeechttManagerBase$3$1;->val$aResult:Ljava/lang/String;

    iget v4, p0, Lcom/waze/SpeechttManagerBase$3$1;->val$aStatus:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/waze/SpeechttManagerBase;->SpeechttManagerCallbackNTV(JLjava/lang/String;I)V

    .line 262
    return-void
.end method
