.class Lcom/waze/NativeManager$86;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->OpenAlertPopup(Lcom/waze/rtalerts/RTAlertsAlertData;IILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$alertData:Lcom/waze/rtalerts/RTAlertsAlertData;

.field private final synthetic val$nTimeout:I

.field private final synthetic val$sUserImageUrl:Ljava/lang/String;

.field private final synthetic val$x:I

.field private final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/rtalerts/RTAlertsAlertData;IILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$86;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$86;->val$alertData:Lcom/waze/rtalerts/RTAlertsAlertData;

    iput p3, p0, Lcom/waze/NativeManager$86;->val$x:I

    iput p4, p0, Lcom/waze/NativeManager$86;->val$y:I

    iput-object p5, p0, Lcom/waze/NativeManager$86;->val$sUserImageUrl:Ljava/lang/String;

    iput p6, p0, Lcom/waze/NativeManager$86;->val$nTimeout:I

    .line 1808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1810
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v6

    .line 1811
    .local v6, mainActivity:Lcom/waze/MainActivity;
    if-eqz v6, :cond_1

    .line 1812
    invoke-virtual {v6}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 1813
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-nez v0, :cond_0

    .line 1821
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :goto_0
    return-void

    .line 1816
    .restart local v0       #layoutMgr:Lcom/waze/LayoutManager;
    :cond_0
    iget-object v1, p0, Lcom/waze/NativeManager$86;->val$alertData:Lcom/waze/rtalerts/RTAlertsAlertData;

    iget v2, p0, Lcom/waze/NativeManager$86;->val$x:I

    iget v3, p0, Lcom/waze/NativeManager$86;->val$y:I

    iget-object v4, p0, Lcom/waze/NativeManager$86;->val$sUserImageUrl:Ljava/lang/String;

    iget v5, p0, Lcom/waze/NativeManager$86;->val$nTimeout:I

    invoke-virtual/range {v0 .. v5}, Lcom/waze/LayoutManager;->openAlertPopup(Lcom/waze/rtalerts/RTAlertsAlertData;IILjava/lang/String;I)V

    goto :goto_0

    .line 1818
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :cond_1
    const-string v1, "WAZE"

    .line 1819
    const-string v2, "Cannot open alert. Main activity is not available"

    .line 1818
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
