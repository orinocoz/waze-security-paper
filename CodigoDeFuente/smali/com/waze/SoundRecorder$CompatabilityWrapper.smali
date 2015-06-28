.class final Lcom/waze/SoundRecorder$CompatabilityWrapper;
.super Ljava/lang/Object;
.source "SoundRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/SoundRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompatabilityWrapper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setSamplingRate(Landroid/media/MediaRecorder;I)V
    .locals 0
    .parameter "aMR"
    .parameter "aSamplingRate"

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 125
    return-void
.end method
