.class Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient$1;
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

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient$1;->this$1:Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;

    iput-object p2, p0, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient$1;->val$intent:Landroid/content/Intent;

    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient$1;->this$1:Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;

    #getter for: Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;->this$0:Lcom/waze/view/popups/PoiPopUp;
    invoke-static {v0}, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;->access$1(Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;)Lcom/waze/view/popups/PoiPopUp;

    move-result-object v0

    const/4 v1, 0x0

    #setter for: Lcom/waze/view/popups/PoiPopUp;->mAnalyticsAdsNotifyClose:Z
    invoke-static {v0, v1}, Lcom/waze/view/popups/PoiPopUp;->access$7(Lcom/waze/view/popups/PoiPopUp;Z)V

    .line 647
    invoke-static {}, Lcom/waze/view/popups/PoiPopUp;->access$6()Lcom/waze/LayoutManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    .line 648
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 649
    return-void
.end method
