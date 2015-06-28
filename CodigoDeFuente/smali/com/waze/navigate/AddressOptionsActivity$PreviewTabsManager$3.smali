.class Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$3;
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
    iput-object p1, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$3;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUrlOverride(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v5, 0x1

    .line 793
    if-eqz p2, :cond_2

    .line 795
    const-string v4, "tel:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 797
    iget-object v4, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$3;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mHolder:Lcom/waze/navigate/AddressOptionsActivity;
    invoke-static {v4}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->access$1(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)Lcom/waze/navigate/AddressOptionsActivity;

    move-result-object v4

    const-string v6, "ADS_SPECIAL_PHONE_CLICKED"

    #calls: Lcom/waze/navigate/AddressOptionsActivity;->logAnalyticsAds(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/waze/navigate/AddressOptionsActivity;->access$2(Lcom/waze/navigate/AddressOptionsActivity;Ljava/lang/String;)V

    .line 799
    const-string v4, "tel:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 800
    .local v1, index:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 802
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 803
    .local v2, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/waze/navigate/AddressOptionsActivity;->access$6()Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/waze/navigate/AddressOptionsActivity;

    new-instance v6, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$3$1;

    invoke-direct {v6, p0, v2}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$3$1;-><init>(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$3;Landroid/content/Intent;)V

    invoke-virtual {v4, v6}, Lcom/waze/navigate/AddressOptionsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    move v4, v5

    .line 823
    .end local v1           #index:I
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return v4

    .line 809
    :cond_0
    const-string v4, "waze://"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 811
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v3

    .line 813
    .local v3, mgr:Lcom/waze/NativeManager;
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 816
    .local v0, decodedUrl:Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/waze/NativeManager;->UrlHandler(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 818
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    move v4, v5

    .line 820
    goto :goto_0

    .line 823
    .end local v0           #decodedUrl:Ljava/lang/String;
    .end local v3           #mgr:Lcom/waze/NativeManager;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method
