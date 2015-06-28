.class public Lcom/waze/SpeechttManager;
.super Lcom/waze/SpeechttManagerBase;
.source "SpeechttManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/SpeechttManager$SpeechttListener;
    }
.end annotation


# instance fields
.field private volatile mExternalRecognizer:Z

.field private volatile mListener:Lcom/waze/SpeechttManager$SpeechttListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/waze/SpeechttManagerBase;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/SpeechttManager;->mListener:Lcom/waze/SpeechttManager$SpeechttListener;

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/SpeechttManager;->mExternalRecognizer:Z

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/waze/SpeechttManager;Lcom/waze/SpeechttManager$SpeechttListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/waze/SpeechttManager;->mListener:Lcom/waze/SpeechttManager$SpeechttListener;

    return-void
.end method

.method static synthetic access$1(Lcom/waze/SpeechttManager;)Lcom/waze/SpeechttManager$SpeechttListener;
    .locals 1
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/waze/SpeechttManager;->mListener:Lcom/waze/SpeechttManager$SpeechttListener;

    return-object v0
.end method


# virtual methods
.method public IsAvailable()Z
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected Reset()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/SpeechttManager;->mBusy:Z

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/SpeechttManager;->mListener:Lcom/waze/SpeechttManager$SpeechttListener;

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/SpeechttManager;->mExternalRecognizer:Z

    .line 135
    return-void
.end method

.method public Start(Lcom/waze/SpeechttManagerBase$Callback;JI[B[BI)V
    .locals 5
    .parameter "aCb"
    .parameter "aCbContext"
    .parameter "aTimeout"
    .parameter "aLangTag"
    .parameter "aExtraPrompt"
    .parameter "aFlags"

    .prologue
    const/4 v3, 0x1

    .line 49
    iget-boolean v2, p0, Lcom/waze/SpeechttManager;->mBusy:Z

    if-eqz v2, :cond_0

    .line 51
    const-string v2, "Cannot start speech recognition - the engine is busy"

    invoke-static {v2}, Lcom/waze/Logger;->w(Ljava/lang/String;)V

    .line 80
    :goto_0
    return-void

    .line 55
    :cond_0
    and-int/lit8 v2, p7, 0x10

    if-lez v2, :cond_1

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/waze/SpeechttManager;->mExternalRecognizer:Z

    .line 57
    iget-boolean v2, p0, Lcom/waze/SpeechttManager;->mExternalRecognizer:Z

    if-eqz v2, :cond_2

    .line 59
    invoke-super/range {p0 .. p7}, Lcom/waze/SpeechttManagerBase;->Start(Lcom/waze/SpeechttManagerBase$Callback;JI[B[BI)V

    .line 79
    :goto_2
    iput-boolean v3, p0, Lcom/waze/SpeechttManager;->mBusy:Z

    goto :goto_0

    .line 55
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {p0, p5, p6, p7}, Lcom/waze/SpeechttManager;->Prepare([B[BI)Landroid/content/Intent;

    move-result-object v0

    .line 64
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "calling_package"

    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    new-instance v1, Lcom/waze/SpeechttManager$1;

    invoke-direct {v1, p0, v0}, Lcom/waze/SpeechttManager$1;-><init>(Lcom/waze/SpeechttManager;Landroid/content/Intent;)V

    .line 77
    .local v1, startEvent:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public Stop()V
    .locals 3

    .prologue
    .line 89
    iget-boolean v1, p0, Lcom/waze/SpeechttManager;->mExternalRecognizer:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/waze/SpeechttManager;->mListener:Lcom/waze/SpeechttManager$SpeechttListener;

    if-nez v1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string v1, "WAZE"

    const-string v2, "Stopping the recognition service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-boolean v1, p0, Lcom/waze/SpeechttManager;->mExternalRecognizer:Z

    if-eqz v1, :cond_1

    .line 96
    invoke-super {p0}, Lcom/waze/SpeechttManagerBase;->Stop()V

    goto :goto_0

    .line 100
    :cond_1
    new-instance v0, Lcom/waze/SpeechttManager$2;

    invoke-direct {v0, p0}, Lcom/waze/SpeechttManager$2;-><init>(Lcom/waze/SpeechttManager;)V

    .line 106
    .local v0, stopEvent:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
