.class Lcom/waze/SpeechttManager$1;
.super Ljava/lang/Object;
.source "SpeechttManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/SpeechttManager;->Start(Lcom/waze/SpeechttManagerBase$Callback;JI[B[BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/SpeechttManager;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/waze/SpeechttManager;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/SpeechttManager$1;->this$0:Lcom/waze/SpeechttManager;

    iput-object p2, p0, Lcom/waze/SpeechttManager$1;->val$intent:Landroid/content/Intent;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 69
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    .line 71
    .local v0, recognizer:Landroid/speech/SpeechRecognizer;
    iget-object v1, p0, Lcom/waze/SpeechttManager$1;->this$0:Lcom/waze/SpeechttManager;

    new-instance v2, Lcom/waze/SpeechttManager$SpeechttListener;

    iget-object v3, p0, Lcom/waze/SpeechttManager$1;->this$0:Lcom/waze/SpeechttManager;

    invoke-direct {v2, v3, v0}, Lcom/waze/SpeechttManager$SpeechttListener;-><init>(Lcom/waze/SpeechttManager;Landroid/speech/SpeechRecognizer;)V

    #setter for: Lcom/waze/SpeechttManager;->mListener:Lcom/waze/SpeechttManager$SpeechttListener;
    invoke-static {v1, v2}, Lcom/waze/SpeechttManager;->access$0(Lcom/waze/SpeechttManager;Lcom/waze/SpeechttManager$SpeechttListener;)V

    .line 72
    iget-object v1, p0, Lcom/waze/SpeechttManager$1;->this$0:Lcom/waze/SpeechttManager;

    #getter for: Lcom/waze/SpeechttManager;->mListener:Lcom/waze/SpeechttManager$SpeechttListener;
    invoke-static {v1}, Lcom/waze/SpeechttManager;->access$1(Lcom/waze/SpeechttManager;)Lcom/waze/SpeechttManager$SpeechttListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 73
    iget-object v1, p0, Lcom/waze/SpeechttManager$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 74
    return-void
.end method
