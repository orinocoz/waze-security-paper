.class Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$2;
.super Ljava/lang/Object;
.source "AddressOptionsActivity.java"

# interfaces
.implements Lcom/waze/WzWebView$WebViewUrlOverride;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$2;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUrlOverride(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v6, 0x1

    .line 749
    iget-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$2;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mHolder:Lcom/waze/navigate/AddressOptionsActivity;
    invoke-static {v5}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->access$1(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)Lcom/waze/navigate/AddressOptionsActivity;

    move-result-object v5

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->caller:I
    invoke-static {v5}, Lcom/waze/navigate/AddressOptionsActivity;->access$5(Lcom/waze/navigate/AddressOptionsActivity;)I

    move-result v0

    .line 752
    .local v0, caller:I
    if-eqz p2, :cond_1

    .line 754
    const-string v5, "tel:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 756
    iget-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$2;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mHolder:Lcom/waze/navigate/AddressOptionsActivity;
    invoke-static {v5}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->access$1(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)Lcom/waze/navigate/AddressOptionsActivity;

    move-result-object v5

    const-string v7, "ADS_INFO_PHONE_CLICKED"

    #calls: Lcom/waze/navigate/AddressOptionsActivity;->logAnalyticsAds(Ljava/lang/String;)V
    invoke-static {v5, v7}, Lcom/waze/navigate/AddressOptionsActivity;->access$2(Lcom/waze/navigate/AddressOptionsActivity;Ljava/lang/String;)V

    .line 758
    const-string v5, "tel:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 759
    .local v2, index:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 761
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 762
    .local v3, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/waze/navigate/AddressOptionsActivity;->access$6()Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/waze/navigate/AddressOptionsActivity;

    new-instance v7, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$2$1;

    invoke-direct {v7, p0, v3}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$2$1;-><init>(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$2;Landroid/content/Intent;)V

    invoke-virtual {v5, v7}, Lcom/waze/navigate/AddressOptionsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    move v5, v6

    .line 786
    .end local v2           #index:I
    .end local v3           #intent:Landroid/content/Intent;
    :goto_0
    return v5

    .line 768
    :cond_0
    const-string v5, "waze://?open_url"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 770
    iget-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$2;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mHolder:Lcom/waze/navigate/AddressOptionsActivity;
    invoke-static {v5}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->access$1(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)Lcom/waze/navigate/AddressOptionsActivity;

    move-result-object v5

    const-string v6, "ADS_INFO_URL_CLICKED"

    #calls: Lcom/waze/navigate/AddressOptionsActivity;->logAnalyticsAds(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/waze/navigate/AddressOptionsActivity;->access$2(Lcom/waze/navigate/AddressOptionsActivity;Ljava/lang/String;)V

    .line 786
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 772
    :cond_2
    const-string v5, "waze://"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 774
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v4

    .line 776
    .local v4, mgr:Lcom/waze/NativeManager;
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 779
    .local v1, decodedUrl:Ljava/lang/String;
    invoke-virtual {v4, v1}, Lcom/waze/NativeManager;->UrlHandler(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 781
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_3
    move v5, v6

    .line 783
    goto :goto_0
.end method
