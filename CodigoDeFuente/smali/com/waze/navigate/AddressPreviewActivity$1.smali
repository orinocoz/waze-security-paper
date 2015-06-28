.class Lcom/waze/navigate/AddressPreviewActivity$1;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navigate/AddressPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddressPreviewActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressPreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$1;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 153
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$1;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$0(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ObservableScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/ifs/ui/ObservableScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 154
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$1;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapCovered:I
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$1(Lcom/waze/navigate/AddressPreviewActivity;)I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 155
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$1;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$0(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ObservableScrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/waze/ifs/ui/ObservableScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$1;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$0(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ObservableScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/ifs/ui/ObservableScrollView;->clearAnimation()V

    .line 157
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 149
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 146
    return-void
.end method
