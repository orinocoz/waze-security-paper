.class Lcom/waze/NativeManager$51;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->encouragementCloseCallback(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$callback:J


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$51;->this$0:Lcom/waze/NativeManager;

    iput-wide p2, p0, Lcom/waze/NativeManager$51;->val$callback:J

    .line 881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 884
    iget-object v0, p0, Lcom/waze/NativeManager$51;->this$0:Lcom/waze/NativeManager;

    iget-wide v1, p0, Lcom/waze/NativeManager$51;->val$callback:J

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->encouragementCloseCallbackNTV(J)V

    .line 885
    return-void
.end method
