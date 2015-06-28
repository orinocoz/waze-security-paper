.class Lcom/waze/NativeManager$64;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->UrlHandler(Ljava/lang/String;Lcom/waze/NativeManager$OnUrlHandleResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$aUrl:Ljava/lang/String;

.field private final synthetic val$onResult:Lcom/waze/NativeManager$OnUrlHandleResult;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/NativeManager$OnUrlHandleResult;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$64;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$64;->val$onResult:Lcom/waze/NativeManager$OnUrlHandleResult;

    iput-object p3, p0, Lcom/waze/NativeManager$64;->val$aUrl:Ljava/lang/String;

    .line 1274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/waze/NativeManager$64;->val$onResult:Lcom/waze/NativeManager$OnUrlHandleResult;

    iget-object v1, p0, Lcom/waze/NativeManager$64;->this$0:Lcom/waze/NativeManager;

    iget-object v2, p0, Lcom/waze/NativeManager$64;->val$aUrl:Ljava/lang/String;

    #calls: Lcom/waze/NativeManager;->UrlHandlerNTV(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/waze/NativeManager;->access$9(Lcom/waze/NativeManager;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/waze/NativeManager$OnUrlHandleResult;->result:Z

    .line 1277
    iget-object v0, p0, Lcom/waze/NativeManager$64;->val$onResult:Lcom/waze/NativeManager$OnUrlHandleResult;

    invoke-virtual {v0}, Lcom/waze/NativeManager$OnUrlHandleResult;->run()V

    .line 1278
    return-void
.end method
