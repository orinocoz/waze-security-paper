.class Lcom/waze/NavBarManager$14;
.super Ljava/lang/Object;
.source "NavBarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NavBarManager;->set_next_distance(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/waze/NavBarManager$14;->this$0:Lcom/waze/NavBarManager;

    iput-object p2, p0, Lcom/waze/NavBarManager$14;->val$str:Ljava/lang/String;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 217
    invoke-static {}, Lcom/waze/NavBarManager;->access$2()Lcom/waze/navbar/NavBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    invoke-static {}, Lcom/waze/NavBarManager;->access$2()Lcom/waze/navbar/NavBar;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/NavBarManager$14;->val$str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waze/navbar/NavBar;->setNextDistance(Ljava/lang/String;)V

    .line 220
    :cond_0
    return-void
.end method
