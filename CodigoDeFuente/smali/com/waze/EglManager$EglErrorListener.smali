.class Lcom/waze/EglManager$EglErrorListener;
.super Ljava/lang/Object;
.source "EglManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/EglManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EglErrorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/EglManager;


# direct methods
.method private constructor <init>(Lcom/waze/EglManager;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/waze/EglManager$EglErrorListener;->this$0:Lcom/waze/EglManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/EglManager;Lcom/waze/EglManager$EglErrorListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/waze/EglManager$EglErrorListener;-><init>(Lcom/waze/EglManager;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 358
    invoke-static {}, Lcom/waze/MsgBox;->getInstance()Lcom/waze/MsgBox;

    move-result-object v0

    .line 359
    .local v0, msgBox:Lcom/waze/MsgBox;
    monitor-enter v0

    .line 360
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 359
    monitor-exit v0

    .line 362
    return-void

    .line 359
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
