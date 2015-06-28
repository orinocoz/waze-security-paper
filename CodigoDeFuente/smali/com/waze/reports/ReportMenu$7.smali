.class Lcom/waze/reports/ReportMenu$7;
.super Ljava/lang/Object;
.source "ReportMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/ReportMenu;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/ReportMenu;


# direct methods
.method constructor <init>(Lcom/waze/reports/ReportMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/ReportMenu$7;->this$0:Lcom/waze/reports/ReportMenu;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 231
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    .line 232
    .local v0, nativeManager:Lcom/waze/navigate/DriveToNativeManager;
    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->searchNearbyStations()V

    .line 233
    iget-object v1, p0, Lcom/waze/reports/ReportMenu$7;->this$0:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v1}, Lcom/waze/reports/ReportMenu;->close()V

    .line 234
    return-void
.end method
