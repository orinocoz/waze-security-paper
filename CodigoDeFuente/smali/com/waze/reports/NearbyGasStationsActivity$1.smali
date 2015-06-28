.class Lcom/waze/reports/NearbyGasStationsActivity$1;
.super Ljava/lang/Object;
.source "NearbyGasStationsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/NearbyGasStationsActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/waze/reports/NearbyGasStationsActivity;


# direct methods
.method constructor <init>(Lcom/waze/reports/NearbyGasStationsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/NearbyGasStationsActivity$1;->this$0:Lcom/waze/reports/NearbyGasStationsActivity;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/reports/NearbyGasStationsActivity$1;->this$0:Lcom/waze/reports/NearbyGasStationsActivity;

    const-class v2, Lcom/waze/reports/UpdatePriceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "index"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    iget-object v1, p0, Lcom/waze/reports/NearbyGasStationsActivity$1;->this$0:Lcom/waze/reports/NearbyGasStationsActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/waze/reports/NearbyGasStationsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 47
    return-void
.end method
