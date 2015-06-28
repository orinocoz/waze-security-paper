.class Lcom/waze/install/GuidedTourActivity$4;
.super Ljava/lang/Object;
.source "GuidedTourActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    iput-object p1, p0, Lcom/waze/install/GuidedTourActivity$4;->this$0:Lcom/waze/install/GuidedTourActivity;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mp"

    .prologue
    const/4 v3, 0x0

    .line 275
    iget-object v1, p0, Lcom/waze/install/GuidedTourActivity$4;->this$0:Lcom/waze/install/GuidedTourActivity;

    const v2, 0x7f090350

    invoke-virtual {v1, v2}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v1, p0, Lcom/waze/install/GuidedTourActivity$4;->this$0:Lcom/waze/install/GuidedTourActivity;

    const v2, 0x7f090351

    invoke-virtual {v1, v2}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object v1, p0, Lcom/waze/install/GuidedTourActivity$4;->this$0:Lcom/waze/install/GuidedTourActivity;

    const v2, 0x7f09034f

    invoke-virtual {v1, v2}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v1, p0, Lcom/waze/install/GuidedTourActivity$4;->this$0:Lcom/waze/install/GuidedTourActivity;

    const v2, 0x7f090352

    invoke-virtual {v1, v2}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    .line 279
    .local v0, videoView:Landroid/widget/VideoView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 280
    return-void
.end method
