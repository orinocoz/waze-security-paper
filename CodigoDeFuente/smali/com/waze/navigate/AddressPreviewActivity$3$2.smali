.class Lcom/waze/navigate/AddressPreviewActivity$3$2;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity$3;->onUrlOverride(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/AddressPreviewActivity$3;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressPreviewActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$3$2;->this$1:Lcom/waze/navigate/AddressPreviewActivity$3;

    .line 1947
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .parameter "valueAnimator"

    .prologue
    .line 1950
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1951
    .local v1, val:I
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$3$2;->this$1:Lcom/waze/navigate/AddressPreviewActivity$3;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$3;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity$3;->access$0(Lcom/waze/navigate/AddressPreviewActivity$3;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v2

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mWebView:Lcom/waze/WzWebView;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$3(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/WzWebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/WzWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1952
    .local v0, p:Landroid/view/ViewGroup$LayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1953
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$3$2;->this$1:Lcom/waze/navigate/AddressPreviewActivity$3;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$3;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity$3;->access$0(Lcom/waze/navigate/AddressPreviewActivity$3;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v2

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mWebView:Lcom/waze/WzWebView;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$3(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/WzWebView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/waze/WzWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1954
    return-void
.end method
