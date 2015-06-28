.class Lcom/waze/NativeManager$90;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->openPingPopup(Lcom/waze/rtalerts/RTAlertsAlertData;ZLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$alertData:Lcom/waze/rtalerts/RTAlertsAlertData;

.field private final synthetic val$bIsPrivate:Z

.field private final synthetic val$nTimeout:I

.field private final synthetic val$sUserImageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/rtalerts/RTAlertsAlertData;ZLjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$90;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$90;->val$alertData:Lcom/waze/rtalerts/RTAlertsAlertData;

    iput-boolean p3, p0, Lcom/waze/NativeManager$90;->val$bIsPrivate:Z

    iput-object p4, p0, Lcom/waze/NativeManager$90;->val$sUserImageUrl:Ljava/lang/String;

    iput p5, p0, Lcom/waze/NativeManager$90;->val$nTimeout:I

    .line 1897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1899
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 1900
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-eqz v1, :cond_1

    .line 1901
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 1902
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-nez v0, :cond_0

    .line 1911
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :goto_0
    return-void

    .line 1905
    .restart local v0       #layoutMgr:Lcom/waze/LayoutManager;
    :cond_0
    iget-object v2, p0, Lcom/waze/NativeManager$90;->val$alertData:Lcom/waze/rtalerts/RTAlertsAlertData;

    iget-boolean v3, p0, Lcom/waze/NativeManager$90;->val$bIsPrivate:Z

    .line 1906
    iget-object v4, p0, Lcom/waze/NativeManager$90;->val$sUserImageUrl:Ljava/lang/String;

    iget v5, p0, Lcom/waze/NativeManager$90;->val$nTimeout:I

    .line 1905
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/waze/LayoutManager;->openPingPopup(Lcom/waze/rtalerts/RTAlertsAlertData;ZLjava/lang/String;I)V

    goto :goto_0

    .line 1908
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :cond_1
    const-string v2, "WAZE"

    .line 1909
    const-string v3, "Cannot open ping Popup. Main activity is not available"

    .line 1908
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
