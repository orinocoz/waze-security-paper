.class Lcom/waze/push/Registrar$1;
.super Lcom/waze/ifs/async/RunnableExecutor;
.source "Registrar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/push/Registrar;->start(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/app/Activity;)V
    .locals 0
    .parameter "$anonymous0"
    .parameter

    .prologue
    .line 1
    iput-object p2, p0, Lcom/waze/push/Registrar$1;->val$context:Landroid/app/Activity;

    .line 61
    invoke-direct {p0, p1}, Lcom/waze/ifs/async/RunnableExecutor;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public event()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/waze/push/Registrar;->instance()Lcom/waze/push/Registrar;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/push/Registrar$1;->val$context:Landroid/app/Activity;

    #setter for: Lcom/waze/push/Registrar;->mContext:Landroid/app/Activity;
    invoke-static {v0, v1}, Lcom/waze/push/Registrar;->access$0(Lcom/waze/push/Registrar;Landroid/app/Activity;)V

    .line 66
    invoke-static {}, Lcom/waze/push/Registrar;->instance()Lcom/waze/push/Registrar;

    move-result-object v0

    #calls: Lcom/waze/push/Registrar;->getConfig()V
    invoke-static {v0}, Lcom/waze/push/Registrar;->access$1(Lcom/waze/push/Registrar;)V

    .line 67
    return-void
.end method
