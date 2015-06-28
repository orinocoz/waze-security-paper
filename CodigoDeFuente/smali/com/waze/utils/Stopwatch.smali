.class public Lcom/waze/utils/Stopwatch;
.super Ljava/lang/Object;
.source "Stopwatch.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "STOPWATCH"


# instance fields
.field private volatile mLastSample:J

.field private mName:Ljava/lang/String;

.field private volatile mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-wide v0, p0, Lcom/waze/utils/Stopwatch;->mStartTime:J

    .line 73
    iput-wide v0, p0, Lcom/waze/utils/Stopwatch;->mLastSample:J

    .line 74
    const-string v0, "Generic"

    iput-object v0, p0, Lcom/waze/utils/Stopwatch;->mName:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    const-wide/16 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-wide v0, p0, Lcom/waze/utils/Stopwatch;->mStartTime:J

    .line 73
    iput-wide v0, p0, Lcom/waze/utils/Stopwatch;->mLastSample:J

    .line 74
    const-string v0, "Generic"

    iput-object v0, p0, Lcom/waze/utils/Stopwatch;->mName:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/waze/utils/Stopwatch;->mName:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static _sample()J
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static create(Ljava/lang/String;)Lcom/waze/utils/Stopwatch;
    .locals 1
    .parameter "name"

    .prologue
    .line 18
    new-instance v0, Lcom/waze/utils/Stopwatch;

    invoke-direct {v0, p0}, Lcom/waze/utils/Stopwatch;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private printDelta(Ljava/lang/String;JZ)V
    .locals 4
    .parameter "print"
    .parameter "delta"
    .parameter "sample"

    .prologue
    .line 54
    if-eqz p4, :cond_1

    const-string v0, "SAMPLE; "

    .line 55
    .local v0, sampleString:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "STOPWATCH "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/waze/utils/Stopwatch;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "$ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " $. Delta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/waze/Logger;->i_(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void

    .line 54
    .end local v0           #sampleString:Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/waze/utils/Stopwatch;->mStartTime:J

    .line 29
    return-void
.end method

.method public sample()J
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/waze/utils/Stopwatch;->_sample()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/waze/utils/Stopwatch;->mLastSample:J

    .line 62
    iget-wide v0, p0, Lcom/waze/utils/Stopwatch;->mLastSample:J

    return-wide v0
.end method

.method public sampleDelta(Ljava/lang/String;Z)J
    .locals 7
    .parameter "print"
    .parameter "takeSample"

    .prologue
    .line 43
    iget-wide v2, p0, Lcom/waze/utils/Stopwatch;->mLastSample:J

    .line 44
    .local v2, lastSample:J
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/waze/utils/Stopwatch;->sample()J

    move-result-wide v4

    .line 45
    .local v4, sample:J
    :goto_0
    sub-long v0, v4, v2

    .line 47
    .local v0, delta:J
    const/4 v6, 0x1

    invoke-direct {p0, p1, v0, v1, v6}, Lcom/waze/utils/Stopwatch;->printDelta(Ljava/lang/String;JZ)V

    .line 49
    return-wide v0

    .line 44
    .end local v0           #delta:J
    .end local v4           #sample:J
    :cond_0
    invoke-static {}, Lcom/waze/utils/Stopwatch;->_sample()J

    move-result-wide v4

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Lcom/waze/utils/Stopwatch;->_sample()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/waze/utils/Stopwatch;->mStartTime:J

    .line 24
    return-void
.end method

.method public startDelta(Ljava/lang/String;Z)J
    .locals 6
    .parameter "print"
    .parameter "takeSample"

    .prologue
    .line 33
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/waze/utils/Stopwatch;->sample()J

    move-result-wide v2

    .line 34
    .local v2, sample:J
    :goto_0
    iget-wide v4, p0, Lcom/waze/utils/Stopwatch;->mStartTime:J

    sub-long v0, v2, v4

    .line 36
    .local v0, delta:J
    const/4 v4, 0x0

    invoke-direct {p0, p1, v0, v1, v4}, Lcom/waze/utils/Stopwatch;->printDelta(Ljava/lang/String;JZ)V

    .line 38
    return-wide v0

    .line 33
    .end local v0           #delta:J
    .end local v2           #sample:J
    :cond_0
    invoke-static {}, Lcom/waze/utils/Stopwatch;->_sample()J

    move-result-wide v2

    goto :goto_0
.end method
