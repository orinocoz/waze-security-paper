.class Lcom/waze/reports/MapIssueReport$3;
.super Ljava/lang/Object;
.source "MapIssueReport.java"

# interfaces
.implements Lcom/waze/rtalerts/RTAlertsNativeManager$MapProblemsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/MapIssueReport;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
    iput-object p1, p0, Lcom/waze/reports/MapIssueReport$3;->this$0:Lcom/waze/reports/MapIssueReport;

    iput-object p2, p0, Lcom/waze/reports/MapIssueReport$3;->val$mapIssueList:Landroid/widget/ListView;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([Lcom/waze/rtalerts/MapProblem;)V
    .locals 1
    .parameter "problems"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/waze/reports/MapIssueReport$3;->this$0:Lcom/waze/reports/MapIssueReport;

    #getter for: Lcom/waze/reports/MapIssueReport;->mapIssueAdapter:Lcom/waze/reports/MapIssueAdapter;
    invoke-static {v0}, Lcom/waze/reports/MapIssueReport;->access$4(Lcom/waze/reports/MapIssueReport;)Lcom/waze/reports/MapIssueAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/waze/reports/MapIssueAdapter;->setProblems([Lcom/waze/rtalerts/MapProblem;)V

    .line 119
    iget-object v0, p0, Lcom/waze/reports/MapIssueReport$3;->val$mapIssueList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 120
    return-void
.end method
