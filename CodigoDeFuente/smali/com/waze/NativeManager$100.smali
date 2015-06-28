.class Lcom/waze/NativeManager$100;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->trafficBarSet(II[I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$current_percent:I

.field private final synthetic val$lengths:[I

.field private final synthetic val$levels:[I

.field private final synthetic val$total_time:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;II[I[I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$100;->this$0:Lcom/waze/NativeManager;

    iput p2, p0, Lcom/waze/NativeManager$100;->val$current_percent:I

    iput p3, p0, Lcom/waze/NativeManager$100;->val$total_time:I

    iput-object p4, p0, Lcom/waze/NativeManager$100;->val$levels:[I

    iput-object p5, p0, Lcom/waze/NativeManager$100;->val$lengths:[I

    .line 2082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2084
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 2085
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-eqz v1, :cond_1

    .line 2086
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 2087
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-nez v0, :cond_0

    .line 2094
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :goto_0
    return-void

    .line 2090
    .restart local v0       #layoutMgr:Lcom/waze/LayoutManager;
    :cond_0
    iget v2, p0, Lcom/waze/NativeManager$100;->val$current_percent:I

    iget v3, p0, Lcom/waze/NativeManager$100;->val$total_time:I

    iget-object v4, p0, Lcom/waze/NativeManager$100;->val$levels:[I

    iget-object v5, p0, Lcom/waze/NativeManager$100;->val$lengths:[I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/waze/LayoutManager;->trafficBarSet(II[I[I)V

    goto :goto_0

    .line 2092
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :cond_1
    const-string v2, "WAZE"

    const-string v3, "Cannot show Traffic Bar. Main activity is not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
