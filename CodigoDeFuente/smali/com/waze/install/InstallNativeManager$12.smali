.class Lcom/waze/install/InstallNativeManager$12;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "InstallNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/install/InstallNativeManager;->getVideoUrl(ZIILcom/waze/install/InstallNativeManager$VideoUrlListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/install/InstallNativeManager;

.field url:Ljava/lang/String;

.field private final synthetic val$height:I

.field private final synthetic val$isUpgrade:Z

.field private final synthetic val$listener:Lcom/waze/install/InstallNativeManager$VideoUrlListener;

.field private final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/waze/install/InstallNativeManager;ZIILcom/waze/install/InstallNativeManager$VideoUrlListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/install/InstallNativeManager$12;->this$0:Lcom/waze/install/InstallNativeManager;

    iput-boolean p2, p0, Lcom/waze/install/InstallNativeManager$12;->val$isUpgrade:Z

    iput p3, p0, Lcom/waze/install/InstallNativeManager$12;->val$width:I

    iput p4, p0, Lcom/waze/install/InstallNativeManager$12;->val$height:I

    iput-object p5, p0, Lcom/waze/install/InstallNativeManager$12;->val$listener:Lcom/waze/install/InstallNativeManager$VideoUrlListener;

    .line 360
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/install/InstallNativeManager$12;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/waze/install/InstallNativeManager$12;->val$listener:Lcom/waze/install/InstallNativeManager$VideoUrlListener;

    iget-object v1, p0, Lcom/waze/install/InstallNativeManager$12;->url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/waze/install/InstallNativeManager$VideoUrlListener;->onComplete(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public event()V
    .locals 4

    .prologue
    .line 364
    iget-object v0, p0, Lcom/waze/install/InstallNativeManager$12;->this$0:Lcom/waze/install/InstallNativeManager;

    iget-boolean v1, p0, Lcom/waze/install/InstallNativeManager$12;->val$isUpgrade:Z

    iget v2, p0, Lcom/waze/install/InstallNativeManager$12;->val$width:I

    iget v3, p0, Lcom/waze/install/InstallNativeManager$12;->val$height:I

    #calls: Lcom/waze/install/InstallNativeManager;->getVideoUrlNTV(ZII)Ljava/lang/String;
    invoke-static {v0, v1, v2, v3}, Lcom/waze/install/InstallNativeManager;->access$8(Lcom/waze/install/InstallNativeManager;ZII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/install/InstallNativeManager$12;->url:Ljava/lang/String;

    .line 365
    return-void
.end method
