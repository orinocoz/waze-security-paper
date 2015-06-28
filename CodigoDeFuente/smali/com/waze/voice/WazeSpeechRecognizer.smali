.class public Lcom/waze/voice/WazeSpeechRecognizer;
.super Ljava/lang/Object;
.source "WazeSpeechRecognizer.java"


# static fields
.field private static callback:J

.field private static inProgress:Z

.field private static recognizer:Landroid/speech/SpeechRecognizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/voice/WazeSpeechRecognizer;->inProgress:Z

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/voice/WazeSpeechRecognizer;->recognizer:Landroid/speech/SpeechRecognizer;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/util/List;[F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/waze/voice/WazeSpeechRecognizer;->internalResults(Ljava/util/List;[F)V

    return-void
.end method

.method static synthetic access$1()V
    .locals 0

    .prologue
    .line 134
    invoke-static {}, Lcom/waze/voice/WazeSpeechRecognizer;->reset()V

    return-void
.end method

.method public static handleResults(Ljava/util/List;[F)V
    .locals 2
    .parameter
    .parameter "scores"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[F)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "WAZE"

    const-string v1, "Waze speech: handleResults"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {p0, p1}, Lcom/waze/voice/WazeSpeechRecognizer;->internalResults(Ljava/util/List;[F)V

    .line 32
    return-void
.end method

.method private static internalResults(Ljava/util/List;[F)V
    .locals 8
    .parameter
    .parameter "scores"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[F)V"
        }
    .end annotation

    .prologue
    .local p0, results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 34
    invoke-static {}, Lcom/waze/voice/WazeSpeechRecognizer;->reset()V

    .line 35
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 36
    :cond_0
    const-string v3, "WAZE"

    const-string v4, "Waze speech: No results"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v3

    sget-wide v4, Lcom/waze/voice/WazeSpeechRecognizer;->callback:J

    new-array v6, v7, [Ljava/lang/String;

    new-array v7, v7, [F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/waze/NativeManager;->asrListenCallback(J[Ljava/lang/Object;[F)V

    .line 51
    :cond_1
    :goto_0
    return-void

    .line 39
    :cond_2
    const/4 v0, 0x0

    .line 40
    .local v0, i:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 47
    sget-wide v3, Lcom/waze/voice/WazeSpeechRecognizer;->callback:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 48
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v3

    sget-wide v4, Lcom/waze/voice/WazeSpeechRecognizer;->callback:J

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6, p1}, Lcom/waze/NativeManager;->asrListenCallback(J[Ljava/lang/Object;[F)V

    goto :goto_0

    .line 40
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 41
    .local v2, match:Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 43
    const-string v4, "WAZE"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Voice match: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " score: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    aget v6, p1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_1
.end method

.method private static reset()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/voice/WazeSpeechRecognizer;->inProgress:Z

    .line 136
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/voice/WazeSpeechRecognizer;->recognizer:Landroid/speech/SpeechRecognizer;

    .line 137
    return-void
.end method

.method public static start(JLjava/lang/String;)V
    .locals 4
    .parameter "aCallback"
    .parameter "Lang"

    .prologue
    .line 54
    sput-wide p0, Lcom/waze/voice/WazeSpeechRecognizer;->callback:J

    .line 55
    sget-boolean v2, Lcom/waze/voice/WazeSpeechRecognizer;->inProgress:Z

    if-eqz v2, :cond_0

    .line 133
    :goto_0
    return-void

    .line 58
    :cond_0
    const-string v2, "WAZE"

    const-string v3, "Waze speech: Start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v2, 0x1

    sput-boolean v2, Lcom/waze/voice/WazeSpeechRecognizer;->inProgress:Z

    .line 60
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, "free_form"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    const/16 v3, 0x4d2

    invoke-virtual {v2, v0, v3}, Lcom/waze/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 66
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, "free_form"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v2, "calling_package"

    const-string v3, "com.waze.dictate"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v2, "android.speech.extra.LANGUAGE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v2

    sput-object v2, Lcom/waze/voice/WazeSpeechRecognizer;->recognizer:Landroid/speech/SpeechRecognizer;

    .line 74
    new-instance v1, Lcom/waze/voice/WazeSpeechRecognizer$1;

    invoke-direct {v1}, Lcom/waze/voice/WazeSpeechRecognizer$1;-><init>()V

    .line 130
    .local v1, listener:Landroid/speech/RecognitionListener;
    sget-object v2, Lcom/waze/voice/WazeSpeechRecognizer;->recognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v2, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 131
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/LayoutManager;->displayVoiceWait()V

    .line 132
    sget-object v2, Lcom/waze/voice/WazeSpeechRecognizer;->recognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v2, v0}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static stop()V
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/waze/voice/WazeSpeechRecognizer;->recognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/waze/voice/WazeSpeechRecognizer;->inProgress:Z

    if-eqz v0, :cond_0

    .line 24
    const-string v0, "WAZE"

    const-string v1, "Waze speech: Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    sget-object v0, Lcom/waze/voice/WazeSpeechRecognizer;->recognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 27
    :cond_0
    invoke-static {}, Lcom/waze/voice/WazeSpeechRecognizer;->reset()V

    .line 28
    return-void
.end method
