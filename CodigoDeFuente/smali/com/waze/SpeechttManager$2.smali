.class Lcom/waze/SpeechttManager$2;
.super Ljava/lang/Object;
.source "SpeechttManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/SpeechttManager;->Stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/SpeechttManager;


# direct methods
.method constructor <init>(Lcom/waze/SpeechttManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/SpeechttManager$2;->this$0:Lcom/waze/SpeechttManager;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 102
    iget-object v1, p0, Lcom/waze/SpeechttManager$2;->this$0:Lcom/waze/SpeechttManager;

    #getter for: Lcom/waze/SpeechttManager;->mListener:Lcom/waze/SpeechttManager$SpeechttListener;
    invoke-static {v1}, Lcom/waze/SpeechttManager;->access$1(Lcom/waze/SpeechttManager;)Lcom/waze/SpeechttManager$SpeechttListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/SpeechttManager$SpeechttListener;->getRecognizer()Landroid/speech/SpeechRecognizer;

    move-result-object v0

    .line 103
    .local v0, recognizer:Landroid/speech/SpeechRecognizer;
    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->stopListening()V

    .line 104
    return-void
.end method
