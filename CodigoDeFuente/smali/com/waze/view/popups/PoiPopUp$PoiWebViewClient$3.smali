.class Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient$3;
.super Ljava/lang/Object;
.source "PoiPopUp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient$3;->this$1:Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient$3;->this$1:Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;

    #getter for: Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;->this$0:Lcom/waze/view/popups/PoiPopUp;
    invoke-static {v0}, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;->access$1(Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;)Lcom/waze/view/popups/PoiPopUp;

    move-result-object v0

    #calls: Lcom/waze/view/popups/PoiPopUp;->onPromotionButton()V
    invoke-static {v0}, Lcom/waze/view/popups/PoiPopUp;->access$9(Lcom/waze/view/popups/PoiPopUp;)V

    .line 666
    return-void
.end method
