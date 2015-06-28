.class public abstract Lcom/waze/SpeechttManagerBase$Callback;
.super Ljava/lang/Object;
.source "SpeechttManagerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/SpeechttManagerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# instance fields
.field public final CONTEXT_NULL:J

.field public volatile mCbContext:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-wide v0, p0, Lcom/waze/SpeechttManagerBase$Callback;->CONTEXT_NULL:J

    .line 180
    iput-wide v0, p0, Lcom/waze/SpeechttManagerBase$Callback;->mCbContext:J

    .line 167
    iput-wide v0, p0, Lcom/waze/SpeechttManagerBase$Callback;->mCbContext:J

    .line 168
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .parameter "aCbContext"

    .prologue
    const-wide/16 v0, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-wide v0, p0, Lcom/waze/SpeechttManagerBase$Callback;->CONTEXT_NULL:J

    .line 180
    iput-wide v0, p0, Lcom/waze/SpeechttManagerBase$Callback;->mCbContext:J

    .line 171
    iput-wide p1, p0, Lcom/waze/SpeechttManagerBase$Callback;->mCbContext:J

    .line 172
    return-void
.end method

.method static synthetic access$0(Lcom/waze/SpeechttManagerBase$Callback;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lcom/waze/SpeechttManagerBase$Callback;->run(Ljava/lang/String;I)V

    return-void
.end method

.method private run(Ljava/lang/String;I)V
    .locals 2
    .parameter "aResult"
    .parameter "aStatus"

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/waze/SpeechttManagerBase$Callback;->mCbContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/waze/SpeechttManagerBase$Callback;->onResults(JLjava/lang/String;I)V

    .line 176
    return-void
.end method


# virtual methods
.method protected abstract onResults(JLjava/lang/String;I)V
.end method
