.class Lcom/waze/install/GuidedTourActivity$5;
.super Ljava/lang/Object;
.source "GuidedTourActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/waze/install/GuidedTourActivity$5;->this$0:Lcom/waze/install/GuidedTourActivity;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 285
    invoke-static {}, Lcom/waze/install/GuidedTourActivity;->access$3()Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    invoke-static {v5}, Lcom/waze/install/GuidedTourActivity;->access$4(Z)V

    .line 288
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    const-string v2, "START_MOVIE"

    invoke-virtual {v1, v2, v3, v3, v5}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/waze/install/GuidedTourActivity$5;->this$0:Lcom/waze/install/GuidedTourActivity;

    const v2, 0x7f090353

    invoke-virtual {v1, v2}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v1, p0, Lcom/waze/install/GuidedTourActivity$5;->this$0:Lcom/waze/install/GuidedTourActivity;

    const v2, 0x7f090352

    invoke-virtual {v1, v2}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    .line 292
    .local v0, videoView:Landroid/widget/VideoView;
    invoke-virtual {v0, v4}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 293
    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 294
    invoke-virtual {v0, v3}, Landroid/widget/VideoView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    return-void
.end method
