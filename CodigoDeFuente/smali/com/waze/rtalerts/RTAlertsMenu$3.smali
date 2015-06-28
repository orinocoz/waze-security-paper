.class Lcom/waze/rtalerts/RTAlertsMenu$3;
.super Ljava/lang/Object;
.source "RTAlertsMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/rtalerts/RTAlertsMenu;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/waze/rtalerts/RTAlertsMenu;

.field private final synthetic val$adapter:Lcom/waze/rtalerts/RTAlertsMenuAdapter;


# direct methods
.method constructor <init>(Lcom/waze/rtalerts/RTAlertsMenu;Lcom/waze/rtalerts/RTAlertsMenuAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsMenu$3;->this$0:Lcom/waze/rtalerts/RTAlertsMenu;

    iput-object p2, p0, Lcom/waze/rtalerts/RTAlertsMenu$3;->val$adapter:Lcom/waze/rtalerts/RTAlertsMenuAdapter;

    .line 75
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
    .line 78
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/waze/rtalerts/RTAlertsMenu$3;->val$adapter:Lcom/waze/rtalerts/RTAlertsMenuAdapter;

    invoke-virtual {v2, p3}, Lcom/waze/rtalerts/RTAlertsMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowData;

    .line 79
    .local v1, row:Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowData;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/waze/rtalerts/RTAlertsMenu$3;->this$0:Lcom/waze/rtalerts/RTAlertsMenu;

    const-class v3, Lcom/waze/rtalerts/RTAlertsList;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "Type Id"

    iget v3, v1, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowData;->mId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    const-string v2, "Type Name"

    iget-object v3, v1, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowData;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v2, p0, Lcom/waze/rtalerts/RTAlertsMenu$3;->this$0:Lcom/waze/rtalerts/RTAlertsMenu;

    const v3, 0x8005

    invoke-virtual {v2, v0, v3}, Lcom/waze/rtalerts/RTAlertsMenu;->startActivityForResult(Landroid/content/Intent;I)V

    .line 83
    return-void
.end method
