.class Lcom/waze/NativeManager$UrlResultRequest;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/NativeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UrlResultRequest"
.end annotation


# instance fields
.field protected handled:Z

.field final synthetic this$0:Lcom/waze/NativeManager;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/waze/NativeManager;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "url"

    .prologue
    .line 1288
    iput-object p1, p0, Lcom/waze/NativeManager$UrlResultRequest;->this$0:Lcom/waze/NativeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/NativeManager$UrlResultRequest;->handled:Z

    .line 1289
    iput-object p2, p0, Lcom/waze/NativeManager$UrlResultRequest;->url:Ljava/lang/String;

    .line 1290
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/waze/NativeManager$UrlResultRequest;->this$0:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/NativeManager$UrlResultRequest;->url:Ljava/lang/String;

    #calls: Lcom/waze/NativeManager;->UrlHandlerNTV(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/waze/NativeManager;->access$9(Lcom/waze/NativeManager;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/waze/NativeManager$UrlResultRequest;->handled:Z

    .line 1294
    iget-object v0, p0, Lcom/waze/NativeManager$UrlResultRequest;->this$0:Lcom/waze/NativeManager;

    #getter for: Lcom/waze/NativeManager;->mUrlHandlerWaiter:Lcom/waze/ifs/async/Waiter;
    invoke-static {v0}, Lcom/waze/NativeManager;->access$10(Lcom/waze/NativeManager;)Lcom/waze/ifs/async/Waiter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/ifs/async/Waiter;->_notify()V

    .line 1295
    return-void
.end method
