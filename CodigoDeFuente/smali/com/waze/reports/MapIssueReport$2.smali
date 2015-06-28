.class Lcom/waze/reports/MapIssueReport$2;
.super Ljava/lang/Object;
.source "MapIssueReport.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/MapIssueReport;->initLayout()V
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
.field final synthetic this$0:Lcom/waze/reports/MapIssueReport;

.field private final synthetic val$mapIssueList:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/waze/reports/MapIssueReport;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/MapIssueReport$2;->this$0:Lcom/waze/reports/MapIssueReport;

    iput-object p2, p0, Lcom/waze/reports/MapIssueReport$2;->val$mapIssueList:Landroid/widget/ListView;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 110
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/waze/reports/MapIssueReport$2;->this$0:Lcom/waze/reports/MapIssueReport;

    #getter for: Lcom/waze/reports/MapIssueReport;->mapIssueAdapter:Lcom/waze/reports/MapIssueAdapter;
    invoke-static {v0}, Lcom/waze/reports/MapIssueReport;->access$4(Lcom/waze/reports/MapIssueReport;)Lcom/waze/reports/MapIssueAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/waze/reports/MapIssueAdapter;->setSelected(I)V

    .line 111
    iget-object v0, p0, Lcom/waze/reports/MapIssueReport$2;->val$mapIssueList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 112
    return-void
.end method
