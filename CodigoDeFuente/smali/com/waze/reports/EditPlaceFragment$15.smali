.class Lcom/waze/reports/EditPlaceFragment$15;
.super Ljava/lang/Object;
.source "EditPlaceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditPlaceFragment;->refreshCategories(Landroid/widget/LinearLayout;)V
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
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFragment$15;->this$0:Lcom/waze/reports/EditPlaceFragment;

    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 807
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$15;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFragment;->access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment$15;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v1}, Lcom/waze/reports/EditPlaceFragment;->access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/reports/VenueData;->categories:[Ljava/lang/String;

    invoke-static {v1}, Lcom/waze/reports/EditPlaceCategoriesHolder;->sortCategoryIdsArray([Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/waze/reports/VenueData;->numCategories:I

    .line 808
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$15;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mOrigVenue:Lcom/waze/reports/VenueData;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFragment;->access$18(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v0

    .line 809
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment$15;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mOrigVenue:Lcom/waze/reports/VenueData;
    invoke-static {v1}, Lcom/waze/reports/EditPlaceFragment;->access$18(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/reports/VenueData;->categories:[Ljava/lang/String;

    invoke-static {v1}, Lcom/waze/reports/EditPlaceCategoriesHolder;->sortCategoryIdsArray([Ljava/lang/String;)I

    move-result v1

    .line 808
    iput v1, v0, Lcom/waze/reports/VenueData;->numCategories:I

    .line 810
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$15;->this$0:Lcom/waze/reports/EditPlaceFragment;

    invoke-virtual {v0}, Lcom/waze/reports/EditPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment$15;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;
    invoke-static {v1}, Lcom/waze/reports/EditPlaceFragment;->access$11(Lcom/waze/reports/EditPlaceFragment;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/waze/utils/EditTextUtils;->closeKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    .line 811
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$15;->this$0:Lcom/waze/reports/EditPlaceFragment;

    invoke-virtual {v0}, Lcom/waze/reports/EditPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/waze/reports/EditPlaceFlowActivity;

    invoke-virtual {v0}, Lcom/waze/reports/EditPlaceFlowActivity;->goToAddCategory()V

    .line 812
    return-void
.end method
