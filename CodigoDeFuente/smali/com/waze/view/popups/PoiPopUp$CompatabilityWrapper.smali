.class final Lcom/waze/view/popups/PoiPopUp$CompatabilityWrapper;
.super Ljava/lang/Object;
.source "PoiPopUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/view/popups/PoiPopUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompatabilityWrapper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setLayerType(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "mWebView"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 721
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 722
    return-void
.end method
