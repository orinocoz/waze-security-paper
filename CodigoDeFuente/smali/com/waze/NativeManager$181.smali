.class Lcom/waze/NativeManager$181;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->openEditTextDialog(IJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$callbackLong:J

.field private final synthetic val$contextLong:J

.field private final synthetic val$displayStringInt:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;IJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$181;->this$0:Lcom/waze/NativeManager;

    iput p2, p0, Lcom/waze/NativeManager$181;->val$displayStringInt:I

    iput-wide p3, p0, Lcom/waze/NativeManager$181;->val$callbackLong:J

    iput-wide p5, p0, Lcom/waze/NativeManager$181;->val$contextLong:J

    .line 5420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 5422
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 5423
    .local v0, mainActivity:Lcom/waze/MainActivity;
    if-nez v0, :cond_0

    .line 5428
    :goto_0
    return-void

    .line 5426
    :cond_0
    iget v1, p0, Lcom/waze/NativeManager$181;->val$displayStringInt:I

    .line 5427
    iget-wide v2, p0, Lcom/waze/NativeManager$181;->val$callbackLong:J

    iget-wide v4, p0, Lcom/waze/NativeManager$181;->val$contextLong:J

    .line 5426
    invoke-virtual/range {v0 .. v5}, Lcom/waze/MainActivity;->startEditTextDialog(IJJ)V

    goto :goto_0
.end method
