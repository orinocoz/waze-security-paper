.class Lcom/waze/NativeManager$182;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->asrListenCallback(J[Ljava/lang/Object;[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$callback:J

.field private final synthetic val$confidence:[F

.field private final synthetic val$voiceResult:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;J[Ljava/lang/Object;[F)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$182;->this$0:Lcom/waze/NativeManager;

    iput-wide p2, p0, Lcom/waze/NativeManager$182;->val$callback:J

    iput-object p4, p0, Lcom/waze/NativeManager$182;->val$voiceResult:[Ljava/lang/Object;

    iput-object p5, p0, Lcom/waze/NativeManager$182;->val$confidence:[F

    .line 5434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 5437
    iget-object v0, p0, Lcom/waze/NativeManager$182;->this$0:Lcom/waze/NativeManager;

    iget-wide v1, p0, Lcom/waze/NativeManager$182;->val$callback:J

    iget-object v3, p0, Lcom/waze/NativeManager$182;->val$voiceResult:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/waze/NativeManager$182;->val$confidence:[F

    #calls: Lcom/waze/NativeManager;->asrListenCallbackNTV(J[Ljava/lang/Object;[F)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/waze/NativeManager;->access$104(Lcom/waze/NativeManager;J[Ljava/lang/Object;[F)V

    .line 5438
    return-void
.end method
