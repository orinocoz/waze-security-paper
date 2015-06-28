.class Lcom/waze/navigate/AddressPreviewActivity$19;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity;->refreshView()V
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
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$19;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$19;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    const-string v1, "ADS_PREVIEW_URL_CLICKED"

    #calls: Lcom/waze/navigate/AddressPreviewActivity;->logAnalyticsAds(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$2(Lcom/waze/navigate/AddressPreviewActivity;Ljava/lang/String;)V

    .line 1073
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$19;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v0

    iget-object v0, v0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v0, v0, Lcom/waze/reports/VenueData;->website:Ljava/lang/String;

    invoke-static {v0}, Lcom/waze/AppService;->OpenBrowser(Ljava/lang/String;)V

    .line 1074
    return-void
.end method
