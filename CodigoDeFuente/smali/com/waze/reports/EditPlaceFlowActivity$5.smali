.class Lcom/waze/reports/EditPlaceFlowActivity$5;
.super Ljava/lang/Object;
.source "EditPlaceFlowActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditPlaceFlowActivity;->gotoFlagResidential()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/EditPlaceFlowActivity;


# direct methods
.method constructor <init>(Lcom/waze/reports/EditPlaceFlowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFlowActivity$5;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    .line 475
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

    .line 479
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$5;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFlowActivity;->access$0(Lcom/waze/reports/EditPlaceFlowActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity$5;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v1}, Lcom/waze/reports/EditPlaceFlowActivity;->access$2(Lcom/waze/reports/EditPlaceFlowActivity;)Lcom/waze/reports/VenueData;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity$5;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mFlagType:I
    invoke-static {v2}, Lcom/waze/reports/EditPlaceFlowActivity;->access$5(Lcom/waze/reports/EditPlaceFlowActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/waze/NativeManager;->venueFlag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$5;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #calls: Lcom/waze/reports/EditPlaceFlowActivity;->thanksForReport()V
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFlowActivity;->access$10(Lcom/waze/reports/EditPlaceFlowActivity;)V

    .line 483
    :cond_0
    return-void
.end method
