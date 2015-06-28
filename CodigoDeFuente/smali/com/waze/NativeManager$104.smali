.class Lcom/waze/NativeManager$104;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->updateDetailsPopup(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$x:I

.field private final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$104;->this$0:Lcom/waze/NativeManager;

    iput p2, p0, Lcom/waze/NativeManager$104;->val$x:I

    iput p3, p0, Lcom/waze/NativeManager$104;->val$y:I

    .line 2175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2178
    invoke-static {}, Lcom/waze/AppService;->getActiveMapViewWrapper()Lcom/waze/MapViewWrapper;

    move-result-object v0

    .line 2179
    .local v0, mapViewWrapper:Lcom/waze/MapViewWrapper;
    if-eqz v0, :cond_0

    .line 2180
    iget v1, p0, Lcom/waze/NativeManager$104;->val$x:I

    iget v2, p0, Lcom/waze/NativeManager$104;->val$y:I

    invoke-virtual {v0, v1, v2}, Lcom/waze/MapViewWrapper;->updateDetailsPopup(II)V

    .line 2184
    :goto_0
    return-void

    .line 2182
    :cond_0
    invoke-static {p0}, Lcom/waze/MainActivity;->registerOnResumeEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
