.class public Lcom/waze/SpeechttManagerBase;
.super Ljava/lang/Object;
.source "SpeechttManagerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/SpeechttManagerBase$Callback;,
        Lcom/waze/SpeechttManagerBase$OnOkMsgNoService;
    }
.end annotation


# static fields
.field public static final SPEECHTT_FLAG_EXTERNAL_RECOGNIZER:I = 0x10

.field public static final SPEECHTT_FLAG_INPUT_CMD:I = 0x8

.field public static final SPEECHTT_FLAG_INPUT_SEARCH:I = 0x2

.field public static final SPEECHTT_FLAG_INPUT_TEXT:I = 0x4

.field public static final SPEECHTT_FLAG_TIMEOUT_ENABLED:I = 0x1

.field private static final SPEECHTT_MAX_RESULTS:I = 0x1

.field public static final SPEECHTT_RES_STATUS_ERROR:I = 0x0

.field public static final SPEECHTT_RES_STATUS_NO_RESULTS:I = 0x2

.field public static final SPEECHTT_RES_STATUS_SUCCESS:I = 0x1


# instance fields
.field protected volatile mBusy:Z

.field protected mCallback:Lcom/waze/SpeechttManagerBase$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/SpeechttManagerBase;->mBusy:Z

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/SpeechttManagerBase;->mCallback:Lcom/waze/SpeechttManagerBase$Callback;

    .line 49
    return-void
.end method


# virtual methods
.method protected GetModel(I)Ljava/lang/String;
    .locals 2
    .parameter "flags"

    .prologue
    .line 231
    const-string v0, "free_form"

    .line 232
    .local v0, model:Ljava/lang/String;
    and-int/lit8 v1, p1, 0x2

    if-lez v1, :cond_0

    .line 234
    const-string v0, "web_search"

    .line 236
    :cond_0
    return-object v0
.end method

.method public InitNativeLayer()V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/waze/SpeechttManagerBase;->InitSpeechttManagerNTV()V

    .line 43
    return-void
.end method

.method protected native InitSpeechttManagerNTV()V
.end method

.method public IsAvailable()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public OnResultsExternal(ILandroid/content/Intent;)V
    .locals 4
    .parameter "aResultCode"
    .parameter "aIntent"

    .prologue
    .line 129
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 131
    const-string v1, "android.speech.extra.RESULTS"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 132
    .local v0, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/waze/SpeechttManagerBase;->ResultsHandler(Ljava/util/ArrayList;)V

    .line 149
    .end local v0           #matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 137
    :cond_0
    if-nez p1, :cond_1

    .line 139
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Recognition is canceled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v1, "Recognition process is canceled!"

    invoke-static {v1}, Lcom/waze/Logger;->w(Ljava/lang/String;)V

    .line 147
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/waze/SpeechttManagerBase;->ResultsHandler(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 144
    :cond_1
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error result is reported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not valid result code ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is reported while recognition process"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/Logger;->w(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected final Prepare([B[BI)Landroid/content/Intent;
    .locals 6
    .parameter "aLangTag"
    .parameter "aExtraPrompt"
    .parameter "aFlags"

    .prologue
    const/4 v5, 0x0

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {p0, p3}, Lcom/waze/SpeechttManagerBase;->GetModel(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v3, "android.speech.extra.MAX_RESULTS"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    if-eqz p1, :cond_0

    .line 214
    new-instance v1, Ljava/lang/String;

    array-length v3, p1

    invoke-direct {v1, p1, v5, v3}, Ljava/lang/String;-><init>([BII)V

    .line 215
    .local v1, langTag:Ljava/lang/String;
    const-string v3, "android.speech.extra.LANGUAGE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    .end local v1           #langTag:Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    .line 220
    new-instance v2, Ljava/lang/String;

    array-length v3, p2

    invoke-direct {v2, p2, v5, v3}, Ljava/lang/String;-><init>([BII)V

    .line 221
    .local v2, prompt:Ljava/lang/String;
    const-string v3, "android.speech.extra.PROMPT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    .end local v2           #prompt:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method protected Reset()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/SpeechttManagerBase;->mBusy:Z

    .line 246
    return-void
.end method

.method protected ResultsHandler(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, aMatchesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 278
    .local v2, resStr:Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 280
    new-instance v2, Ljava/lang/String;

    .end local v2           #resStr:Ljava/lang/String;
    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 284
    .restart local v2       #resStr:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 290
    const-string v4, "WAZE"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Recognizer result: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v1, 0x1

    .line 304
    .end local v0           #i:I
    .local v1, resStatus:I
    :goto_1
    move-object v3, v2

    .line 305
    .local v3, resStrParam:Ljava/lang/String;
    iget-object v4, p0, Lcom/waze/SpeechttManagerBase;->mCallback:Lcom/waze/SpeechttManagerBase$Callback;

    if-eqz v4, :cond_0

    .line 306
    iget-object v4, p0, Lcom/waze/SpeechttManagerBase;->mCallback:Lcom/waze/SpeechttManagerBase$Callback;

    #calls: Lcom/waze/SpeechttManagerBase$Callback;->run(Ljava/lang/String;I)V
    invoke-static {v4, v3, v1}, Lcom/waze/SpeechttManagerBase$Callback;->access$0(Lcom/waze/SpeechttManagerBase$Callback;Ljava/lang/String;I)V

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/waze/SpeechttManagerBase;->Reset()V

    .line 308
    return-void

    .line 286
    .end local v1           #resStatus:I
    .end local v3           #resStrParam:Ljava/lang/String;
    .restart local v0       #i:I
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_2

    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 284
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    .end local v0           #i:I
    :cond_3
    const-string v4, "WAZE"

    const-string v5, "There are no results..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v1, 0x2

    .restart local v1       #resStatus:I
    goto :goto_1
.end method

.method protected native SpeechttManagerCallbackNTV(JLjava/lang/String;I)V
.end method

.method public Start(Lcom/waze/SpeechttManagerBase$Callback;JI[B[BI)V
    .locals 3
    .parameter "aCb"
    .parameter "aCbContext"
    .parameter "aTimeout"
    .parameter "aLangTag"
    .parameter "aExtraPrompt"
    .parameter "aFlags"

    .prologue
    .line 57
    iget-boolean v2, p0, Lcom/waze/SpeechttManagerBase;->mBusy:Z

    if-eqz v2, :cond_0

    .line 59
    const-string v2, "Cannot start speech recognition - the engine is busy"

    invoke-static {v2}, Lcom/waze/Logger;->w(Ljava/lang/String;)V

    .line 91
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0, p1}, Lcom/waze/SpeechttManagerBase;->setCallback(Lcom/waze/SpeechttManagerBase$Callback;)V

    .line 65
    invoke-virtual {p0, p5, p6, p7}, Lcom/waze/SpeechttManagerBase;->Prepare([B[BI)Landroid/content/Intent;

    move-result-object v0

    .line 67
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Lcom/waze/SpeechttManagerBase$1;

    invoke-direct {v1, p0, v0}, Lcom/waze/SpeechttManagerBase$1;-><init>(Lcom/waze/SpeechttManagerBase;Landroid/content/Intent;)V

    .line 89
    .local v1, startEvent:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 90
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/waze/SpeechttManagerBase;->mBusy:Z

    goto :goto_0
.end method

.method public StartNative(JI[B[BI)V
    .locals 8
    .parameter "aCbContext"
    .parameter "aTimeout"
    .parameter "aLangTag"
    .parameter "aExtraPrompt"
    .parameter "aFlags"

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/waze/SpeechttManagerBase;->setNativeLayerCallback(J)V

    .line 100
    iget-object v1, p0, Lcom/waze/SpeechttManagerBase;->mCallback:Lcom/waze/SpeechttManagerBase$Callback;

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/waze/SpeechttManagerBase;->Start(Lcom/waze/SpeechttManagerBase$Callback;JI[B[BI)V

    .line 101
    return-void
.end method

.method public Stop()V
    .locals 3

    .prologue
    .line 109
    const-string v1, "WAZE"

    const-string v2, "Stopping the recognition service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v0, Lcom/waze/SpeechttManagerBase$2;

    invoke-direct {v0, p0}, Lcom/waze/SpeechttManagerBase$2;-><init>(Lcom/waze/SpeechttManagerBase;)V

    .line 124
    .local v0, stopEvent:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public setCallback(Lcom/waze/SpeechttManagerBase$Callback;)V
    .locals 0
    .parameter "aCb"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/waze/SpeechttManagerBase;->mCallback:Lcom/waze/SpeechttManagerBase$Callback;

    .line 190
    return-void
.end method

.method protected setNativeLayerCallback(J)V
    .locals 1
    .parameter "aCbContext"

    .prologue
    .line 255
    new-instance v0, Lcom/waze/SpeechttManagerBase$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/SpeechttManagerBase$3;-><init>(Lcom/waze/SpeechttManagerBase;J)V

    iput-object v0, p0, Lcom/waze/SpeechttManagerBase;->mCallback:Lcom/waze/SpeechttManagerBase$Callback;

    .line 267
    return-void
.end method
