.class Lcom/waze/navigate/AddressPreviewActivity$31;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity;->showReportSubmenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddressPreviewActivity;

.field private final synthetic val$optionValues:[I


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressPreviewActivity;[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$31;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    iput-object p2, p0, Lcom/waze/navigate/AddressPreviewActivity$31;->val$optionValues:[I

    .line 1621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    .line 1623
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$31;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$31;->val$optionValues:[I

    aget v1, v1, p2

    #setter for: Lcom/waze/navigate/AddressPreviewActivity;->mFlagType:I
    invoke-static {v0, v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$32(Lcom/waze/navigate/AddressPreviewActivity;I)V

    .line 1624
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$31;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mFlagType:I
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$33(Lcom/waze/navigate/AddressPreviewActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1648
    :goto_0
    :pswitch_0
    return-void

    .line 1626
    :pswitch_1
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$31;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$20(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$31;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$31;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mFlagType:I
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$33(Lcom/waze/navigate/AddressPreviewActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/waze/NativeManager;->venueFlag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1627
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$31;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #calls: Lcom/waze/navigate/AddressPreviewActivity;->thanksForReport()V
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$34(Lcom/waze/navigate/AddressPreviewActivity;)V

    goto :goto_0

    .line 1630
    :pswitch_2
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$31;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #calls: Lcom/waze/navigate/AddressPreviewActivity;->gotoMovedOrClosed()V
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$35(Lcom/waze/navigate/AddressPreviewActivity;)V

    goto :goto_0

    .line 1633
    :pswitch_3
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$31;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #calls: Lcom/waze/navigate/AddressPreviewActivity;->gotoFindDuplicate()V
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$36(Lcom/waze/navigate/AddressPreviewActivity;)V

    goto :goto_0

    .line 1636
    :pswitch_4
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$31;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    const/4 v1, 0x1

    #calls: Lcom/waze/navigate/AddressPreviewActivity;->gotoIappropreateOrWrongDetails(Z)V
    invoke-static {v0, v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$37(Lcom/waze/navigate/AddressPreviewActivity;Z)V

    goto :goto_0

    .line 1639
    :pswitch_5
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$31;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    const/4 v1, 0x0

    #calls: Lcom/waze/navigate/AddressPreviewActivity;->gotoIappropreateOrWrongDetails(Z)V
    invoke-static {v0, v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$37(Lcom/waze/navigate/AddressPreviewActivity;Z)V

    goto :goto_0

    .line 1642
    :pswitch_6
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$31;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #calls: Lcom/waze/navigate/AddressPreviewActivity;->gotoFlagResidential()V
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$38(Lcom/waze/navigate/AddressPreviewActivity;)V

    goto :goto_0

    .line 1624
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
