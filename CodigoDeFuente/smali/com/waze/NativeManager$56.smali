.class Lcom/waze/NativeManager$56;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->ClearClosureObject()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$56;->this$0:Lcom/waze/NativeManager;

    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/waze/NativeManager$56;->this$0:Lcom/waze/NativeManager;

    #calls: Lcom/waze/NativeManager;->ClearClosureObjectNTV()V
    invoke-static {v0}, Lcom/waze/NativeManager;->access$65(Lcom/waze/NativeManager;)V

    .line 934
    return-void
.end method