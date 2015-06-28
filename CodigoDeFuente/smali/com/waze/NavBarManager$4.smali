.class Lcom/waze/NavBarManager$4;
.super Ljava/lang/Object;
.source "NavBarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NavBarManager;->set_mode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NavBarManager;

.field private final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/waze/NavBarManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NavBarManager$4;->this$0:Lcom/waze/NavBarManager;

    iput p2, p0, Lcom/waze/NavBarManager$4;->val$mode:I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lcom/waze/NavBarManager$4;->val$mode:I

    if-eqz v0, :cond_2

    .line 85
    invoke-static {}, Lcom/waze/NavBarManager;->access$2()Lcom/waze/navbar/NavBar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/waze/NavBarManager$4;->this$0:Lcom/waze/NavBarManager;

    #getter for: Lcom/waze/NavBarManager;->layoutManager:Lcom/waze/LayoutManager;
    invoke-static {v0}, Lcom/waze/NavBarManager;->access$3(Lcom/waze/NavBarManager;)Lcom/waze/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->createNavBar()Lcom/waze/navbar/NavBar;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/NavBarManager;->access$4(Lcom/waze/navbar/NavBar;)V

    .line 87
    invoke-static {}, Lcom/waze/NavBarManager;->access$2()Lcom/waze/navbar/NavBar;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/NavBarManager$4;->this$0:Lcom/waze/NavBarManager;

    #getter for: Lcom/waze/NavBarManager;->mDriveOnLeft:Z
    invoke-static {v1}, Lcom/waze/NavBarManager;->access$5(Lcom/waze/NavBarManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/waze/navbar/NavBar;->setDrivingDirection(Z)V

    .line 88
    invoke-static {}, Lcom/waze/NavBarManager;->access$2()Lcom/waze/navbar/NavBar;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/NavBarManager$4;->this$0:Lcom/waze/NavBarManager;

    #getter for: Lcom/waze/NavBarManager;->mNightSkin:Z
    invoke-static {v1}, Lcom/waze/NavBarManager;->access$6(Lcom/waze/NavBarManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/waze/navbar/NavBar;->setSkin(Z)V

    .line 90
    :cond_0
    invoke-static {}, Lcom/waze/NavBarManager;->access$2()Lcom/waze/navbar/NavBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/navbar/NavBar;->clear()V

    .line 96
    :cond_1
    :goto_0
    return-void

    .line 92
    :cond_2
    invoke-static {}, Lcom/waze/NavBarManager;->access$2()Lcom/waze/navbar/NavBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    invoke-static {}, Lcom/waze/NavBarManager;->access$2()Lcom/waze/navbar/NavBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/navbar/NavBar;->hide()V

    goto :goto_0
.end method
