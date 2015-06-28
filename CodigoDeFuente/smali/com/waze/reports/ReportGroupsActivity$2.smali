.class Lcom/waze/reports/ReportGroupsActivity$2;
.super Ljava/lang/Object;
.source "ReportGroupsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/ReportGroupsActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/waze/reports/ReportGroupsActivity;


# direct methods
.method constructor <init>(Lcom/waze/reports/ReportGroupsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/ReportGroupsActivity$2;->this$0:Lcom/waze/reports/ReportGroupsActivity;

    .line 40
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
    .line 43
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/waze/reports/ReportGroupsActivity$2;->this$0:Lcom/waze/reports/ReportGroupsActivity;

    iget-object v1, v1, Lcom/waze/reports/ReportGroupsActivity;->groups:[Lcom/waze/mywaze/Group;

    if-nez v1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/reports/ReportGroupsActivity$2;->this$0:Lcom/waze/reports/ReportGroupsActivity;

    iget-object v2, v2, Lcom/waze/reports/ReportGroupsActivity;->groups:[Lcom/waze/mywaze/Group;

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Lcom/waze/mywaze/MyWazeNativeManager;->setSelectedGroup(Lcom/waze/mywaze/Group;)V

    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "group"

    iget-object v2, p0, Lcom/waze/reports/ReportGroupsActivity$2;->this$0:Lcom/waze/reports/ReportGroupsActivity;

    iget-object v2, v2, Lcom/waze/reports/ReportGroupsActivity;->groups:[Lcom/waze/mywaze/Group;

    aget-object v2, v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 49
    iget-object v1, p0, Lcom/waze/reports/ReportGroupsActivity$2;->this$0:Lcom/waze/reports/ReportGroupsActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/waze/reports/ReportGroupsActivity;->setResult(ILandroid/content/Intent;)V

    .line 50
    iget-object v1, p0, Lcom/waze/reports/ReportGroupsActivity$2;->this$0:Lcom/waze/reports/ReportGroupsActivity;

    invoke-virtual {v1}, Lcom/waze/reports/ReportGroupsActivity;->finish()V

    goto :goto_0
.end method
