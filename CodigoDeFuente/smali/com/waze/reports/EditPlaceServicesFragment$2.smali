.class Lcom/waze/reports/EditPlaceServicesFragment$2;
.super Ljava/lang/Object;
.source "EditPlaceServicesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditPlaceServicesFragment;->setUpFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/EditPlaceServicesFragment;


# direct methods
.method constructor <init>(Lcom/waze/reports/EditPlaceServicesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditPlaceServicesFragment$2;->this$0:Lcom/waze/reports/EditPlaceServicesFragment;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 126
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/waze/reports/EditPlaceServicesFragment$2;->this$0:Lcom/waze/reports/EditPlaceServicesFragment;

    #getter for: Lcom/waze/reports/EditPlaceServicesFragment;->mSetServiceIds:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/waze/reports/EditPlaceServicesFragment;->access$1(Lcom/waze/reports/EditPlaceServicesFragment;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    .local v1, servicesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/waze/reports/EditPlaceServicesFragment;->access$2()Lcom/waze/NativeManager$VenueServices;

    move-result-object v2

    iget v2, v2, Lcom/waze/NativeManager$VenueServices;->count:I

    if-lt v0, v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/waze/reports/EditPlaceServicesFragment$2;->this$0:Lcom/waze/reports/EditPlaceServicesFragment;

    invoke-virtual {v2}, Lcom/waze/reports/EditPlaceServicesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/waze/reports/EditPlaceFlowActivity;

    invoke-virtual {v2, v1}, Lcom/waze/reports/EditPlaceFlowActivity;->doneServices(Ljava/util/List;)V

    .line 133
    return-void

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/waze/reports/EditPlaceServicesFragment$2;->this$0:Lcom/waze/reports/EditPlaceServicesFragment;

    #getter for: Lcom/waze/reports/EditPlaceServicesFragment;->mSetServiceIds:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/waze/reports/EditPlaceServicesFragment;->access$1(Lcom/waze/reports/EditPlaceServicesFragment;)Ljava/util/HashSet;

    move-result-object v2

    invoke-static {}, Lcom/waze/reports/EditPlaceServicesFragment;->access$2()Lcom/waze/NativeManager$VenueServices;

    move-result-object v3

    iget-object v3, v3, Lcom/waze/NativeManager$VenueServices;->ids:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    invoke-static {}, Lcom/waze/reports/EditPlaceServicesFragment;->access$2()Lcom/waze/NativeManager$VenueServices;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/NativeManager$VenueServices;->ids:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
