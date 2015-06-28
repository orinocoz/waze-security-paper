.class Lcom/waze/reports/MapIssueReport$1;
.super Ljava/lang/Object;
.source "MapIssueReport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/MapIssueReport;->onSend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/MapIssueReport;


# direct methods
.method constructor <init>(Lcom/waze/reports/MapIssueReport;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/MapIssueReport$1;->this$0:Lcom/waze/reports/MapIssueReport;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->EditorTrackToggleNewRoadsNTV()V

    .line 48
    return-void
.end method
