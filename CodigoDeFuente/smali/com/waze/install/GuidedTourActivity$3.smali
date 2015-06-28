.class Lcom/waze/install/GuidedTourActivity$3;
.super Ljava/lang/Object;
.source "GuidedTourActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/install/GuidedTourActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/install/GuidedTourActivity;


# direct methods
.method constructor <init>(Lcom/waze/install/GuidedTourActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/install/GuidedTourActivity$3;->this$0:Lcom/waze/install/GuidedTourActivity;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mp"

    .prologue
    const/16 v3, 0x8

    .line 264
    iget-object v1, p0, Lcom/waze/install/GuidedTourActivity$3;->this$0:Lcom/waze/install/GuidedTourActivity;

    const v2, 0x7f090350

    invoke-virtual {v1, v2}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iget-object v1, p0, Lcom/waze/install/GuidedTourActivity$3;->this$0:Lcom/waze/install/GuidedTourActivity;

    const v2, 0x7f090351

    invoke-virtual {v1, v2}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v1, p0, Lcom/waze/install/GuidedTourActivity$3;->this$0:Lcom/waze/install/GuidedTourActivity;

    const v2, 0x7f090353

    invoke-virtual {v1, v2}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v1, p0, Lcom/waze/install/GuidedTourActivity$3;->this$0:Lcom/waze/install/GuidedTourActivity;

    const v2, 0x7f09034f

    invoke-virtual {v1, v2}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v1, p0, Lcom/waze/install/GuidedTourActivity$3;->this$0:Lcom/waze/install/GuidedTourActivity;

    const v2, 0x7f090352

    invoke-virtual {v1, v2}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    .line 269
    .local v0, videoView:Landroid/widget/VideoView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 270
    return-void
.end method
