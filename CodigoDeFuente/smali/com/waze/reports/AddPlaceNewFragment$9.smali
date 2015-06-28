.class Lcom/waze/reports/AddPlaceNewFragment$9;
.super Ljava/lang/Object;
.source "AddPlaceNewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/AddPlaceNewFragment;->addCategoryLine(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/AddPlaceNewFragment;

.field private final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/reports/AddPlaceNewFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/AddPlaceNewFragment$9;->this$0:Lcom/waze/reports/AddPlaceNewFragment;

    iput-object p2, p0, Lcom/waze/reports/AddPlaceNewFragment$9;->val$id:Ljava/lang/String;

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment$9;->this$0:Lcom/waze/reports/AddPlaceNewFragment;

    iget-object v0, v0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment$9;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waze/reports/VenueData;->removeCategory(Ljava/lang/String;)Z

    .line 502
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment$9;->this$0:Lcom/waze/reports/AddPlaceNewFragment;

    invoke-virtual {v0}, Lcom/waze/reports/AddPlaceNewFragment;->refreshCategories()V

    .line 503
    return-void
.end method
