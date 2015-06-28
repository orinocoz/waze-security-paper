.class Lcom/waze/voice/WazeSpeechRecognizer$1;
.super Ljava/lang/Object;
.source "WazeSpeechRecognizer.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/voice/WazeSpeechRecognizer;->start(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 2

    .prologue
    .line 85
    const-string v0, "WAZE"

    const-string v1, "Waze speech: Begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0
    .parameter "buffer"

    .prologue
    .line 90
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 2

    .prologue
    .line 94
    const-string v0, "WAZE"

    const-string v1, "Waze speech: End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method public onError(I)V
    .locals 4
    .parameter "error"

    .prologue
    const/4 v3, 0x0

    .line 99
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Waze speech: Error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 101
    :cond_0
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->displayVoiceError()V

    .line 105
    :goto_0
    #calls: Lcom/waze/voice/WazeSpeechRecognizer;->reset()V
    invoke-static {}, Lcom/waze/voice/WazeSpeechRecognizer;->access$1()V

    .line 106
    return-void

    .line 103
    :cond_1
    invoke-static {v3, v3}, Lcom/waze/voice/WazeSpeechRecognizer;->handleResults(Ljava/util/List;[F)V

    goto :goto_0
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "eventType"
    .parameter "params"

    .prologue
    .line 110
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 4
    .parameter "resultBundle"

    .prologue
    .line 114
    const-string v2, "WAZE"

    const-string v3, "Waze speech: Partial Results"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v2, "results_recognition"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 116
    .local v0, results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "confidence_scores"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v1

    .line 117
    .local v1, scores:[F
    #calls: Lcom/waze/voice/WazeSpeechRecognizer;->internalResults(Ljava/util/List;[F)V
    invoke-static {v0, v1}, Lcom/waze/voice/WazeSpeechRecognizer;->access$0(Ljava/util/List;[F)V

    .line 118
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 122
    const-string v0, "WAZE"

    const-string v1, "Waze speech: Ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->displayVoiceListening()V

    .line 124
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 4
    .parameter "resultBundle"

    .prologue
    .line 77
    const-string v2, "WAZE"

    const-string v3, "Waze speech: Results"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v2, "results_recognition"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 79
    .local v0, results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "confidence_scores"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v1

    .line 80
    .local v1, scores:[F
    #calls: Lcom/waze/voice/WazeSpeechRecognizer;->internalResults(Ljava/util/List;[F)V
    invoke-static {v0, v1}, Lcom/waze/voice/WazeSpeechRecognizer;->access$0(Ljava/util/List;[F)V

    .line 81
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 0
    .parameter "rmsdB"

    .prologue
    .line 128
    return-void
.end method
