.class final Lcom/waze/view/popups/PoiPopUp$PoiBgWebClient;
.super Landroid/webkit/WebViewClient;
.source "PoiPopUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/view/popups/PoiPopUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PoiBgWebClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/PoiPopUp;


# direct methods
.method private constructor <init>(Lcom/waze/view/popups/PoiPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/waze/view/popups/PoiPopUp$PoiBgWebClient;->this$0:Lcom/waze/view/popups/PoiPopUp;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/view/popups/PoiPopUp;Lcom/waze/view/popups/PoiPopUp$PoiBgWebClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 596
    invoke-direct {p0, p1}, Lcom/waze/view/popups/PoiPopUp$PoiBgWebClient;-><init>(Lcom/waze/view/popups/PoiPopUp;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v5, 0x1

    .line 607
    const-string v0, "WAZE"

    .line 608
    const-string v1, "external_poi_preload:: onPageFinished:  mHadError: %s, mIsLoaded: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/waze/view/popups/PoiPopUp$PoiBgWebClient;->this$0:Lcom/waze/view/popups/PoiPopUp;

    #getter for: Lcom/waze/view/popups/PoiPopUp;->mHadError:Z
    invoke-static {v4}, Lcom/waze/view/popups/PoiPopUp;->access$3(Lcom/waze/view/popups/PoiPopUp;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 609
    iget-object v3, p0, Lcom/waze/view/popups/PoiPopUp$PoiBgWebClient;->this$0:Lcom/waze/view/popups/PoiPopUp;

    #getter for: Lcom/waze/view/popups/PoiPopUp;->mIsLoaded:Z
    invoke-static {v3}, Lcom/waze/view/popups/PoiPopUp;->access$4(Lcom/waze/view/popups/PoiPopUp;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    .line 607
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp$PoiBgWebClient;->this$0:Lcom/waze/view/popups/PoiPopUp;

    #getter for: Lcom/waze/view/popups/PoiPopUp;->mHadError:Z
    invoke-static {v0}, Lcom/waze/view/popups/PoiPopUp;->access$3(Lcom/waze/view/popups/PoiPopUp;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp$PoiBgWebClient;->this$0:Lcom/waze/view/popups/PoiPopUp;

    #setter for: Lcom/waze/view/popups/PoiPopUp;->mIsLoaded:Z
    invoke-static {v0, v5}, Lcom/waze/view/popups/PoiPopUp;->access$2(Lcom/waze/view/popups/PoiPopUp;Z)V

    .line 612
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 614
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 600
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp$PoiBgWebClient;->this$0:Lcom/waze/view/popups/PoiPopUp;

    const/4 v1, 0x0

    #setter for: Lcom/waze/view/popups/PoiPopUp;->mIsLoaded:Z
    invoke-static {v0, v1}, Lcom/waze/view/popups/PoiPopUp;->access$2(Lcom/waze/view/popups/PoiPopUp;Z)V

    .line 601
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 602
    const-string v0, "WAZE"

    const-string v1, "external_poi_preload:: onPageStarted: statring pre-loading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 618
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp$PoiBgWebClient;->this$0:Lcom/waze/view/popups/PoiPopUp;

    #setter for: Lcom/waze/view/popups/PoiPopUp;->mIsLoaded:Z
    invoke-static {v0, v4}, Lcom/waze/view/popups/PoiPopUp;->access$2(Lcom/waze/view/popups/PoiPopUp;Z)V

    .line 619
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp$PoiBgWebClient;->this$0:Lcom/waze/view/popups/PoiPopUp;

    #setter for: Lcom/waze/view/popups/PoiPopUp;->mHadError:Z
    invoke-static {v0, v5}, Lcom/waze/view/popups/PoiPopUp;->access$5(Lcom/waze/view/popups/PoiPopUp;Z)V

    .line 620
    const-string v0, "WAZE"

    .line 621
    const-string v1, "external_poi_preload:: failed pre-loading url: errorCode: %d description: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 622
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p3, v2, v5

    .line 620
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 625
    return-void
.end method
