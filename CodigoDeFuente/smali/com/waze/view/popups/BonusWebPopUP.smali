.class public Lcom/waze/view/popups/BonusWebPopUP;
.super Lcom/waze/view/popups/PopUp;
.source "BonusWebPopUP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/view/popups/BonusWebPopUP$BonusWebViewClient;
    }
.end annotation


# static fields
.field private static mId:I

.field private static mInstance:Lcom/waze/view/popups/BonusWebPopUP;

.field private static mIsShown:Z

.field private static mLat:I

.field private static mLayoutManager:Lcom/waze/LayoutManager;

.field private static mLon:I


# instance fields
.field private mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/view/popups/BonusWebPopUP;->mIsShown:Z

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V
    .locals 1
    .parameter "context"
    .parameter "layoutManager"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/waze/view/popups/PopUp;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    .line 29
    iput-object v0, p0, Lcom/waze/view/popups/BonusWebPopUP;->mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;

    .line 30
    iput-object v0, p0, Lcom/waze/view/popups/BonusWebPopUP;->mWebView:Landroid/webkit/WebView;

    .line 47
    sput-object p2, Lcom/waze/view/popups/BonusWebPopUP;->mLayoutManager:Lcom/waze/LayoutManager;

    .line 48
    invoke-direct {p0}, Lcom/waze/view/popups/BonusWebPopUP;->init()V

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/waze/view/popups/BonusWebPopUP;)Lcom/waze/view/map/ProgressAnimation;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/waze/view/popups/BonusWebPopUP;->mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/view/popups/BonusWebPopUP;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/waze/view/popups/BonusWebPopUP;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lcom/waze/view/popups/BonusWebPopUP;->mId:I

    return v0
.end method

.method static synthetic access$3()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/waze/view/popups/BonusWebPopUP;->mLat:I

    return v0
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/waze/view/popups/BonusWebPopUP;->mLon:I

    return v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/BonusWebPopUP;
    .locals 1
    .parameter "context"
    .parameter "layoutManager"

    .prologue
    .line 33
    sget-object v0, Lcom/waze/view/popups/BonusWebPopUP;->mInstance:Lcom/waze/view/popups/BonusWebPopUP;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/waze/view/popups/BonusWebPopUP;

    invoke-direct {v0, p0, p1}, Lcom/waze/view/popups/BonusWebPopUP;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    sput-object v0, Lcom/waze/view/popups/BonusWebPopUP;->mInstance:Lcom/waze/view/popups/BonusWebPopUP;

    .line 36
    :cond_0
    sget-object v0, Lcom/waze/view/popups/BonusWebPopUP;->mInstance:Lcom/waze/view/popups/BonusWebPopUP;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/waze/view/popups/BonusWebPopUP;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 61
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030025

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    invoke-virtual {p0}, Lcom/waze/view/popups/BonusWebPopUP;->setUpButtonsTxt()V

    .line 64
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/view/popups/BonusWebPopUP;->mIsShown:Z

    .line 68
    sget-object v0, Lcom/waze/view/popups/BonusWebPopUP;->mLayoutManager:Lcom/waze/LayoutManager;

    sget-object v1, Lcom/waze/view/popups/BonusWebPopUP;->mInstance:Lcom/waze/view/popups/BonusWebPopUP;

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->dismiss(Lcom/waze/view/popups/PopUp;)V

    .line 69
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/waze/view/popups/BonusWebPopUP;->hide()V

    .line 42
    return-void
.end method

.method public setUpButtonsTxt()V
    .locals 4

    .prologue
    .line 52
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_CLOSE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, closeButtonTxt:Ljava/lang/String;
    const v2, 0x7f090322

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/BonusWebPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_NAVIGATE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, navigateButtonText:Ljava/lang/String;
    const v2, 0x7f0901c3

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/BonusWebPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method public show(ILjava/lang/String;II)V
    .locals 3
    .parameter "iID"
    .parameter "url"
    .parameter "lat"
    .parameter "lon"

    .prologue
    const/4 v2, 0x1

    .line 72
    sget-boolean v0, Lcom/waze/view/popups/BonusWebPopUP;->mIsShown:Z

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcom/waze/view/popups/BonusWebPopUP;->mInstance:Lcom/waze/view/popups/BonusWebPopUP;

    invoke-virtual {v0}, Lcom/waze/view/popups/BonusWebPopUP;->hide()V

    .line 76
    :cond_0
    sput-boolean v2, Lcom/waze/view/popups/BonusWebPopUP;->mIsShown:Z

    .line 77
    sput p1, Lcom/waze/view/popups/BonusWebPopUP;->mId:I

    .line 78
    sput p3, Lcom/waze/view/popups/BonusWebPopUP;->mLat:I

    .line 79
    sput p4, Lcom/waze/view/popups/BonusWebPopUP;->mLon:I

    .line 81
    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/BonusWebPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/view/popups/BonusWebPopUP$1;

    invoke-direct {v1, p0}, Lcom/waze/view/popups/BonusWebPopUP$1;-><init>(Lcom/waze/view/popups/BonusWebPopUP;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v0, 0x7f0901c2

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/BonusWebPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/view/popups/BonusWebPopUP$2;

    invoke-direct {v1, p0}, Lcom/waze/view/popups/BonusWebPopUP$2;-><init>(Lcom/waze/view/popups/BonusWebPopUP;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v0, 0x7f0901c0

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/BonusWebPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/waze/view/popups/BonusWebPopUP;->mWebView:Landroid/webkit/WebView;

    .line 104
    sget-object v0, Lcom/waze/view/popups/BonusWebPopUP;->mLayoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v0, p0}, Lcom/waze/LayoutManager;->addView(Lcom/waze/view/popups/PopUp;)V

    .line 107
    const v0, 0x7f0901c4

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/BonusWebPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/map/ProgressAnimation;

    iput-object v0, p0, Lcom/waze/view/popups/BonusWebPopUP;->mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;

    .line 109
    iget-object v0, p0, Lcom/waze/view/popups/BonusWebPopUP;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 110
    iget-object v0, p0, Lcom/waze/view/popups/BonusWebPopUP;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/waze/view/popups/BonusWebPopUP;->mWebView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/waze/view/popups/BonusWebPopUP;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/waze/view/popups/BonusWebPopUP$BonusWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/waze/view/popups/BonusWebPopUP$BonusWebViewClient;-><init>(Lcom/waze/view/popups/BonusWebPopUP;Lcom/waze/view/popups/BonusWebPopUP$BonusWebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 114
    return-void
.end method
