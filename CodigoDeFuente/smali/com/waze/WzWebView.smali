.class public final Lcom/waze/WzWebView;
.super Landroid/webkit/WebView;
.source "WzWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/WzWebView$WazeWebViewClient;,
        Lcom/waze/WzWebView$WebViewBackCallback;,
        Lcom/waze/WzWebView$WebViewPageProgressCallback;,
        Lcom/waze/WzWebView$WebViewSizeCallback;,
        Lcom/waze/WzWebView$WebViewUrlOverride;
    }
.end annotation


# static fields
.field public static final BROWSER_FLAG_NONE:I = 0x0

.field public static final BROWSER_FLAG_NO_PROGRESS:I = 0x10000

.field public static final BROWSER_FLAG_WINDOW_TYPE_NO_SCROLL:I = 0x40

.field public static final BROWSER_FLAG_WINDOW_TYPE_TRANSPARENT:I = 0x20


# instance fields
.field private mBackCallback:Lcom/waze/WzWebView$WebViewBackCallback;

.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field private mPageProgressCallback:Lcom/waze/WzWebView$WebViewPageProgressCallback;

.field private mProgressDlg:Landroid/app/Dialog;

.field private mSizeCallback:Lcom/waze/WzWebView$WebViewSizeCallback;

.field private mUrlOverride:Lcom/waze/WzWebView$WebViewUrlOverride;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "aContext"

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 230
    iput-object v1, p0, Lcom/waze/WzWebView;->mBackCallback:Lcom/waze/WzWebView$WebViewBackCallback;

    .line 231
    iput-object v1, p0, Lcom/waze/WzWebView;->mSizeCallback:Lcom/waze/WzWebView$WebViewSizeCallback;

    .line 232
    iput-object v1, p0, Lcom/waze/WzWebView;->mUrlOverride:Lcom/waze/WzWebView$WebViewUrlOverride;

    .line 233
    iput-object v1, p0, Lcom/waze/WzWebView;->mPageProgressCallback:Lcom/waze/WzWebView$WebViewPageProgressCallback;

    .line 235
    iput-object v1, p0, Lcom/waze/WzWebView;->mProgressDlg:Landroid/app/Dialog;

    .line 237
    iput-object v1, p0, Lcom/waze/WzWebView;->mContext:Landroid/content/Context;

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/waze/WzWebView;->Init(Landroid/content/Context;Lcom/waze/WzWebView$WebViewBackCallback;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "aContext"
    .parameter "aFlags"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 230
    iput-object v0, p0, Lcom/waze/WzWebView;->mBackCallback:Lcom/waze/WzWebView$WebViewBackCallback;

    .line 231
    iput-object v0, p0, Lcom/waze/WzWebView;->mSizeCallback:Lcom/waze/WzWebView$WebViewSizeCallback;

    .line 232
    iput-object v0, p0, Lcom/waze/WzWebView;->mUrlOverride:Lcom/waze/WzWebView$WebViewUrlOverride;

    .line 233
    iput-object v0, p0, Lcom/waze/WzWebView;->mPageProgressCallback:Lcom/waze/WzWebView$WebViewPageProgressCallback;

    .line 235
    iput-object v0, p0, Lcom/waze/WzWebView;->mProgressDlg:Landroid/app/Dialog;

    .line 237
    iput-object v0, p0, Lcom/waze/WzWebView;->mContext:Landroid/content/Context;

    .line 54
    invoke-direct {p0, p1, v0, p2}, Lcom/waze/WzWebView;->Init(Landroid/content/Context;Lcom/waze/WzWebView$WebViewBackCallback;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "aContext"
    .parameter "aAttrSet"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 230
    iput-object v1, p0, Lcom/waze/WzWebView;->mBackCallback:Lcom/waze/WzWebView$WebViewBackCallback;

    .line 231
    iput-object v1, p0, Lcom/waze/WzWebView;->mSizeCallback:Lcom/waze/WzWebView$WebViewSizeCallback;

    .line 232
    iput-object v1, p0, Lcom/waze/WzWebView;->mUrlOverride:Lcom/waze/WzWebView$WebViewUrlOverride;

    .line 233
    iput-object v1, p0, Lcom/waze/WzWebView;->mPageProgressCallback:Lcom/waze/WzWebView$WebViewPageProgressCallback;

    .line 235
    iput-object v1, p0, Lcom/waze/WzWebView;->mProgressDlg:Landroid/app/Dialog;

    .line 237
    iput-object v1, p0, Lcom/waze/WzWebView;->mContext:Landroid/content/Context;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/waze/WzWebView;->Init(Landroid/content/Context;Lcom/waze/WzWebView$WebViewBackCallback;I)V

    .line 45
    return-void
.end method

.method private Init(Landroid/content/Context;Lcom/waze/WzWebView$WebViewBackCallback;I)V
    .locals 4
    .parameter "aContext"
    .parameter "aBackCallback"
    .parameter "aFlags"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 109
    iput-object p1, p0, Lcom/waze/WzWebView;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {p0}, Lcom/waze/WzWebView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/waze/WzWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 114
    .local v0, webSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 115
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 116
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 117
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 118
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 119
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 121
    .end local v0           #webSettings:Landroid/webkit/WebSettings;
    :cond_0
    invoke-virtual {p0, p3}, Lcom/waze/WzWebView;->setFlags(I)V

    .line 122
    invoke-virtual {p0, p2}, Lcom/waze/WzWebView;->setBackCallback(Lcom/waze/WzWebView$WebViewBackCallback;)V

    .line 123
    invoke-virtual {p0, v2}, Lcom/waze/WzWebView;->setClickable(Z)V

    .line 124
    invoke-virtual {p0, v2}, Lcom/waze/WzWebView;->setFocusableInTouchMode(Z)V

    .line 125
    new-instance v1, Lcom/waze/WzWebView$WazeWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/waze/WzWebView$WazeWebViewClient;-><init>(Lcom/waze/WzWebView;Lcom/waze/WzWebView$WazeWebViewClient;)V

    invoke-virtual {p0, v1}, Lcom/waze/WzWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 127
    return-void
.end method

.method static synthetic access$0(Lcom/waze/WzWebView;)Lcom/waze/WzWebView$WebViewUrlOverride;
    .locals 1
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/waze/WzWebView;->mUrlOverride:Lcom/waze/WzWebView$WebViewUrlOverride;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/WzWebView;)I
    .locals 1
    .parameter

    .prologue
    .line 236
    iget v0, p0, Lcom/waze/WzWebView;->mFlags:I

    return v0
.end method

.method static synthetic access$2(Lcom/waze/WzWebView;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/waze/WzWebView;->mProgressDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/WzWebView;)Lcom/waze/WzWebView$WebViewPageProgressCallback;
    .locals 1
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/waze/WzWebView;->mPageProgressCallback:Lcom/waze/WzWebView$WebViewPageProgressCallback;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/WzWebView;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/waze/WzWebView;->mProgressDlg:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$5(Lcom/waze/WzWebView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/waze/WzWebView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "aEvent"

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/waze/WzWebView;->mBackCallback:Lcom/waze/WzWebView$WebViewBackCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/WzWebView;->mBackCallback:Lcom/waze/WzWebView$WebViewBackCallback;

    invoke-interface {v0, p1}, Lcom/waze/WzWebView$WebViewBackCallback;->onBackEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 152
    iget-object v0, p0, Lcom/waze/WzWebView;->mSizeCallback:Lcom/waze/WzWebView$WebViewSizeCallback;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 153
    iget-object v0, p0, Lcom/waze/WzWebView;->mSizeCallback:Lcom/waze/WzWebView$WebViewSizeCallback;

    invoke-interface {v0, p1, p2}, Lcom/waze/WzWebView$WebViewSizeCallback;->onWebViewSize(II)V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/WzWebView;->mSizeCallback:Lcom/waze/WzWebView$WebViewSizeCallback;

    .line 156
    :cond_0
    return-void
.end method

.method public setBackCallback(Lcom/waze/WzWebView$WebViewBackCallback;)V
    .locals 0
    .parameter "aCallback"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/waze/WzWebView;->mBackCallback:Lcom/waze/WzWebView$WebViewBackCallback;

    .line 72
    return-void
.end method

.method public setFlags(I)V
    .locals 2
    .parameter "aFlags"

    .prologue
    const/4 v1, 0x0

    .line 90
    iput p1, p0, Lcom/waze/WzWebView;->mFlags:I

    .line 91
    iget v0, p0, Lcom/waze/WzWebView;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-lez v0, :cond_0

    .line 93
    invoke-virtual {p0, v1}, Lcom/waze/WzWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 94
    invoke-virtual {p0, v1}, Lcom/waze/WzWebView;->setVerticalScrollBarEnabled(Z)V

    .line 95
    invoke-virtual {p0, v1}, Lcom/waze/WzWebView;->setScrollContainer(Z)V

    .line 97
    :cond_0
    iget v0, p0, Lcom/waze/WzWebView;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_1

    .line 99
    invoke-virtual {p0, v1}, Lcom/waze/WzWebView;->setBackgroundColor(I)V

    .line 101
    :cond_1
    return-void
.end method

.method public setPageProgressCallback(Lcom/waze/WzWebView$WebViewPageProgressCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/waze/WzWebView;->mPageProgressCallback:Lcom/waze/WzWebView$WebViewPageProgressCallback;

    .line 86
    return-void
.end method

.method public setSizeCallback(Lcom/waze/WzWebView$WebViewSizeCallback;)V
    .locals 0
    .parameter "aCallback"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/waze/WzWebView;->mSizeCallback:Lcom/waze/WzWebView$WebViewSizeCallback;

    .line 77
    return-void
.end method

.method public setUrlOverride(Lcom/waze/WzWebView$WebViewUrlOverride;)V
    .locals 0
    .parameter "override"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/waze/WzWebView;->mUrlOverride:Lcom/waze/WzWebView$WebViewUrlOverride;

    .line 82
    return-void
.end method
