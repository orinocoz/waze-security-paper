.class final Lcom/waze/TtsManager$UtteranceCompletedListener;
.super Ljava/lang/Object;
.source "TtsManager.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/TtsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UtteranceCompletedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/TtsManager;


# direct methods
.method private constructor <init>(Lcom/waze/TtsManager;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/waze/TtsManager$UtteranceCompletedListener;->this$0:Lcom/waze/TtsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/TtsManager;Lcom/waze/TtsManager$UtteranceCompletedListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/waze/TtsManager$UtteranceCompletedListener;-><init>(Lcom/waze/TtsManager;)V

    return-void
.end method


# virtual methods
.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 5
    .parameter "aUtteranceId"

    .prologue
    .line 143
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Request completed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v1, p0, Lcom/waze/TtsManager$UtteranceCompletedListener;->this$0:Lcom/waze/TtsManager;

    #getter for: Lcom/waze/TtsManager;->mRequestMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/waze/TtsManager;->access$0(Lcom/waze/TtsManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 145
    .local v0, cbContext:Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WazeTttManager Error. There is no request for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/Logger;->ee(Ljava/lang/String;)V

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/waze/TtsManager$UtteranceCompletedListener;->this$0:Lcom/waze/TtsManager;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x4

    #calls: Lcom/waze/TtsManager;->TtsManagerCallbackNTV(JI)V
    invoke-static {v1, v2, v3, v4}, Lcom/waze/TtsManager;->access$1(Lcom/waze/TtsManager;JI)V

    .line 151
    return-void
.end method
