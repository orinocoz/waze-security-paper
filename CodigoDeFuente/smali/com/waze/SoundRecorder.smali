.class public Lcom/waze/SoundRecorder;
.super Ljava/lang/Object;
.source "SoundRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/SoundRecorder$CompatabilityWrapper;,
        Lcom/waze/SoundRecorder$OnErrorListener;,
        Lcom/waze/SoundRecorder$OnInfoListener;
    }
.end annotation


# static fields
.field private static final MAX_FILE_SIZE_BYTES:J = 0x186a0L

.field private static final SAMPLING_RATE:I = 0x3e80

.field private static mInstance:Lcom/waze/SoundRecorder;


# instance fields
.field private mMR:Landroid/media/MediaRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/SoundRecorder;->mInstance:Lcom/waze/SoundRecorder;

    .line 171
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/SoundRecorder;->mMR:Landroid/media/MediaRecorder;

    .line 143
    invoke-direct {p0}, Lcom/waze/SoundRecorder;->InitSoundRecorderNTV()V

    .line 144
    return-void
.end method

.method public static Create()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/waze/SoundRecorder;

    invoke-direct {v0}, Lcom/waze/SoundRecorder;-><init>()V

    sput-object v0, Lcom/waze/SoundRecorder;->mInstance:Lcom/waze/SoundRecorder;

    .line 36
    return-void
.end method

.method private native InitSoundRecorderNTV()V
.end method


# virtual methods
.method public Start(Ljava/lang/String;I)I
    .locals 7
    .parameter "aPath"
    .parameter "aTimeout"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 45
    const/4 v1, 0x0

    .line 47
    .local v1, res:I
    iget-object v2, p0, Lcom/waze/SoundRecorder;->mMR:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_0

    .line 49
    const-string v2, "The recorder is already initialized!!"

    invoke-static {v2}, Lcom/waze/Logger;->e(Ljava/lang/String;)V

    .line 50
    const/4 v2, -0x1

    .line 87
    :goto_0
    return v2

    .line 53
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Recoridng file to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/Logger;->d(Ljava/lang/String;)V

    .line 55
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v2, p0, Lcom/waze/SoundRecorder;->mMR:Landroid/media/MediaRecorder;

    .line 57
    iget-object v2, p0, Lcom/waze/SoundRecorder;->mMR:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 58
    iget-object v2, p0, Lcom/waze/SoundRecorder;->mMR:Landroid/media/MediaRecorder;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 59
    iget-object v2, p0, Lcom/waze/SoundRecorder;->mMR:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 60
    iget-object v2, p0, Lcom/waze/SoundRecorder;->mMR:Landroid/media/MediaRecorder;

    invoke-virtual {v2, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 62
    iget-object v2, p0, Lcom/waze/SoundRecorder;->mMR:Landroid/media/MediaRecorder;

    new-instance v3, Lcom/waze/SoundRecorder$OnErrorListener;

    invoke-direct {v3, v5}, Lcom/waze/SoundRecorder$OnErrorListener;-><init>(Lcom/waze/SoundRecorder$OnErrorListener;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 63
    iget-object v2, p0, Lcom/waze/SoundRecorder;->mMR:Landroid/media/MediaRecorder;

    new-instance v3, Lcom/waze/SoundRecorder$OnInfoListener;

    invoke-direct {v3, v5}, Lcom/waze/SoundRecorder$OnInfoListener;-><init>(Lcom/waze/SoundRecorder$OnInfoListener;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 64
    iget-object v2, p0, Lcom/waze/SoundRecorder;->mMR:Landroid/media/MediaRecorder;

    int-to-double v3, p2

    const-wide v5, 0x3ff0cccccccccccdL

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 65
    iget-object v2, p0, Lcom/waze/SoundRecorder;->mMR:Landroid/media/MediaRecorder;

    const-wide/32 v3, 0x186a0

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 78
    :try_start_0
    iget-object v2, p0, Lcom/waze/SoundRecorder;->mMR:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    .line 79
    iget-object v2, p0, Lcom/waze/SoundRecorder;->mMR:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v2, v1

    .line 87
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 83
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "Error starting media recorder"

    invoke-static {v2, v0}, Lcom/waze/Logger;->ee(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public Stop()V
    .locals 2

    .prologue
    .line 99
    :try_start_0
    const-string v1, "Stop recording file"

    invoke-static {v1}, Lcom/waze/Logger;->d(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/waze/SoundRecorder;->mMR:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/waze/SoundRecorder;->mMR:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 103
    iget-object v1, p0, Lcom/waze/SoundRecorder;->mMR:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 104
    iget-object v1, p0, Lcom/waze/SoundRecorder;->mMR:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/SoundRecorder;->mMR:Landroid/media/MediaRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 110
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "Error stopping media recorder"

    invoke-static {v1, v0}, Lcom/waze/Logger;->ee(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
