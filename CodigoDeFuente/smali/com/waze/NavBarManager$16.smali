.class Lcom/waze/NavBarManager$16;
.super Ljava/lang/Object;
.source "NavBarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NavBarManager;->set_dist_str(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NavBarManager;

.field private final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NavBarManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NavBarManager$16;->this$0:Lcom/waze/NavBarManager;

    iput-object p2, p0, Lcom/waze/NavBarManager$16;->val$str:Ljava/lang/String;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 242
    invoke-static {}, Lcom/waze/NavBarManager;->access$2()Lcom/waze/navbar/NavBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    invoke-static {}, Lcom/waze/NavBarManager;->access$2()Lcom/waze/navbar/NavBar;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/NavBarManager$16;->val$str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waze/navbar/NavBar;->setDistStr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/waze/NavBarManager$16;->this$0:Lcom/waze/NavBarManager;

    iget-object v1, p0, Lcom/waze/NavBarManager$16;->val$str:Ljava/lang/String;

    #setter for: Lcom/waze/NavBarManager;->bottomDist:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/waze/NavBarManager;->access$7(Lcom/waze/NavBarManager;Ljava/lang/String;)V

    .line 246
    :cond_0
    return-void
.end method
