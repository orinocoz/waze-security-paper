.class Lcom/waze/install/InstallNativeManager$5;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "InstallNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/install/InstallNativeManager;->termsOfUseResponse(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/install/InstallNativeManager;

.field private final synthetic val$selection:I


# direct methods
.method constructor <init>(Lcom/waze/install/InstallNativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/install/InstallNativeManager$5;->this$0:Lcom/waze/install/InstallNativeManager;

    iput p2, p0, Lcom/waze/install/InstallNativeManager$5;->val$selection:I

    .line 158
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/install/InstallNativeManager$5;)Lcom/waze/install/InstallNativeManager;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/waze/install/InstallNativeManager$5;->this$0:Lcom/waze/install/InstallNativeManager;

    return-object v0
.end method


# virtual methods
.method public callback()V
    .locals 4

    .prologue
    .line 173
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "termsOfUseResponse callback running in thread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method public event()V
    .locals 4

    .prologue
    .line 161
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "termsOfUseResponse event running in thread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "selection= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/waze/install/InstallNativeManager$5;->val$selection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v0, Lcom/waze/install/InstallNativeManager$5$1;

    iget v1, p0, Lcom/waze/install/InstallNativeManager$5;->val$selection:I

    invoke-direct {v0, p0, v1}, Lcom/waze/install/InstallNativeManager$5$1;-><init>(Lcom/waze/install/InstallNativeManager$5;I)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method
