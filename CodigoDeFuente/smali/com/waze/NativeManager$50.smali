.class Lcom/waze/NativeManager$50;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->encouragementCallback(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$50;->this$0:Lcom/waze/NativeManager;

    iput p2, p0, Lcom/waze/NativeManager$50;->val$type:I

    .line 872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 875
    iget-object v0, p0, Lcom/waze/NativeManager$50;->this$0:Lcom/waze/NativeManager;

    iget v1, p0, Lcom/waze/NativeManager$50;->val$type:I

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->encouragementCallbackNTV(I)V

    .line 876
    return-void
.end method
