.class public Lcom/waze/view/popups/SystemMessageWeb;
.super Lcom/waze/view/popups/PopUp;
.source "SystemMessageWeb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/view/popups/SystemMessageWeb$SystemMessageWebViewClient;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/waze/view/popups/SystemMessageWeb;

.field private static mIsShown:Z

.field private static mLayoutManager:Lcom/waze/LayoutManager;


# instance fields
.field private mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/view/popups/SystemMessageWeb;->mIsShown:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V
    .locals 1
    .parameter "context"
    .parameter "layoutManager"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/waze/view/popups/PopUp;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    .line 24
    iput-object v0, p0, Lcom/waze/view/popups/SystemMessageWeb;->mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;

    .line 25
    iput-object v0, p0, Lcom/waze/view/popups/SystemMessageWeb;->mWebView:Landroid/webkit/WebView;

    .line 37
    sput-object p2, Lcom/waze/view/popups/SystemMessageWeb;->mLayoutManager:Lcom/waze/LayoutManager;

    .line 38
    invoke-direct {p0}, Lcom/waze/view/popups/SystemMessageWeb;->init()V

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/waze/view/popups/SystemMessageWeb;)Lcom/waze/view/map/ProgressAnimation;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/waze/view/popups/SystemMessageWeb;->mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/view/popups/SystemMessageWeb;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/waze/view/popups/SystemMessageWeb;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/SystemMessageWeb;
    .locals 1
    .parameter "context"
    .parameter "layoutManager"

    .prologue
    .line 28
    sget-object v0, Lcom/waze/view/popups/SystemMessageWeb;->mInstance:Lcom/waze/view/popups/SystemMessageWeb;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/waze/view/popups/SystemMessageWeb;

    invoke-direct {v0, p0, p1}, Lcom/waze/view/popups/SystemMessageWeb;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    sput-object v0, Lcom/waze/view/popups/SystemMessageWeb;->mInstance:Lcom/waze/view/popups/SystemMessageWeb;

    .line 31
    :cond_0
    sget-object v0, Lcom/waze/view/popups/SystemMessageWeb;->mInstance:Lcom/waze/view/popups/SystemMessageWeb;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/waze/view/popups/SystemMessageWeb;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 52
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030113

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    invoke-virtual {p0}, Lcom/waze/view/popups/SystemMessageWeb;->setUpButtonsTxt()V

    .line 55
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/view/popups/SystemMessageWeb;->mIsShown:Z

    .line 59
    sget-object v0, Lcom/waze/view/popups/SystemMessageWeb;->mLayoutManager:Lcom/waze/LayoutManager;

    sget-object v1, Lcom/waze/view/popups/SystemMessageWeb;->mInstance:Lcom/waze/view/popups/SystemMessageWeb;

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->dismiss(Lcom/waze/view/popups/PopUp;)V

    .line 60
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/waze/view/popups/SystemMessageWeb;->hide()V

    .line 46
    return-void
.end method

.method public setUpButtonsTxt()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    const/4 v2, 0x1

    .line 63
    sget-boolean v0, Lcom/waze/view/popups/SystemMessageWeb;->mIsShown:Z

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/waze/view/popups/SystemMessageWeb;->mInstance:Lcom/waze/view/popups/SystemMessageWeb;

    invoke-virtual {v0}, Lcom/waze/view/popups/SystemMessageWeb;->hide()V

    .line 67
    :cond_0
    sput-boolean v2, Lcom/waze/view/popups/SystemMessageWeb;->mIsShown:Z

    .line 69
    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/SystemMessageWeb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/view/popups/SystemMessageWeb$1;

    invoke-direct {v1, p0}, Lcom/waze/view/popups/SystemMessageWeb$1;-><init>(Lcom/waze/view/popups/SystemMessageWeb;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v0, 0x7f090710

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/SystemMessageWeb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/waze/view/popups/SystemMessageWeb;->mWebView:Landroid/webkit/WebView;

    .line 78
    sget-object v0, Lcom/waze/view/popups/SystemMessageWeb;->mLayoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v0, p0}, Lcom/waze/LayoutManager;->addView(Lcom/waze/view/popups/PopUp;)V

    .line 81
    const v0, 0x7f0901c4

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/SystemMessageWeb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/map/ProgressAnimation;

    iput-object v0, p0, Lcom/waze/view/popups/SystemMessageWeb;->mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;

    .line 83
    iget-object v0, p0, Lcom/waze/view/popups/SystemMessageWeb;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 84
    iget-object v0, p0, Lcom/waze/view/popups/SystemMessageWeb;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/waze/view/popups/SystemMessageWeb;->mWebView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/waze/view/popups/SystemMessageWeb;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/waze/view/popups/SystemMessageWeb$SystemMessageWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/waze/view/popups/SystemMessageWeb$SystemMessageWebViewClient;-><init>(Lcom/waze/view/popups/SystemMessageWeb;Lcom/waze/view/popups/SystemMessageWeb$SystemMessageWebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 88
    return-void
.end method
