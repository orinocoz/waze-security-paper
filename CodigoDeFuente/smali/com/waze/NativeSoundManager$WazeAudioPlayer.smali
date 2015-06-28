.class final Lcom/waze/NativeSoundManager$WazeAudioPlayer;
.super Ljava/lang/Thread;
.source "NativeSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/NativeSoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WazeAudioPlayer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/NativeSoundManager$WazeAudioPlayer$CompletionListener;,
        Lcom/waze/NativeSoundManager$WazeAudioPlayer$ErrorListener;
    }
.end annotation


# instance fields
.field private mBuffered:Z

.field private mBuffering:Z

.field private mCallback:Ljava/lang/Long;

.field private mFileName:Ljava/lang/String;

.field private mMP:Landroid/media/MediaPlayer;

.field final synthetic this$0:Lcom/waze/NativeSoundManager;


# direct methods
.method constructor <init>(Lcom/waze/NativeSoundManager;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1
    .parameter
    .parameter "aFileName"
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 515
    iput-object p1, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->this$0:Lcom/waze/NativeSoundManager;

    .line 514
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 662
    iput-boolean v0, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mBuffered:Z

    .line 663
    iput-boolean v0, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mBuffering:Z

    .line 664
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mMP:Landroid/media/MediaPlayer;

    .line 516
    iput-object p2, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mFileName:Ljava/lang/String;

    .line 517
    iput-object p3, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mCallback:Ljava/lang/Long;

    .line 518
    return-void
.end method

.method private BufferInternal()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 589
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mMP:Landroid/media/MediaPlayer;

    .line 590
    iget-object v2, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mMP:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/waze/NativeSoundManager$WazeAudioPlayer$CompletionListener;

    invoke-direct {v3, p0, v4}, Lcom/waze/NativeSoundManager$WazeAudioPlayer$CompletionListener;-><init>(Lcom/waze/NativeSoundManager$WazeAudioPlayer;Lcom/waze/NativeSoundManager$WazeAudioPlayer$CompletionListener;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 591
    iget-object v2, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mMP:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/waze/NativeSoundManager$WazeAudioPlayer$ErrorListener;

    invoke-direct {v3, p0, v4}, Lcom/waze/NativeSoundManager$WazeAudioPlayer$ErrorListener;-><init>(Lcom/waze/NativeSoundManager$WazeAudioPlayer;Lcom/waze/NativeSoundManager$WazeAudioPlayer$ErrorListener;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 592
    iget-object v2, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->this$0:Lcom/waze/NativeSoundManager;

    #getter for: Lcom/waze/NativeSoundManager;->mRouteToSpeaker:Z
    invoke-static {v2}, Lcom/waze/NativeSoundManager;->access$1(Lcom/waze/NativeSoundManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 594
    iget-object v2, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mMP:Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 601
    :goto_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 603
    .local v0, fileInStream:Ljava/io/FileInputStream;
    iget-object v2, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 606
    iget-object v2, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->this$0:Lcom/waze/NativeSoundManager;

    #calls: Lcom/waze/NativeSoundManager;->getExpVolumeValue()F
    invoke-static {v2}, Lcom/waze/NativeSoundManager;->access$2(Lcom/waze/NativeSoundManager;)F

    move-result v1

    .line 607
    .local v1, volume:F
    const-string v2, "Sound_Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Setting volume: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v2, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->this$0:Lcom/waze/NativeSoundManager;

    #getter for: Lcom/waze/NativeSoundManager;->mIsMuted:Z
    invoke-static {v2}, Lcom/waze/NativeSoundManager;->access$3(Lcom/waze/NativeSoundManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 609
    iget-object v2, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mMP:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v5, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 615
    :goto_1
    iget-object v2, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mMP:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 617
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mBuffered:Z

    .line 618
    return-void

    .line 598
    .end local v0           #fileInStream:Ljava/io/FileInputStream;
    .end local v1           #volume:F
    :cond_0
    iget-object v2, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mMP:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    goto :goto_0

    .line 611
    .restart local v0       #fileInStream:Ljava/io/FileInputStream;
    .restart local v1       #volume:F
    :cond_1
    iget-object v2, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mMP:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/waze/NativeSoundManager$WazeAudioPlayer;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 639
    invoke-direct {p0, p1}, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->finalizePlay(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/NativeSoundManager$WazeAudioPlayer;)Ljava/lang/Long;
    .locals 1
    .parameter

    .prologue
    .line 513
    iget-object v0, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mCallback:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/NativeSoundManager$WazeAudioPlayer;)Lcom/waze/NativeSoundManager;
    .locals 1
    .parameter

    .prologue
    .line 511
    iget-object v0, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->this$0:Lcom/waze/NativeSoundManager;

    return-object v0
.end method

.method private finalizePlay(Landroid/media/MediaPlayer;)V
    .locals 6
    .parameter "aMP"

    .prologue
    .line 641
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 642
    iget-object v2, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->this$0:Lcom/waze/NativeSoundManager;

    const/4 v3, 0x0

    #setter for: Lcom/waze/NativeSoundManager;->mPlaying:Z
    invoke-static {v2, v3}, Lcom/waze/NativeSoundManager;->access$0(Lcom/waze/NativeSoundManager;Z)V

    .line 645
    new-instance v1, Lcom/waze/NativeSoundManager$WazeAudioPlayer$1;

    invoke-direct {v1, p0}, Lcom/waze/NativeSoundManager$WazeAudioPlayer$1;-><init>(Lcom/waze/NativeSoundManager$WazeAudioPlayer;)V

    .line 650
    .local v1, playNext:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 651
    iget-object v2, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mCallback:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 652
    new-instance v0, Lcom/waze/NativeSoundManager$WazeAudioPlayer$2;

    invoke-direct {v0, p0}, Lcom/waze/NativeSoundManager$WazeAudioPlayer$2;-><init>(Lcom/waze/NativeSoundManager$WazeAudioPlayer;)V

    .line 657
    .local v0, doRun:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 660
    .end local v0           #doRun:Ljava/lang/Runnable;
    :cond_0
    return-void
.end method


# virtual methods
.method public Buffer()V
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mBuffering:Z

    .line 546
    invoke-virtual {p0}, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->start()V

    .line 547
    return-void
.end method

.method public Play()V
    .locals 3

    .prologue
    .line 521
    iget-boolean v1, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mBuffering:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mBuffered:Z

    if-nez v1, :cond_0

    .line 542
    :goto_0
    return-void

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->this$0:Lcom/waze/NativeSoundManager;

    const/4 v2, 0x1

    #setter for: Lcom/waze/NativeSoundManager;->mPlaying:Z
    invoke-static {v1, v2}, Lcom/waze/NativeSoundManager;->access$0(Lcom/waze/NativeSoundManager;Z)V

    .line 525
    iget-boolean v1, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mBuffered:Z

    if-eqz v1, :cond_1

    .line 529
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 529
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 533
    :catch_0
    move-exception v0

    .line 535
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "Audio Player. Error notifying the thread"

    invoke-static {v1, v0}, Lcom/waze/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 540
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0}, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->start()V

    goto :goto_0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 556
    :try_start_0
    iget-boolean v1, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mBuffered:Z

    if-nez v1, :cond_0

    .line 557
    invoke-direct {p0}, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->BufferInternal()V

    .line 562
    :cond_0
    iget-boolean v1, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mBuffering:Z

    if-eqz v1, :cond_1

    .line 564
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 564
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mMP:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 582
    :cond_2
    :goto_0
    return-void

    .line 564
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 573
    :catch_0
    move-exception v0

    .line 575
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Audio Player. Error playing the file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/waze/Logger;->ee(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 576
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 577
    iget-object v1, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mMP:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 579
    iget-object v1, p0, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->mMP:Landroid/media/MediaPlayer;

    invoke-direct {p0, v1}, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->finalizePlay(Landroid/media/MediaPlayer;)V

    goto :goto_0
.end method
