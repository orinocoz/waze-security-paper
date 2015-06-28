.class Lcom/waze/roadrecording/RoadRecordingPopUp$2$1;
.super Ljava/lang/Object;
.source "RoadRecordingPopUp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/roadrecording/RoadRecordingPopUp$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/roadrecording/RoadRecordingPopUp$2;


# direct methods
.method constructor <init>(Lcom/waze/roadrecording/RoadRecordingPopUp$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/roadrecording/RoadRecordingPopUp$2$1;->this$1:Lcom/waze/roadrecording/RoadRecordingPopUp$2;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->EditorTrackToggleNewRoadsNTV()V

    .line 86
    return-void
.end method
