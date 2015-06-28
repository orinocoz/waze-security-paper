.class public Lcom/waze/ifs/ui/VideoActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "VideoActivity.java"


# instance fields
.field private video:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/ifs/ui/VideoActivity;->video:Landroid/widget/VideoView;

    .line 15
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/waze/ifs/ui/VideoActivity;->video:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/ifs/ui/VideoActivity;->video:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/waze/ifs/ui/VideoActivity;->video:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 64
    :cond_0
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onBackPressed()V

    .line 65
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 21
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0, v7}, Lcom/waze/ifs/ui/VideoActivity;->requestWindowFeature(I)Z

    .line 23
    const v5, 0x7f030132

    invoke-virtual {p0, v5}, Lcom/waze/ifs/ui/VideoActivity;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lcom/waze/ifs/ui/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 26
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "url"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 27
    .local v4, videoUrl:Ljava/lang/String;
    const-string v5, "landscape"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 28
    .local v2, landscape:Z
    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {p0, v6}, Lcom/waze/ifs/ui/VideoActivity;->setRequestedOrientation(I)V

    .line 33
    :goto_0
    const v5, 0x7f0907c6

    invoke-virtual {p0, v5}, Lcom/waze/ifs/ui/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/VideoView;

    iput-object v5, p0, Lcom/waze/ifs/ui/VideoActivity;->video:Landroid/widget/VideoView;

    .line 34
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, ctlr:Landroid/widget/MediaController;
    iget-object v5, p0, Lcom/waze/ifs/ui/VideoActivity;->video:Landroid/widget/VideoView;

    invoke-virtual {v0, v5}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 36
    iget-object v5, p0, Lcom/waze/ifs/ui/VideoActivity;->video:Landroid/widget/VideoView;

    invoke-virtual {v5, v0}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 37
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 38
    .local v3, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/waze/ifs/ui/VideoActivity;->video:Landroid/widget/VideoView;

    invoke-virtual {v5, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 40
    iget-object v5, p0, Lcom/waze/ifs/ui/VideoActivity;->video:Landroid/widget/VideoView;

    new-instance v6, Lcom/waze/ifs/ui/VideoActivity$1;

    invoke-direct {v6, p0}, Lcom/waze/ifs/ui/VideoActivity$1;-><init>(Lcom/waze/ifs/ui/VideoActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 48
    iget-object v5, p0, Lcom/waze/ifs/ui/VideoActivity;->video:Landroid/widget/VideoView;

    new-instance v6, Lcom/waze/ifs/ui/VideoActivity$2;

    invoke-direct {v6, p0}, Lcom/waze/ifs/ui/VideoActivity$2;-><init>(Lcom/waze/ifs/ui/VideoActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 55
    iget-object v5, p0, Lcom/waze/ifs/ui/VideoActivity;->video:Landroid/widget/VideoView;

    invoke-virtual {v5}, Landroid/widget/VideoView;->start()V

    .line 56
    return-void

    .line 31
    .end local v0           #ctlr:Landroid/widget/MediaController;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0, v7}, Lcom/waze/ifs/ui/VideoActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
