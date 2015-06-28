.class Lcom/waze/roadrecording/RoadRecordingPopUp$1;
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


# direct methods
.method constructor <init>(Lcom/waze/roadrecording/RoadRecordingPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/roadrecording/RoadRecordingPopUp$1;->this$0:Lcom/waze/roadrecording/RoadRecordingPopUp;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/waze/roadrecording/RoadRecordingPopUp$1;->this$0:Lcom/waze/roadrecording/RoadRecordingPopUp;

    invoke-virtual {v0}, Lcom/waze/roadrecording/RoadRecordingPopUp;->dismiss()V

    .line 62
    return-void
.end method
