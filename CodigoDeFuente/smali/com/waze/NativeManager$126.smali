.class Lcom/waze/NativeManager$126;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->setNorthUp(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$126;->this$0:Lcom/waze/NativeManager;

    iput p2, p0, Lcom/waze/NativeManager$126;->val$value:I

    .line 2673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2676
    iget-object v0, p0, Lcom/waze/NativeManager$126;->this$0:Lcom/waze/NativeManager;

    iget v1, p0, Lcom/waze/NativeManager$126;->val$value:I

    #calls: Lcom/waze/NativeManager;->SetNorthUpNTV(I)V
    invoke-static {v0, v1}, Lcom/waze/NativeManager;->access$76(Lcom/waze/NativeManager;I)V

    .line 2677
    return-void
.end method
