.class public final Lcom/waze/TtsManager;
.super Ljava/lang/Object;
.source "TtsManager.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/TtsManager$UtteranceCompletedListener;
    }
.end annotation


# instance fields
.field private final TTS_RES_STATUS_ERROR:I

.field private final TTS_RES_STATUS_NO_RESULTS:I

.field private final TTS_RES_STATUS_PARTIAL_SUCCESS:I

.field private final TTS_RES_STATUS_SUCCESS:I

.field private mRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private volatile mTtsInitilized:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/TtsManager;->mTtsInitilized:Z

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/TtsManager;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 212
    const/4 v0, 0x1

    iput v0, p0, Lcom/waze/TtsManager;->TTS_RES_STATUS_ERROR:I

    .line 213
    const/4 v0, 0x2

    iput v0, p0, Lcom/waze/TtsManager;->TTS_RES_STATUS_PARTIAL_SUCCESS:I

    .line 214
    const/4 v0, 0x4

    iput v0, p0, Lcom/waze/TtsManager;->TTS_RES_STATUS_SUCCESS:I

    .line 215
    const/16 v0, 0x8

    iput v0, p0, Lcom/waze/TtsManager;->TTS_RES_STATUS_NO_RESULTS:I

    .line 38
    return-void
.end method

.method private native InitTtsManagerNTV()V
.end method

.method private native TtsManagerCallbackNTV(JI)V
.end method

.method static synthetic access$0(Lcom/waze/TtsManager;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/waze/TtsManager;->mRequestMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/TtsManager;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/TtsManager;->TtsManagerCallbackNTV(JI)V

    return-void
.end method

.method static synthetic access$2(Lcom/waze/TtsManager;Landroid/speech/tts/TextToSpeech;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/waze/TtsManager;->mTts:Landroid/speech/tts/TextToSpeech;

    return-void
.end method

.method private checkData()V
    .locals 3

    .prologue
    .line 156
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 157
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 159
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 160
    .local v1, checkIntent:Landroid/content/Intent;
    const-string v2, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 163
    .end local v1           #checkIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private setLanguage(Ljava/lang/String;)Z
    .locals 5
    .parameter "lang"

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, loc:Ljava/util/Locale;
    const/4 v1, 0x0

    .line 170
    .local v1, res:Z
    const-string v2, "italiano"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    sget-object v0, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    .line 176
    :cond_0
    if-eqz v0, :cond_2

    .line 178
    iget-object v2, p0, Lcom/waze/TtsManager;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2, v0}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v2

    if-nez v2, :cond_1

    .line 180
    const-string v2, "WAZE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Setting TTS language to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v2, p0, Lcom/waze/TtsManager;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 182
    const/4 v1, 0x1

    .line 190
    :cond_1
    :goto_0
    return v1

    .line 187
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error setting locale for language: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/Logger;->ee(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public InitNativeLayer()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/waze/TtsManager;->InitTtsManagerNTV()V

    .line 48
    return-void
.end method

.method public Prepare()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/waze/TtsManager;->checkData()V

    .line 90
    return-void
.end method

.method public Submit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .parameter "aText"
    .parameter "aFullPath"
    .parameter "aLang"
    .parameter "aCbContext"

    .prologue
    const/4 v5, 0x1

    .line 59
    iget-boolean v2, p0, Lcom/waze/TtsManager;->mTtsInitilized:Z

    if-eqz v2, :cond_0

    .line 62
    const-string v2, "WAZE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received request for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-direct {p0, p3}, Lcom/waze/TtsManager;->setLanguage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    const-string v2, "WAZE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error setting language for  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-direct {p0, p4, p5, v5}, Lcom/waze/TtsManager;->TtsManagerCallbackNTV(JI)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    .local v0, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "utteranceId"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v2, p0, Lcom/waze/TtsManager;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2, p1, v0, p2}, Landroid/speech/tts/TextToSpeech;->synthesizeToFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v1

    .line 75
    .local v1, result:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 76
    invoke-direct {p0, p4, p5, v5}, Lcom/waze/TtsManager;->TtsManagerCallbackNTV(JI)V

    goto :goto_0

    .line 78
    :cond_2
    iget-object v2, p0, Lcom/waze/TtsManager;->mRequestMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p4, p5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onDataCheckResult(ILandroid/content/Intent;)V
    .locals 5
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 95
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 97
    new-instance v2, Lcom/waze/TtsManager$1;

    invoke-direct {v2, p0}, Lcom/waze/TtsManager$1;-><init>(Lcom/waze/TtsManager;)V

    .line 104
    .local v2, ttsCreateEvent:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 118
    .end local v2           #ttsCreateEvent:Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    const-string v3, "WAZE"

    const-string v4, "TTS Data doesn\'t present - installing"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 110
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 113
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v1, installIntent:Landroid/content/Intent;
    const-string v3, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const/16 v3, 0x4000

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onDataInstallResult(ILandroid/content/Intent;)V
    .locals 0
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/waze/TtsManager;->checkData()V

    .line 123
    return-void
.end method

.method public onInit(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/TtsManager;->mTtsInitilized:Z

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/waze/TtsManager;->mRequestMap:Ljava/util/HashMap;

    .line 131
    iget-object v0, p0, Lcom/waze/TtsManager;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/waze/TtsManager$UtteranceCompletedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/waze/TtsManager$UtteranceCompletedListener;-><init>(Lcom/waze/TtsManager;Lcom/waze/TtsManager$UtteranceCompletedListener;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 133
    :cond_0
    return-void
.end method
