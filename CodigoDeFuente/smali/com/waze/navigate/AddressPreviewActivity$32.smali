.class Lcom/waze/navigate/AddressPreviewActivity$32;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity;->gotoFlagResidential()V
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
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$32;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    .line 1684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 1688
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1689
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$32;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$20(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$32;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$32;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mFlagType:I
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$33(Lcom/waze/navigate/AddressPreviewActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/waze/NativeManager;->venueFlag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1690
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$32;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #calls: Lcom/waze/navigate/AddressPreviewActivity;->thanksForReport()V
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$34(Lcom/waze/navigate/AddressPreviewActivity;)V

    .line 1692
    :cond_0
    return-void
.end method
