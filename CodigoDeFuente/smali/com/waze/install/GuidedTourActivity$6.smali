.class Lcom/waze/install/GuidedTourActivity$6;
.super Ljava/lang/Object;
.source "GuidedTourActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/install/GuidedTourActivity;->SetVideoUri()Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/install/GuidedTourActivity;

.field private final synthetic val$video:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Lcom/waze/install/GuidedTourActivity;Landroid/widget/VideoView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/install/GuidedTourActivity$6;->this$0:Lcom/waze/install/GuidedTourActivity;

    iput-object p2, p0, Lcom/waze/install/GuidedTourActivity$6;->val$video:Landroid/widget/VideoView;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .prologue
    .line 314
    new-instance v0, Lcom/waze/install/InstallNativeManager;

    invoke-direct {v0}, Lcom/waze/install/InstallNativeManager;-><init>()V

    .line 315
    .local v0, installNativeManager:Lcom/waze/install/InstallNativeManager;
    invoke-static {}, Lcom/waze/install/InstallNativeManager;->IsCleanInstallation()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/waze/install/GuidedTourActivity$6;->val$video:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/waze/install/GuidedTourActivity$6;->val$video:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->getHeight()I

    move-result v4

    new-instance v5, Lcom/waze/install/GuidedTourActivity$6$1;

    iget-object v6, p0, Lcom/waze/install/GuidedTourActivity$6;->val$video:Landroid/widget/VideoView;

    invoke-direct {v5, p0, v6}, Lcom/waze/install/GuidedTourActivity$6$1;-><init>(Lcom/waze/install/GuidedTourActivity$6;Landroid/widget/VideoView;)V

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/waze/install/InstallNativeManager;->getVideoUrl(ZIILcom/waze/install/InstallNativeManager$VideoUrlListener;)V

    .line 322
    iget-object v2, p0, Lcom/waze/install/GuidedTourActivity$6;->val$video:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 323
    .local v1, obs:Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 324
    return-void

    .line 315
    .end local v1           #obs:Landroid/view/ViewTreeObserver;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
