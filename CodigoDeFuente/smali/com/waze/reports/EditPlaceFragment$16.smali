.class Lcom/waze/reports/EditPlaceFragment$16;
.super Ljava/lang/Object;
.source "EditPlaceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditPlaceFragment;->addCategoryLine(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/EditPlaceFragment;

.field private final synthetic val$categoriesPlace:Landroid/widget/LinearLayout;

.field private final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/reports/EditPlaceFragment;Ljava/lang/String;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFragment$16;->this$0:Lcom/waze/reports/EditPlaceFragment;

    iput-object p2, p0, Lcom/waze/reports/EditPlaceFragment$16;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/reports/EditPlaceFragment$16;->val$categoriesPlace:Landroid/widget/LinearLayout;

    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 836
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$16;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFragment;->access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment$16;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waze/reports/VenueData;->removeCategory(Ljava/lang/String;)Z

    .line 837
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$16;->this$0:Lcom/waze/reports/EditPlaceFragment;

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment$16;->val$categoriesPlace:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/waze/reports/EditPlaceFragment;->refreshCategories(Landroid/widget/LinearLayout;)V

    .line 838
    return-void
.end method
