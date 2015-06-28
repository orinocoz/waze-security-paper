.class Lcom/waze/reports/AddPlaceFlowActivity$4$1;
.super Ljava/lang/Object;
.source "AddPlaceFlowActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/AddPlaceFlowActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/reports/AddPlaceFlowActivity$4;


# direct methods
.method constructor <init>(Lcom/waze/reports/AddPlaceFlowActivity$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/AddPlaceFlowActivity$4$1;->this$1:Lcom/waze/reports/AddPlaceFlowActivity$4;

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity$4$1;->this$1:Lcom/waze/reports/AddPlaceFlowActivity$4;

    #getter for: Lcom/waze/reports/AddPlaceFlowActivity$4;->this$0:Lcom/waze/reports/AddPlaceFlowActivity;
    invoke-static {v0}, Lcom/waze/reports/AddPlaceFlowActivity$4;->access$0(Lcom/waze/reports/AddPlaceFlowActivity$4;)Lcom/waze/reports/AddPlaceFlowActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/reports/AddPlaceFlowActivity;->finish()V

    .line 371
    return-void
.end method
