.class final Lcom/waze/SpeechttManager$SpeechttListener;
.super Ljava/lang/Object;
.source "SpeechttManager.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/SpeechttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpeechttListener"
.end annotation


# instance fields
.field private final mRecognizer:Landroid/speech/SpeechRecognizer;

.field final synthetic this$0:Lcom/waze/SpeechttManager;


# direct methods
.method public constructor <init>(Lcom/waze/SpeechttManager;Landroid/speech/SpeechRecognizer;)V
    .locals 0
    .parameter
    .parameter "aRecognizer"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/waze/SpeechttManager$SpeechttListener;->this$0:Lcom/waze/SpeechttManager;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p2, p0, Lcom/waze/SpeechttManager$SpeechttListener;->mRecognizer:Landroid/speech/SpeechRecognizer;

    .line 146
    return-void
.end method


# virtual methods
.method public getRecognizer()Landroid/speech/SpeechRecognizer;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/waze/SpeechttManager$SpeechttListener;->mRecognizer:Landroid/speech/SpeechRecognizer;

    return-object v0
.end method

.method public onBeginningOfSpeech()V
    .locals 2

    .prologue
    .line 173
    const-string v0, "WAZE"

    const-string v1, "Recognizer listener: starting speech"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0
    .parameter "buffer"

    .prologue
    .line 206
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 2

    .prologue
    .line 177
    const-string v0, "WAZE"

    const-string v1, "Recognizer listener: end of speech"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method public onError(I)V
    .locals 2
    .parameter "error"

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is reported while recognition process"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/Logger;->w(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/waze/SpeechttManager$SpeechttListener;->mRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    .line 201
    iget-object v0, p0, Lcom/waze/SpeechttManager$SpeechttListener;->this$0:Lcom/waze/SpeechttManager;

    invoke-virtual {v0}, Lcom/waze/SpeechttManager;->Reset()V

    .line 202
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "eventType"
    .parameter "params"

    .prologue
    .line 150
    move v1, p1

    .line 151
    .local v1, eventType_:I
    new-instance v0, Lcom/waze/SpeechttManager$SpeechttListener$1;

    invoke-direct {v0, p0, v1}, Lcom/waze/SpeechttManager$SpeechttListener$1;-><init>(Lcom/waze/SpeechttManager$SpeechttListener;I)V

    .line 158
    .local v0, eventRun:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 6
    .parameter "partialResults"

    .prologue
    .line 182
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 183
    .local v1, resStr:Ljava/lang/String;
    const-string v3, "results_recognition"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 187
    .local v2, resultsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 193
    const-string v3, "WAZE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Recognizer partial result: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void

    .line 189
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 204
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 2
    .parameter "results"

    .prologue
    .line 163
    const-string v1, "results_recognition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 165
    .local v0, resultsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/waze/SpeechttManager$SpeechttListener;->this$0:Lcom/waze/SpeechttManager;

    invoke-virtual {v1, v0}, Lcom/waze/SpeechttManager;->ResultsHandler(Ljava/util/ArrayList;)V

    .line 168
    iget-object v1, p0, Lcom/waze/SpeechttManager$SpeechttListener;->mRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v1}, Landroid/speech/SpeechRecognizer;->destroy()V

    .line 169
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 0
    .parameter "rmsdB"

    .prologue
    .line 205
    return-void
.end method
