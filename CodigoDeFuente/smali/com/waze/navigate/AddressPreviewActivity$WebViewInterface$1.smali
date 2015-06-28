.class Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface$1;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;->onResponse(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;

.field private final synthetic val$res:I


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;

    iput p2, p0, Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface$1;->val$res:I

    .line 2204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2208
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;->access$1(Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v1

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mWebView:Lcom/waze/WzWebView;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$3(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/WzWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/WzWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2209
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface$1;->val$res:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;->access$1(Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v2

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mDensity:F
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$4(Lcom/waze/navigate/AddressPreviewActivity;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2210
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;->access$1(Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v1

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mWebView:Lcom/waze/WzWebView;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$3(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/WzWebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/waze/WzWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2211
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;->access$1(Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v1

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mWebView:Lcom/waze/WzWebView;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$3(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/WzWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/WzWebView;->requestLayout()V

    .line 2212
    return-void
.end method
