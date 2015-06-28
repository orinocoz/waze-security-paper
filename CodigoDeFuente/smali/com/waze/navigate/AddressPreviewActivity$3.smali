.class Lcom/waze/navigate/AddressPreviewActivity$3;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Lcom/waze/WzWebView$WebViewUrlOverride;


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
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$3;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    .line 1910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/AddressPreviewActivity$3;)Lcom/waze/navigate/AddressPreviewActivity;
    .locals 1
    .parameter

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$3;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    return-object v0
.end method


# virtual methods
.method public onUrlOverride(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 15
    .parameter "view"
    .parameter "url"

    .prologue
    .line 1913
    if-eqz p2, :cond_1

    .line 1914
    const-string v11, "tel:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1915
    iget-object v11, p0, Lcom/waze/navigate/AddressPreviewActivity$3;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    const-string v12, "ADS_SPECIAL_PHONE_CLICKED"

    #calls: Lcom/waze/navigate/AddressPreviewActivity;->logAnalyticsAds(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/waze/navigate/AddressPreviewActivity;->access$2(Lcom/waze/navigate/AddressPreviewActivity;Ljava/lang/String;)V

    .line 1917
    const-string v11, "tel:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1918
    .local v6, index:I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1920
    new-instance v7, Landroid/content/Intent;

    const-string v11, "android.intent.action.DIAL"

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v7, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1921
    .local v7, intent:Landroid/content/Intent;
    iget-object v11, p0, Lcom/waze/navigate/AddressPreviewActivity$3;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    new-instance v12, Lcom/waze/navigate/AddressPreviewActivity$3$1;

    invoke-direct {v12, p0, v7}, Lcom/waze/navigate/AddressPreviewActivity$3$1;-><init>(Lcom/waze/navigate/AddressPreviewActivity$3;Landroid/content/Intent;)V

    invoke-virtual {v11, v12}, Lcom/waze/navigate/AddressPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1926
    const/4 v11, 0x1

    .line 1969
    .end local v6           #index:I
    .end local v7           #intent:Landroid/content/Intent;
    :goto_0
    return v11

    .line 1927
    :cond_0
    const-string v11, "waze://?open_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1928
    iget-object v11, p0, Lcom/waze/navigate/AddressPreviewActivity$3;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    const-string v12, "ADS_PREVIEW_OFFER_URL_CLICKED"

    #calls: Lcom/waze/navigate/AddressPreviewActivity;->logAnalyticsAds(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/waze/navigate/AddressPreviewActivity;->access$2(Lcom/waze/navigate/AddressPreviewActivity;Ljava/lang/String;)V

    .line 1969
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 1929
    :cond_2
    const-string v11, "waze://"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1930
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v8

    .line 1932
    .local v8, mgr:Lcom/waze/NativeManager;
    const-string v2, ""

    .line 1935
    .local v2, decodedUrl:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-static {v11, v12}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1940
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 1941
    .local v10, parsed:Landroid/net/Uri;
    const-string v11, "change_info_height"

    invoke-virtual {v10, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1942
    .local v5, heightParam:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 1943
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1944
    .local v4, height:I
    iget-object v11, p0, Lcom/waze/navigate/AddressPreviewActivity$3;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mWebView:Lcom/waze/WzWebView;
    invoke-static {v11}, Lcom/waze/navigate/AddressPreviewActivity;->access$3(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/WzWebView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/waze/WzWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 1946
    .local v9, params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v11, 0x2

    new-array v11, v11, [I

    const/4 v12, 0x0

    iget v13, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    aput v13, v11, v12

    const/4 v12, 0x1

    int-to-float v13, v4

    iget-object v14, p0, Lcom/waze/navigate/AddressPreviewActivity$3;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mDensity:F
    invoke-static {v14}, Lcom/waze/navigate/AddressPreviewActivity;->access$4(Lcom/waze/navigate/AddressPreviewActivity;)F

    move-result v14

    mul-float/2addr v13, v14

    float-to-int v13, v13

    aput v13, v11, v12

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1947
    .local v1, anim:Landroid/animation/ValueAnimator;
    new-instance v11, Lcom/waze/navigate/AddressPreviewActivity$3$2;

    invoke-direct {v11, p0}, Lcom/waze/navigate/AddressPreviewActivity$3$2;-><init>(Lcom/waze/navigate/AddressPreviewActivity$3;)V

    invoke-virtual {v1, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1956
    const-wide/16 v11, 0x12c

    invoke-virtual {v1, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1957
    new-instance v11, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1958
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 1959
    const/4 v11, 0x1

    goto :goto_0

    .line 1936
    .end local v1           #anim:Landroid/animation/ValueAnimator;
    .end local v4           #height:I
    .end local v5           #heightParam:Ljava/lang/String;
    .end local v9           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v10           #parsed:Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 1937
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    const/4 v11, 0x1

    goto :goto_0

    .line 1963
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v5       #heightParam:Ljava/lang/String;
    .restart local v10       #parsed:Landroid/net/Uri;
    :cond_3
    invoke-virtual {v8, v2}, Lcom/waze/NativeManager;->UrlHandler(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1964
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1966
    :cond_4
    const/4 v11, 0x1

    goto/16 :goto_0
.end method
