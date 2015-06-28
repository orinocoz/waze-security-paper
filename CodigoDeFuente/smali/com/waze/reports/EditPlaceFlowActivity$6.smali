.class Lcom/waze/reports/EditPlaceFlowActivity$6;
.super Ljava/lang/Object;
.source "EditPlaceFlowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditPlaceFlowActivity;->sayThankYou(II)V
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
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFlowActivity$6;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$6;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/waze/reports/EditPlaceFlowActivity;->setResult(I)V

    .line 545
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$6;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    invoke-virtual {v0}, Lcom/waze/reports/EditPlaceFlowActivity;->finish()V

    .line 546
    return-void
.end method
