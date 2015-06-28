.class Lcom/waze/TtsManager$1;
.super Ljava/lang/Object;
.source "TtsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/TtsManager;->onDataCheckResult(ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/TtsManager;


# direct methods
.method constructor <init>(Lcom/waze/TtsManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/TtsManager$1;->this$0:Lcom/waze/TtsManager;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 99
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 101
    .local v0, ctx:Landroid/content/Context;
    iget-object v1, p0, Lcom/waze/TtsManager$1;->this$0:Lcom/waze/TtsManager;

    new-instance v2, Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/waze/TtsManager$1;->this$0:Lcom/waze/TtsManager;

    invoke-direct {v2, v0, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    #setter for: Lcom/waze/TtsManager;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1, v2}, Lcom/waze/TtsManager;->access$2(Lcom/waze/TtsManager;Landroid/speech/tts/TextToSpeech;)V

    .line 102
    return-void
.end method
