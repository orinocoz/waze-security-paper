.class Lcom/waze/reports/ClosureMap$2;
.super Lcom/waze/ifs/async/RunnableExecutor;
.source "ClosureMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/reports/ClosureMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/ClosureMap;


# direct methods
.method constructor <init>(Lcom/waze/reports/ClosureMap;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/ClosureMap$2;->this$0:Lcom/waze/reports/ClosureMap;

    .line 217
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public event()V
    .locals 4

    .prologue
    .line 221
    iget-object v0, p0, Lcom/waze/reports/ClosureMap$2;->this$0:Lcom/waze/reports/ClosureMap;

    #getter for: Lcom/waze/reports/ClosureMap;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/reports/ClosureMap;->access$0(Lcom/waze/reports/ClosureMap;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->setRoadClosureMap()V

    .line 222
    iget-object v0, p0, Lcom/waze/reports/ClosureMap$2;->this$0:Lcom/waze/reports/ClosureMap;

    #getter for: Lcom/waze/reports/ClosureMap;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/reports/ClosureMap;->access$2(Lcom/waze/reports/ClosureMap;)Lcom/waze/NativeManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, Lcom/waze/reports/ClosureMap;->access$3()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/NativeManager;->StartClosureObject(ZIZ)V

    .line 223
    return-void
.end method
