.class Lcom/waze/NativeManager$192;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->mapProblemsReport()V
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
    iput-object p1, p0, Lcom/waze/NativeManager$192;->this$0:Lcom/waze/NativeManager;

    iput-boolean p2, p0, Lcom/waze/NativeManager$192;->val$isRandomUser:Z

    iput-boolean p3, p0, Lcom/waze/NativeManager$192;->val$isFoursquareEnabled:Z

    iput-boolean p4, p0, Lcom/waze/NativeManager$192;->val$isClosureEnabled:Z

    .line 5616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 5619
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 5620
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-eqz v1, :cond_0

    .line 5621
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 5622
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v0, :cond_0

    .line 5623
    iget-boolean v2, p0, Lcom/waze/NativeManager$192;->val$isRandomUser:Z

    iget-boolean v3, p0, Lcom/waze/NativeManager$192;->val$isFoursquareEnabled:Z

    iget-boolean v4, p0, Lcom/waze/NativeManager$192;->val$isClosureEnabled:Z

    invoke-virtual {v0, v2, v3, v4}, Lcom/waze/LayoutManager;->showMapProblemReport(ZZZ)V

    .line 5626
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :cond_0
    return-void
.end method
