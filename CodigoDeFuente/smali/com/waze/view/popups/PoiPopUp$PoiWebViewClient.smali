.class final Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "PoiPopUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/view/popups/PoiPopUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PoiWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/PoiPopUp;


# direct methods
.method private constructor <init>(Lcom/waze/view/popups/PoiPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 628
    iput-object p1, p0, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;->this$0:Lcom/waze/view/popups/PoiPopUp;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/view/popups/PoiPopUp;Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;-><init>(Lcom/waze/view/popups/PoiPopUp;)V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;)Lcom/waze/view/popups/PoiPopUp;
    .locals 1
    .parameter

    .prologue
    .line 628
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;->this$0:Lcom/waze/view/popups/PoiPopUp;

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 703
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;->this$0:Lcom/waze/view/popups/PoiPopUp;

    #getter for: Lcom/waze/view/popups/PoiPopUp;->mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;
    invoke-static {v0}, Lcom/waze/view/popups/PoiPopUp;->access$11(Lcom/waze/view/popups/PoiPopUp;)Lcom/waze/view/map/ProgressAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/view/map/ProgressAnimation;->stop()V

    .line 705
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;->this$0:Lcom/waze/view/popups/PoiPopUp;

    #getter for: Lcom/waze/view/popups/PoiPopUp;->mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;
    invoke-static {v0}, Lcom/waze/view/popups/PoiPopUp;->access$11(Lcom/waze/view/popups/PoiPopUp;)Lcom/waze/view/map/ProgressAnimation;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/waze/view/map/ProgressAnimation;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;->this$0:Lcom/waze/view/popups/PoiPopUp;

    #getter for: Lcom/waze/view/popups/PoiPopUp;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/waze/view/popups/PoiPopUp;->access$12(Lcom/waze/view/popups/PoiPopUp;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;->this$0:Lcom/waze/view/popups/PoiPopUp;

    #getter for: Lcom/waze/view/popups/PoiPopUp;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/waze/view/popups/PoiPopUp;->access$12(Lcom/waze/view/popups/PoiPopUp;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:window.W.evalJsForAndroid("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;->this$0:Lcom/waze/view/popups/PoiPopUp;

    #getter for: Lcom/waze/view/popups/PoiPopUp;->VOICE_ACTIONS_INDEX:I
    invoke-static {v2}, Lcom/waze/view/popups/PoiPopUp;->access$0(Lcom/waze/view/popups/PoiPopUp;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\'window.W.getVoiceActions()\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 714
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    const/4 v1, 0x0

    .line 690
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;->this$0:Lcom/waze/view/popups/PoiPopUp;

    #getter for: Lcom/waze/view/popups/PoiPopUp;->mIsPreloaded:Z
    invoke-static {v0}, Lcom/waze/view/popups/PoiPopUp;->access$10(Lcom/waze/view/popups/PoiPopUp;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;->this$0:Lcom/waze/view/popups/PoiPopUp;

    #getter for: Lcom/waze/view/popups/PoiPopUp;->mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;
    invoke-static {v0}, Lcom/waze/view/popups/PoiPopUp;->access$11(Lcom/waze/view/popups/PoiPopUp;)Lcom/waze/view/map/ProgressAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/view/map/ProgressAnimation;->start()V

    .line 692
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;->this$0:Lcom/waze/view/popups/PoiPopUp;

    #getter for: Lcom/waze/view/popups/PoiPopUp;->mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;
    invoke-static {v0}, Lcom/waze/view/popups/PoiPopUp;->access$11(Lcom/waze/view/popups/PoiPopUp;)Lcom/waze/view/map/ProgressAnimation;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/waze/view/map/ProgressAnimation;->setVisibility(I)V

    .line 697
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 699
    return-void

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;->this$0:Lcom/waze/view/popups/PoiPopUp;

    #getter for: Lcom/waze/view/popups/PoiPopUp;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/waze/view/popups/PoiPopUp;->access$12(Lcom/waze/view/popups/PoiPopUp;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v8, 0x1

    .line 632
    invoke-static {}, Lcom/waze/view/popups/PoiPopUp;->access$6()Lcom/waze/LayoutManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/waze/LayoutManager;->SetPopUpInterrupt(Z)V

    .line 635
    const-string v6, "tel:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 637
    const-string v6, "ADS_POPUP_PHONE_CLICKED"

    invoke-static {v6}, Lcom/waze/analytics/Analytics;->logAdsContext(Ljava/lang/String;)V

    .line 639
    const-string v6, "tel:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 640
    .local v3, index:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 642
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 643
    .local v4, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 644
    .local v0, activity:Landroid/app/Activity;
    new-instance v6, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient$1;

    invoke-direct {v6, p0, v0, v4}, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient$1;-><init>(Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v0, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 685
    .end local v0           #activity:Landroid/app/Activity;
    .end local v3           #index:I
    .end local v4           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return v8

    .line 653
    :cond_1
    const-string v6, "external_poi_nav"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 654
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 655
    .restart local v0       #activity:Landroid/app/Activity;
    new-instance v6, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient$2;

    invoke-direct {v6, p0}, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient$2;-><init>(Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;)V

    invoke-virtual {v0, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 661
    .end local v0           #activity:Landroid/app/Activity;
    :cond_2
    const-string v6, "external_poi_info"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 662
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 663
    .restart local v0       #activity:Landroid/app/Activity;
    new-instance v6, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient$3;

    invoke-direct {v6, p0}, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient$3;-><init>(Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;)V

    invoke-virtual {v0, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 669
    .end local v0           #activity:Landroid/app/Activity;
    :cond_3
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v5

    .line 670
    .local v5, mgr:Lcom/waze/NativeManager;
    const-string v1, ""

    .line 673
    .local v1, decodedUrl:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 681
    invoke-virtual {v5, v1}, Lcom/waze/NativeManager;->UrlHandler(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 683
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 674
    :catch_0
    move-exception v2

    .line 676
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method
