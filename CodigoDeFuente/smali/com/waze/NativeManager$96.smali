.class Lcom/waze/NativeManager$96;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->showTrafficDetectionPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$isClosureEnabled:Z

.field private final synthetic val$isFoursquareEnabled:Z

.field private final synthetic val$isRandomUser:Z


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;ZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$96;->this$0:Lcom/waze/NativeManager;

    iput-boolean p2, p0, Lcom/waze/NativeManager$96;->val$isRandomUser:Z

    iput-boolean p3, p0, Lcom/waze/NativeManager$96;->val$isFoursquareEnabled:Z

    iput-boolean p4, p0, Lcom/waze/NativeManager$96;->val$isClosureEnabled:Z

    .line 2013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2015
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 2016
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-eqz v1, :cond_1

    .line 2017
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 2018
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-nez v0, :cond_0

    .line 2026
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :goto_0
    return-void

    .line 2021
    .restart local v0       #layoutMgr:Lcom/waze/LayoutManager;
    :cond_0
    iget-boolean v2, p0, Lcom/waze/NativeManager$96;->val$isRandomUser:Z

    iget-boolean v3, p0, Lcom/waze/NativeManager$96;->val$isFoursquareEnabled:Z

    iget-boolean v4, p0, Lcom/waze/NativeManager$96;->val$isClosureEnabled:Z

    invoke-virtual {v0, v2, v3, v4}, Lcom/waze/LayoutManager;->showTrafficDetectionPopup(ZZZ)V

    goto :goto_0

    .line 2023
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :cond_1
    const-string v2, "WAZE"

    .line 2024
    const-string v3, "Cannot open Traffic Detetcion Popup. Main activity is not available"

    .line 2023
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
