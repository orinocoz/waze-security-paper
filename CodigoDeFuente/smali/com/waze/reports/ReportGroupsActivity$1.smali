.class Lcom/waze/reports/ReportGroupsActivity$1;
.super Ljava/lang/Object;
.source "ReportGroupsActivity.java"

# interfaces
.implements Lcom/waze/mywaze/MyWazeNativeManager$GetGroupsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/ReportGroupsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/ReportGroupsActivity;

.field private final synthetic val$adapter:Lcom/waze/reports/ReportGroupAdapter;

.field private final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/waze/reports/ReportGroupsActivity;Lcom/waze/reports/ReportGroupAdapter;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/ReportGroupsActivity$1;->this$0:Lcom/waze/reports/ReportGroupsActivity;

    iput-object p2, p0, Lcom/waze/reports/ReportGroupsActivity$1;->val$adapter:Lcom/waze/reports/ReportGroupAdapter;

    iput-object p3, p0, Lcom/waze/reports/ReportGroupsActivity$1;->val$listView:Landroid/widget/ListView;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([Lcom/waze/mywaze/Group;)V
    .locals 1
    .parameter "groups"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/waze/reports/ReportGroupsActivity$1;->this$0:Lcom/waze/reports/ReportGroupsActivity;

    iput-object p1, v0, Lcom/waze/reports/ReportGroupsActivity;->groups:[Lcom/waze/mywaze/Group;

    .line 36
    iget-object v0, p0, Lcom/waze/reports/ReportGroupsActivity$1;->val$adapter:Lcom/waze/reports/ReportGroupAdapter;

    invoke-virtual {v0, p1}, Lcom/waze/reports/ReportGroupAdapter;->setGroups([Lcom/waze/mywaze/Group;)V

    .line 37
    iget-object v0, p0, Lcom/waze/reports/ReportGroupsActivity$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 38
    return-void
.end method
