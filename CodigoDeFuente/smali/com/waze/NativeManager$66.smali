.class Lcom/waze/NativeManager$66;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->openEncouragementScreen(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$callback:J

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;IJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$66;->this$0:Lcom/waze/NativeManager;

    iput p2, p0, Lcom/waze/NativeManager$66;->val$type:I

    iput-wide p3, p0, Lcom/waze/NativeManager$66;->val$callback:J

    .line 1331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1333
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 1334
    .local v0, mainActivity:Lcom/waze/MainActivity;
    if-eqz v0, :cond_0

    .line 1335
    iget v1, p0, Lcom/waze/NativeManager$66;->val$type:I

    iget-wide v2, p0, Lcom/waze/NativeManager$66;->val$callback:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/MainActivity;->openEncouragementScreen(IJ)V

    .line 1337
    :cond_0
    return-void
.end method
