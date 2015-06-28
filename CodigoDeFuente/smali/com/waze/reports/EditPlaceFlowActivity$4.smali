.class Lcom/waze/reports/EditPlaceFlowActivity$4;
.super Ljava/lang/Object;
.source "EditPlaceFlowActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditPlaceFlowActivity;->showReportSubmenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/EditPlaceFlowActivity;

.field private final synthetic val$optionValues:[I


# direct methods
.method constructor <init>(Lcom/waze/reports/EditPlaceFlowActivity;[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFlowActivity$4;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    iput-object p2, p0, Lcom/waze/reports/EditPlaceFlowActivity$4;->val$optionValues:[I

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$4;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity$4;->val$optionValues:[I

    aget v1, v1, p2

    #setter for: Lcom/waze/reports/EditPlaceFlowActivity;->mFlagType:I
    invoke-static {v0, v1}, Lcom/waze/reports/EditPlaceFlowActivity;->access$4(Lcom/waze/reports/EditPlaceFlowActivity;I)V

    .line 419
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$4;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mFlagType:I
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFlowActivity;->access$5(Lcom/waze/reports/EditPlaceFlowActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 439
    :goto_0
    :pswitch_0
    return-void

    .line 421
    :pswitch_1
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$4;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #calls: Lcom/waze/reports/EditPlaceFlowActivity;->gotoMovedOrClosed()V
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFlowActivity;->access$6(Lcom/waze/reports/EditPlaceFlowActivity;)V

    goto :goto_0

    .line 424
    :pswitch_2
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$4;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #calls: Lcom/waze/reports/EditPlaceFlowActivity;->gotoFindDuplicate()V
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFlowActivity;->access$7(Lcom/waze/reports/EditPlaceFlowActivity;)V

    goto :goto_0

    .line 427
    :pswitch_3
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$4;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    const/4 v1, 0x1

    #calls: Lcom/waze/reports/EditPlaceFlowActivity;->gotoIappropreateOrWrongDetails(Z)V
    invoke-static {v0, v1}, Lcom/waze/reports/EditPlaceFlowActivity;->access$8(Lcom/waze/reports/EditPlaceFlowActivity;Z)V

    goto :goto_0

    .line 430
    :pswitch_4
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$4;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    const/4 v1, 0x0

    #calls: Lcom/waze/reports/EditPlaceFlowActivity;->gotoIappropreateOrWrongDetails(Z)V
    invoke-static {v0, v1}, Lcom/waze/reports/EditPlaceFlowActivity;->access$8(Lcom/waze/reports/EditPlaceFlowActivity;Z)V

    goto :goto_0

    .line 433
    :pswitch_5
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$4;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #calls: Lcom/waze/reports/EditPlaceFlowActivity;->gotoFlagResidential()V
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFlowActivity;->access$9(Lcom/waze/reports/EditPlaceFlowActivity;)V

    goto :goto_0

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
