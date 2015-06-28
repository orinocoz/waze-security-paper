.class Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navigate/AddressPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddressPreviewActivity;


# direct methods
.method private constructor <init>(Lcom/waze/navigate/AddressPreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2191
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/navigate/AddressPreviewActivity;Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2191
    invoke-direct {p0, p1}, Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;)Lcom/waze/navigate/AddressPreviewActivity;
    .locals 1
    .parameter

    .prologue
    .line 2191
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    return-object v0
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callJavaScript - onError("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/Logger;->e(Ljava/lang/String;)V

    .line 2197
    return-void
.end method

.method public onLogAnalyticsAds(Ljava/lang/String;)V
    .locals 1
    .parameter "event"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2220
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #calls: Lcom/waze/navigate/AddressPreviewActivity;->logAnalyticsAds(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/waze/navigate/AddressPreviewActivity;->access$2(Lcom/waze/navigate/AddressPreviewActivity;Ljava/lang/String;)V

    .line 2221
    return-void
.end method

.method public onResponse(II)V
    .locals 2
    .parameter "req"
    .parameter "res"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callJavaScript - onResponse("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/Logger;->d(Ljava/lang/String;)V

    .line 2202
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2204
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    new-instance v1, Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface$1;

    invoke-direct {v1, p0, p2}, Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface$1;-><init>(Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;I)V

    invoke-virtual {v0, v1}, Lcom/waze/navigate/AddressPreviewActivity;->post(Ljava/lang/Runnable;)V

    .line 2215
    :cond_0
    return-void
.end method
