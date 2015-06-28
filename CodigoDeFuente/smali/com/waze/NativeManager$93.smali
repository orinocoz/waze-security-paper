.class Lcom/waze/NativeManager$93;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->openThumbsUpPopup(Lcom/waze/rtalerts/RTAlertsThumbsUpData;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$UserImageUrl:Ljava/lang/String;

.field private final synthetic val$nTimeOut:I

.field private final synthetic val$thumbsUpData:Lcom/waze/rtalerts/RTAlertsThumbsUpData;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/rtalerts/RTAlertsThumbsUpData;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$93;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$93;->val$thumbsUpData:Lcom/waze/rtalerts/RTAlertsThumbsUpData;

    iput-object p3, p0, Lcom/waze/NativeManager$93;->val$UserImageUrl:Ljava/lang/String;

    iput p4, p0, Lcom/waze/NativeManager$93;->val$nTimeOut:I

    .line 1954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1956
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 1957
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-eqz v1, :cond_1

    .line 1958
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 1959
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-nez v0, :cond_0

    .line 1967
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :goto_0
    return-void

    .line 1962
    .restart local v0       #layoutMgr:Lcom/waze/LayoutManager;
    :cond_0
    iget-object v2, p0, Lcom/waze/NativeManager$93;->val$thumbsUpData:Lcom/waze/rtalerts/RTAlertsThumbsUpData;

    iget-object v3, p0, Lcom/waze/NativeManager$93;->val$UserImageUrl:Ljava/lang/String;

    iget v4, p0, Lcom/waze/NativeManager$93;->val$nTimeOut:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/waze/LayoutManager;->openThumbsUpPopup(Lcom/waze/rtalerts/RTAlertsThumbsUpData;Ljava/lang/String;I)V

    goto :goto_0

    .line 1964
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :cond_1
    const-string v2, "WAZE"

    .line 1965
    const-string v3, "Cannot open thumbs up Popup. Main activity is not available"

    .line 1964
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
