.class Lcom/waze/view/popups/TrafficDetectionPopUp$1;
.super Ljava/lang/Object;
.source "TrafficDetectionPopUp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/TrafficDetectionPopUp;->onYes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/TrafficDetectionPopUp;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/TrafficDetectionPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/TrafficDetectionPopUp$1;->this$0:Lcom/waze/view/popups/TrafficDetectionPopUp;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->RealtimeReportTrafficNTV(I)V

    .line 106
    return-void
.end method
