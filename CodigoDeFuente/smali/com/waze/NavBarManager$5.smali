.class Lcom/waze/NavBarManager$5;
.super Ljava/lang/Object;
.source "NavBarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NavBarManager;->setWaypoint(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NavBarManager;

.field private final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/waze/NavBarManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NavBarManager$5;->this$0:Lcom/waze/NavBarManager;

    iput-boolean p2, p0, Lcom/waze/NavBarManager$5;->val$value:Z

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lcom/waze/NavBarManager;->access$2()Lcom/waze/navbar/NavBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcom/waze/NavBarManager;->access$2()Lcom/waze/navbar/NavBar;

    move-result-object v0

    iget-boolean v1, p0, Lcom/waze/NavBarManager$5;->val$value:Z

    invoke-virtual {v0, v1}, Lcom/waze/navbar/NavBar;->setWaypoint(Z)V

    .line 111
    :cond_0
    return-void
.end method
