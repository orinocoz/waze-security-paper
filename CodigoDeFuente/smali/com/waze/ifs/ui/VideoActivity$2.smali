.class Lcom/waze/ifs/ui/VideoActivity$2;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ifs/ui/VideoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ifs/ui/VideoActivity;


# direct methods
.method constructor <init>(Lcom/waze/ifs/ui/VideoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ifs/ui/VideoActivity$2;->this$0:Lcom/waze/ifs/ui/VideoActivity;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 51
    iget-object v1, p0, Lcom/waze/ifs/ui/VideoActivity$2;->this$0:Lcom/waze/ifs/ui/VideoActivity;

    const v2, 0x7f0907c6

    invoke-virtual {v1, v2}, Lcom/waze/ifs/ui/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    .line 52
    .local v0, videoView:Landroid/widget/VideoView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 53
    return-void
.end method
