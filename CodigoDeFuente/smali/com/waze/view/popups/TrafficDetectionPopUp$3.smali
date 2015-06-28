.class Lcom/waze/view/popups/TrafficDetectionPopUp$3;
.super Ljava/lang/Object;
.source "TrafficDetectionPopUp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/TrafficDetectionPopUp;->onClose()V
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
    iput-object p1, p0, Lcom/waze/view/popups/TrafficDetectionPopUp$3;->this$0:Lcom/waze/view/popups/TrafficDetectionPopUp;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->RealtimeReportTrafficNTV(I)V

    .line 127
    return-void
.end method
