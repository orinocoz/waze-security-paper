.class Lcom/waze/navigate/AddressPreviewActivity$29;
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
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$29;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    .line 1538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1542
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$29;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    const-class v2, Lcom/waze/reports/EditPlaceFlowActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1543
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/waze/reports/VenueData;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$29;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1544
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$29;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    const/16 v2, 0x6d

    invoke-virtual {v1, v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1545
    return-void
.end method
