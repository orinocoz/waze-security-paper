.class Lcom/waze/NativeManager$110;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->ShowUpdateGasPricePopup(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$cb:J

.field private final synthetic val$contextcb:J

.field private final synthetic val$layoutMgr:Lcom/waze/LayoutManager;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$110;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$110;->val$layoutMgr:Lcom/waze/LayoutManager;

    iput-wide p3, p0, Lcom/waze/NativeManager$110;->val$cb:J

    iput-wide p5, p0, Lcom/waze/NativeManager$110;->val$contextcb:J

    .line 2415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2417
    iget-object v0, p0, Lcom/waze/NativeManager$110;->val$layoutMgr:Lcom/waze/LayoutManager;

    iget-wide v1, p0, Lcom/waze/NativeManager$110;->val$cb:J

    iget-wide v3, p0, Lcom/waze/NativeManager$110;->val$contextcb:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/waze/LayoutManager;->OpenUpdatePricesPopUp(JJ)V

    .line 2418
    return-void
.end method
