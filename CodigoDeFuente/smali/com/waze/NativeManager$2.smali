.class Lcom/waze/NativeManager$2;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/NativeManager;
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
    iput-object p1, p0, Lcom/waze/NativeManager$2;->this$0:Lcom/waze/NativeManager;

    .line 4044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4047
    iget-object v0, p0, Lcom/waze/NativeManager$2;->this$0:Lcom/waze/NativeManager;

    #calls: Lcom/waze/NativeManager;->AppShutDownNTV()V
    invoke-static {v0}, Lcom/waze/NativeManager;->access$8(Lcom/waze/NativeManager;)V

    .line 4052
    return-void
.end method
