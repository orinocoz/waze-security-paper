.class Lcom/waze/roadrecording/RoadRecordingPopUp$2;
.super Ljava/lang/Object;
.source "RoadRecordingPopUp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/roadrecording/RoadRecordingPopUp;->initDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/roadrecording/RoadRecordingPopUp;

.field private final synthetic val$isRecording:Z


# direct methods
.method constructor <init>(Lcom/waze/roadrecording/RoadRecordingPopUp;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/roadrecording/RoadRecordingPopUp$2;->this$0:Lcom/waze/roadrecording/RoadRecordingPopUp;

    iput-boolean p2, p0, Lcom/waze/roadrecording/RoadRecordingPopUp$2;->val$isRecording:Z

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 80
    new-instance v1, Lcom/waze/roadrecording/RoadRecordingPopUp$2$1;

    invoke-direct {v1, p0}, Lcom/waze/roadrecording/RoadRecordingPopUp$2$1;-><init>(Lcom/waze/roadrecording/RoadRecordingPopUp$2;)V

    invoke-static {v1}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 89
    iget-object v1, p0, Lcom/waze/roadrecording/RoadRecordingPopUp$2;->this$0:Lcom/waze/roadrecording/RoadRecordingPopUp;

    invoke-virtual {v1}, Lcom/waze/roadrecording/RoadRecordingPopUp;->dismiss()V

    .line 90
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    .line 92
    .local v0, mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;
    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->isRandomUserNTV()Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/waze/roadrecording/RoadRecordingPopUp$2;->this$0:Lcom/waze/roadrecording/RoadRecordingPopUp;

    #getter for: Lcom/waze/roadrecording/RoadRecordingPopUp;->mReportMenu:Lcom/waze/reports/ReportMenu;
    invoke-static {v1}, Lcom/waze/roadrecording/RoadRecordingPopUp;->access$0(Lcom/waze/roadrecording/RoadRecordingPopUp;)Lcom/waze/reports/ReportMenu;

    move-result-object v1

    iget-boolean v2, p0, Lcom/waze/roadrecording/RoadRecordingPopUp$2;->val$isRecording:Z

    invoke-virtual {v1, v2}, Lcom/waze/reports/ReportMenu;->setRoadPaving(Z)V

    .line 94
    :cond_0
    return-void
.end method
