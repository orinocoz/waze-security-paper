.class Lcom/waze/NavBarManager$20;
.super Ljava/lang/Object;
.source "NavBarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NavBarManager;->setFriendsNum(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NavBarManager;

.field private final synthetic val$num:I


# direct methods
.method constructor <init>(Lcom/waze/NavBarManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NavBarManager$20;->this$0:Lcom/waze/NavBarManager;

    iput p2, p0, Lcom/waze/NavBarManager$20;->val$num:I

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/waze/NavBarManager$20;->this$0:Lcom/waze/NavBarManager;

    #calls: Lcom/waze/NavBarManager;->isBottomBarReady()Z
    invoke-static {v0}, Lcom/waze/NavBarManager;->access$12(Lcom/waze/NavBarManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-static {}, Lcom/waze/NavBarManager;->access$2()Lcom/waze/navbar/NavBar;

    move-result-object v0

    iget v1, p0, Lcom/waze/NavBarManager$20;->val$num:I

    invoke-virtual {v0, v1}, Lcom/waze/navbar/NavBar;->setFriendsNum(I)V

    .line 330
    :cond_0
    return-void
.end method
