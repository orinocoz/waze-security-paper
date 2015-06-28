.class Lcom/waze/reports/EditPlaceFragment$11;
.super Ljava/lang/Object;
.source "EditPlaceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditPlaceFragment;->setUpFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/EditPlaceFragment;


# direct methods
.method constructor <init>(Lcom/waze/reports/EditPlaceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFragment$11;->this$0:Lcom/waze/reports/EditPlaceFragment;

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 625
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$11;->this$0:Lcom/waze/reports/EditPlaceFragment;

    invoke-virtual {v0}, Lcom/waze/reports/EditPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment$11;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;
    invoke-static {v1}, Lcom/waze/reports/EditPlaceFragment;->access$11(Lcom/waze/reports/EditPlaceFragment;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/waze/utils/EditTextUtils;->closeKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    .line 626
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$11;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFragment;->access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v0

    .line 627
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment$11;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v1}, Lcom/waze/reports/EditPlaceFragment;->access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/reports/VenueData;->services:[Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment$11;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v2}, Lcom/waze/reports/EditPlaceFragment;->access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v2

    iget v2, v2, Lcom/waze/reports/VenueData;->numServices:I

    invoke-static {v1, v2}, Lcom/waze/reports/EditPlaceServicesFragment;->sortServiceIdsArray([Ljava/lang/String;I)I

    move-result v1

    .line 626
    iput v1, v0, Lcom/waze/reports/VenueData;->numServices:I

    .line 628
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$11;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mOrigVenue:Lcom/waze/reports/VenueData;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFragment;->access$18(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v0

    .line 629
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment$11;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mOrigVenue:Lcom/waze/reports/VenueData;
    invoke-static {v1}, Lcom/waze/reports/EditPlaceFragment;->access$18(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/reports/VenueData;->services:[Ljava/lang/String;

    .line 630
    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment$11;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mOrigVenue:Lcom/waze/reports/VenueData;
    invoke-static {v2}, Lcom/waze/reports/EditPlaceFragment;->access$18(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v2

    iget v2, v2, Lcom/waze/reports/VenueData;->numServices:I

    .line 629
    invoke-static {v1, v2}, Lcom/waze/reports/EditPlaceServicesFragment;->sortServiceIdsArray([Ljava/lang/String;I)I

    move-result v1

    .line 628
    iput v1, v0, Lcom/waze/reports/VenueData;->numServices:I

    .line 631
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$11;->this$0:Lcom/waze/reports/EditPlaceFragment;

    invoke-virtual {v0}, Lcom/waze/reports/EditPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/waze/reports/EditPlaceFlowActivity;

    invoke-virtual {v0}, Lcom/waze/reports/EditPlaceFlowActivity;->goToServices()V

    .line 632
    return-void
.end method
