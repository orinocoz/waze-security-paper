.class Lcom/waze/mywaze/social/FoursquareListActivity$1;
.super Ljava/lang/Object;
.source "FoursquareListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/social/FoursquareListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/social/FoursquareListActivity;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/social/FoursquareListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/social/FoursquareListActivity$1;->this$0:Lcom/waze/mywaze/social/FoursquareListActivity;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/waze/mywaze/social/FoursquareListActivity$1;->this$0:Lcom/waze/mywaze/social/FoursquareListActivity;

    #getter for: Lcom/waze/mywaze/social/FoursquareListActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;
    invoke-static {v0}, Lcom/waze/mywaze/social/FoursquareListActivity;->access$0(Lcom/waze/mywaze/social/FoursquareListActivity;)Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/waze/mywaze/MyWazeNativeManager;->selectFoursquareVenue(I)V

    .line 45
    return-void
.end method
