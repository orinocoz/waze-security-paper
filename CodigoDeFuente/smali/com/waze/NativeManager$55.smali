.class Lcom/waze/NativeManager$55;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->restorePoiFocus()V
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
    iput-object p1, p0, Lcom/waze/NativeManager$55;->this$0:Lcom/waze/NativeManager;

    .line 921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/waze/NativeManager$55;->this$0:Lcom/waze/NativeManager;

    #calls: Lcom/waze/NativeManager;->restorePoiFocusNTV()V
    invoke-static {v0}, Lcom/waze/NativeManager;->access$64(Lcom/waze/NativeManager;)V

    .line 925
    return-void
.end method
