.class Lcom/waze/reports/AddPlaceFlowActivity$5;
.super Ljava/lang/Object;
.source "AddPlaceFlowActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/AddPlaceFlowActivity;->confirmResidential()V
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
    iput-object p1, p0, Lcom/waze/reports/AddPlaceFlowActivity$5;->this$0:Lcom/waze/reports/AddPlaceFlowActivity;

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 515
    if-ne p2, v1, :cond_0

    .line 516
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity$5;->this$0:Lcom/waze/reports/AddPlaceFlowActivity;

    #calls: Lcom/waze/reports/AddPlaceFlowActivity;->moveToNewPlaceFragment(Z)V
    invoke-static {v0, v1}, Lcom/waze/reports/AddPlaceFlowActivity;->access$5(Lcom/waze/reports/AddPlaceFlowActivity;Z)V

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity$5;->this$0:Lcom/waze/reports/AddPlaceFlowActivity;

    const/4 v1, 0x0

    #setter for: Lcom/waze/reports/AddPlaceFlowActivity;->mbConfirmResidential:Z
    invoke-static {v0, v1}, Lcom/waze/reports/AddPlaceFlowActivity;->access$6(Lcom/waze/reports/AddPlaceFlowActivity;Z)V

    .line 519
    return-void
.end method
