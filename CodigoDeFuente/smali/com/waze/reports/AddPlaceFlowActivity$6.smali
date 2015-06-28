.class Lcom/waze/reports/AddPlaceFlowActivity$6;
.super Ljava/lang/Object;
.source "AddPlaceFlowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/AddPlaceFlowActivity;->sayThankYou(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/AddPlaceFlowActivity;


# direct methods
.method constructor <init>(Lcom/waze/reports/AddPlaceFlowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/AddPlaceFlowActivity$6;->this$0:Lcom/waze/reports/AddPlaceFlowActivity;

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 615
    const-string v0, "PLACES_THANK_YOU_POPUP_CLICKED"

    .line 616
    const-string v1, "CONTINUE|VENUE_ID"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FALSE|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity$6;->this$0:Lcom/waze/reports/AddPlaceFlowActivity;

    #getter for: Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;
    invoke-static {v3}, Lcom/waze/reports/AddPlaceFlowActivity;->access$7(Lcom/waze/reports/AddPlaceFlowActivity;)Lcom/waze/reports/VenueData;

    move-result-object v3

    iget-object v3, v3, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 615
    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity$6;->this$0:Lcom/waze/reports/AddPlaceFlowActivity;

    invoke-virtual {v0}, Lcom/waze/reports/AddPlaceFlowActivity;->allDone()V

    .line 619
    return-void
.end method
