.class Lcom/waze/NavBarManager$8;
.super Ljava/lang/Object;
.source "NavBarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NavBarManager;->set_skin(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NavBarManager;


# direct methods
.method constructor <init>(Lcom/waze/NavBarManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NavBarManager$8;->this$0:Lcom/waze/NavBarManager;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 139
    invoke-static {}, Lcom/waze/NavBarManager;->access$2()Lcom/waze/navbar/NavBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Lcom/waze/NavBarManager;->access$2()Lcom/waze/navbar/NavBar;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/NavBarManager$8;->this$0:Lcom/waze/NavBarManager;

    #getter for: Lcom/waze/NavBarManager;->mNightSkin:Z
    invoke-static {v1}, Lcom/waze/NavBarManager;->access$6(Lcom/waze/NavBarManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/waze/navbar/NavBar;->setSkin(Z)V

    .line 142
    :cond_0
    return-void
.end method
