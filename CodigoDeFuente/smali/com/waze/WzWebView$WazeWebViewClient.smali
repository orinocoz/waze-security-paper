.class final Lcom/waze/WzWebView$WazeWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WzWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/WzWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WazeWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/WzWebView;


# direct methods
.method private constructor <init>(Lcom/waze/WzWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/waze/WzWebView$WazeWebViewClient;->this$0:Lcom/waze/WzWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/WzWebView;Lcom/waze/WzWebView$WazeWebViewClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/waze/WzWebView$WazeWebViewClient;-><init>(Lcom/waze/WzWebView;)V

    return-void
.end method

.method private InitProgressDlg()V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/waze/WzWebView$WazeWebViewClient;->this$0:Lcom/waze/WzWebView;

    new-instance v1, Lcom/waze/ifs/ui/ProgressBarDialog;

    iget-object v2, p0, Lcom/waze/WzWebView$WazeWebViewClient;->this$0:Lcom/waze/WzWebView;

    #getter for: Lcom/waze/WzWebView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/waze/WzWebView;->access$5(Lcom/waze/WzWebView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/waze/ifs/ui/ProgressBarDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/waze/WzWebView;->mProgressDlg:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/waze/WzWebView;->access$4(Lcom/waze/WzWebView;Landroid/app/Dialog;)V

    .line 221
    iget-object v0, p0, Lcom/waze/WzWebView$WazeWebViewClient;->this$0:Lcom/waze/WzWebView;

    #getter for: Lcom/waze/WzWebView;->mProgressDlg:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/waze/WzWebView;->access$2(Lcom/waze/WzWebView;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 222
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 204
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/waze/WzWebView$WazeWebViewClient;->this$0:Lcom/waze/WzWebView;

    #getter for: Lcom/waze/WzWebView;->mProgressDlg:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/waze/WzWebView;->access$2(Lcom/waze/WzWebView;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/waze/WzWebView$WazeWebViewClient;->this$0:Lcom/waze/WzWebView;

    #getter for: Lcom/waze/WzWebView;->mProgressDlg:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/waze/WzWebView;->access$2(Lcom/waze/WzWebView;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 208
    iget-object v0, p0, Lcom/waze/WzWebView$WazeWebViewClient;->this$0:Lcom/waze/WzWebView;

    const/4 v1, 0x0

    #setter for: Lcom/waze/WzWebView;->mProgressDlg:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/waze/WzWebView;->access$4(Lcom/waze/WzWebView;Landroid/app/Dialog;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/waze/WzWebView$WazeWebViewClient;->this$0:Lcom/waze/WzWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/WzWebView;->clearCache(Z)V

    .line 213
    iget-object v0, p0, Lcom/waze/WzWebView$WazeWebViewClient;->this$0:Lcom/waze/WzWebView;

    #getter for: Lcom/waze/WzWebView;->mPageProgressCallback:Lcom/waze/WzWebView$WebViewPageProgressCallback;
    invoke-static {v0}, Lcom/waze/WzWebView;->access$3(Lcom/waze/WzWebView;)Lcom/waze/WzWebView$WebViewPageProgressCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/waze/WzWebView$WazeWebViewClient;->this$0:Lcom/waze/WzWebView;

    #getter for: Lcom/waze/WzWebView;->mPageProgressCallback:Lcom/waze/WzWebView$WebViewPageProgressCallback;
    invoke-static {v0}, Lcom/waze/WzWebView;->access$3(Lcom/waze/WzWebView;)Lcom/waze/WzWebView$WebViewPageProgressCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/waze/WzWebView$WebViewPageProgressCallback;->onWebViewPageFinished()V

    .line 216
    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/waze/WzWebView$WazeWebViewClient;->this$0:Lcom/waze/WzWebView;

    #getter for: Lcom/waze/WzWebView;->mFlags:I
    invoke-static {v0}, Lcom/waze/WzWebView;->access$1(Lcom/waze/WzWebView;)I

    move-result v0

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/waze/WzWebView$WazeWebViewClient;->this$0:Lcom/waze/WzWebView;

    #getter for: Lcom/waze/WzWebView;->mProgressDlg:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/waze/WzWebView;->access$2(Lcom/waze/WzWebView;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/WzWebView$WazeWebViewClient;->this$0:Lcom/waze/WzWebView;

    #getter for: Lcom/waze/WzWebView;->mProgressDlg:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/waze/WzWebView;->access$2(Lcom/waze/WzWebView;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/waze/WzWebView$WazeWebViewClient;->InitProgressDlg()V

    .line 192
    iget-object v0, p0, Lcom/waze/WzWebView$WazeWebViewClient;->this$0:Lcom/waze/WzWebView;

    #getter for: Lcom/waze/WzWebView;->mProgressDlg:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/waze/WzWebView;->access$2(Lcom/waze/WzWebView;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/waze/WzWebView$WazeWebViewClient;->this$0:Lcom/waze/WzWebView;

    #getter for: Lcom/waze/WzWebView;->mPageProgressCallback:Lcom/waze/WzWebView$WebViewPageProgressCallback;
    invoke-static {v0}, Lcom/waze/WzWebView;->access$3(Lcom/waze/WzWebView;)Lcom/waze/WzWebView$WebViewPageProgressCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/waze/WzWebView$WazeWebViewClient;->this$0:Lcom/waze/WzWebView;

    #getter for: Lcom/waze/WzWebView;->mPageProgressCallback:Lcom/waze/WzWebView$WebViewPageProgressCallback;
    invoke-static {v0}, Lcom/waze/WzWebView;->access$3(Lcom/waze/WzWebView;)Lcom/waze/WzWebView$WebViewPageProgressCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/waze/WzWebView$WebViewPageProgressCallback;->onWebViewPageStarted()V

    .line 199
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 200
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v5, 0x1

    .line 162
    iget-object v3, p0, Lcom/waze/WzWebView$WazeWebViewClient;->this$0:Lcom/waze/WzWebView;

    #getter for: Lcom/waze/WzWebView;->mUrlOverride:Lcom/waze/WzWebView$WebViewUrlOverride;
    invoke-static {v3}, Lcom/waze/WzWebView;->access$0(Lcom/waze/WzWebView;)Lcom/waze/WzWebView$WebViewUrlOverride;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 163
    iget-object v3, p0, Lcom/waze/WzWebView$WazeWebViewClient;->this$0:Lcom/waze/WzWebView;

    #getter for: Lcom/waze/WzWebView;->mUrlOverride:Lcom/waze/WzWebView$WebViewUrlOverride;
    invoke-static {v3}, Lcom/waze/WzWebView;->access$0(Lcom/waze/WzWebView;)Lcom/waze/WzWebView$WebViewUrlOverride;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/waze/WzWebView$WebViewUrlOverride;->onUrlOverride(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v5

    .line 167
    :cond_1
    const-string v3, "tel:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 168
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 169
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 170
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Lcom/waze/WzWebView$WazeWebViewClient$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/waze/WzWebView$WazeWebViewClient$1;-><init>(Lcom/waze/WzWebView$WazeWebViewClient;Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 177
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    .line 179
    .local v2, mgr:Lcom/waze/NativeManager;
    invoke-virtual {v2, p2}, Lcom/waze/NativeManager;->UrlHandler(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 181
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
