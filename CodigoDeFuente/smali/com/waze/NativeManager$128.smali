.class Lcom/waze/NativeManager$128;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->unsetLimitCenter(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$bAvoiderPin:Z


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$128;->this$0:Lcom/waze/NativeManager;

    iput-boolean p2, p0, Lcom/waze/NativeManager$128;->val$bAvoiderPin:Z

    .line 2700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2703
    iget-object v0, p0, Lcom/waze/NativeManager$128;->this$0:Lcom/waze/NativeManager;

    iget-boolean v1, p0, Lcom/waze/NativeManager$128;->val$bAvoiderPin:Z

    #calls: Lcom/waze/NativeManager;->UnsetLimitCenterNTV(Z)V
    invoke-static {v0, v1}, Lcom/waze/NativeManager;->access$78(Lcom/waze/NativeManager;Z)V

    .line 2704
    return-void
.end method