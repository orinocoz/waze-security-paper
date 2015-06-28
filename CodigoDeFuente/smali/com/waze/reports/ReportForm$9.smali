.class Lcom/waze/reports/ReportForm$9;
.super Ljava/lang/Object;
.source "ReportForm.java"

# interfaces
.implements Lcom/waze/mywaze/MyWazeNativeManager$ActiveGroupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/ReportForm;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/ReportForm;

.field private final synthetic val$groupsView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/waze/reports/ReportForm;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/ReportForm$9;->this$0:Lcom/waze/reports/ReportForm;

    iput-object p2, p0, Lcom/waze/reports/ReportForm$9;->val$groupsView:Landroid/view/View;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/waze/mywaze/Group;)V
    .locals 3
    .parameter "group"

    .prologue
    .line 289
    if-nez p1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/waze/reports/ReportForm$9;->val$groupsView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 298
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/waze/reports/ReportForm$9;->val$groupsView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget-object v1, p0, Lcom/waze/reports/ReportForm$9;->this$0:Lcom/waze/reports/ReportForm;

    iget-object v1, v1, Lcom/waze/reports/ReportForm;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ALSO_SEND_THIS_REPORT_TOC:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, alsoSendText:Ljava/lang/String;
    iget-object v1, p0, Lcom/waze/reports/ReportForm$9;->this$0:Lcom/waze/reports/ReportForm;

    const v2, 0x7f09056d

    invoke-virtual {v1, v2}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v1, p0, Lcom/waze/reports/ReportForm$9;->this$0:Lcom/waze/reports/ReportForm;

    #calls: Lcom/waze/reports/ReportForm;->setGroupData(Lcom/waze/mywaze/Group;)V
    invoke-static {v1, p1}, Lcom/waze/reports/ReportForm;->access$1(Lcom/waze/reports/ReportForm;Lcom/waze/mywaze/Group;)V

    .line 296
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/waze/mywaze/MyWazeNativeManager;->setSelectedGroup(Lcom/waze/mywaze/Group;)V

    goto :goto_0
.end method
