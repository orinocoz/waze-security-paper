.class Lcom/waze/rtalerts/RTAlertsList$1;
.super Ljava/lang/Object;
.source "RTAlertsList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/rtalerts/RTAlertsList;
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
.field final synthetic this$0:Lcom/waze/rtalerts/RTAlertsList;


# direct methods
.method constructor <init>(Lcom/waze/rtalerts/RTAlertsList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsList$1;->this$0:Lcom/waze/rtalerts/RTAlertsList;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
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
    .line 142
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/waze/rtalerts/RTAlertsListAdapter;

    .line 143
    .local v0, adapter:Lcom/waze/rtalerts/RTAlertsListAdapter;
    invoke-virtual {v0, p3}, Lcom/waze/rtalerts/RTAlertsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/waze/rtalerts/RTAlertsAlertData;

    invoke-static {v2}, Lcom/waze/rtalerts/RTAlertsList;->access$0(Lcom/waze/rtalerts/RTAlertsAlertData;)V

    .line 144
    invoke-static {}, Lcom/waze/rtalerts/RTAlertsList;->access$1()Lcom/waze/rtalerts/RTAlertsAlertData;

    move-result-object v2

    iget v2, v2, Lcom/waze/rtalerts/RTAlertsAlertData;->mNumComments:I

    if-lez v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/waze/rtalerts/RTAlertsList$1;->this$0:Lcom/waze/rtalerts/RTAlertsList;

    invoke-static {}, Lcom/waze/rtalerts/RTAlertsList;->access$1()Lcom/waze/rtalerts/RTAlertsAlertData;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/waze/rtalerts/RTAlertsComments;->show(Landroid/app/Activity;Lcom/waze/rtalerts/RTAlertsAlertData;)V

    .line 155
    :goto_0
    return-void

    .line 150
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v1, data:Landroid/content/Intent;
    const-string v2, "PopUp alert id"

    invoke-static {}, Lcom/waze/rtalerts/RTAlertsList;->access$1()Lcom/waze/rtalerts/RTAlertsAlertData;

    move-result-object v3

    iget v3, v3, Lcom/waze/rtalerts/RTAlertsAlertData;->mID:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    iget-object v2, p0, Lcom/waze/rtalerts/RTAlertsList$1;->this$0:Lcom/waze/rtalerts/RTAlertsList;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3, v1}, Lcom/waze/rtalerts/RTAlertsList;->setResult(ILandroid/content/Intent;)V

    .line 153
    iget-object v2, p0, Lcom/waze/rtalerts/RTAlertsList$1;->this$0:Lcom/waze/rtalerts/RTAlertsList;

    invoke-virtual {v2}, Lcom/waze/rtalerts/RTAlertsList;->finish()V

    goto :goto_0
.end method
