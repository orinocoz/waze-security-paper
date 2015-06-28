.class Lcom/waze/install/InstallNativeManager$5$1;
.super Ljava/lang/Object;
.source "InstallNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/install/InstallNativeManager$5;->event()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/install/InstallNativeManager$5;

.field private final synthetic val$selection:I


# direct methods
.method constructor <init>(Lcom/waze/install/InstallNativeManager$5;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/install/InstallNativeManager$5$1;->this$1:Lcom/waze/install/InstallNativeManager$5;

    iput p2, p0, Lcom/waze/install/InstallNativeManager$5$1;->val$selection:I

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/waze/install/InstallNativeManager$5$1;->this$1:Lcom/waze/install/InstallNativeManager$5;

    #getter for: Lcom/waze/install/InstallNativeManager$5;->this$0:Lcom/waze/install/InstallNativeManager;
    invoke-static {v0}, Lcom/waze/install/InstallNativeManager$5;->access$0(Lcom/waze/install/InstallNativeManager$5;)Lcom/waze/install/InstallNativeManager;

    move-result-object v0

    iget v1, p0, Lcom/waze/install/InstallNativeManager$5$1;->val$selection:I

    #calls: Lcom/waze/install/InstallNativeManager;->termsOfUseResponseNTV(I)V
    invoke-static {v0, v1}, Lcom/waze/install/InstallNativeManager;->access$2(Lcom/waze/install/InstallNativeManager;I)V

    .line 167
    return-void
.end method
