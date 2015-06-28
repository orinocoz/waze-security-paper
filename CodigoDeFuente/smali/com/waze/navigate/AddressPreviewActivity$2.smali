.class Lcom/waze/navigate/AddressPreviewActivity$2;
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
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$2;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 169
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$2;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$0(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ObservableScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/ifs/ui/ObservableScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 170
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 171
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$2;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$0(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ObservableScrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/waze/ifs/ui/ObservableScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$2;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$0(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ObservableScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/ifs/ui/ObservableScrollView;->clearAnimation()V

    .line 173
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 165
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 162
    return-void
.end method
