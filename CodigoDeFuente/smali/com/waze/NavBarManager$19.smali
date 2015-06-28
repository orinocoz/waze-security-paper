.class Lcom/waze/NavBarManager$19;
.super Ljava/lang/Object;
.source "NavBarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NavBarManager;->set_followers_num(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NavBarManager;

.field private final synthetic val$maxNum:I

.field private final synthetic val$num:I


# direct methods
.method constructor <init>(Lcom/waze/NavBarManager;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NavBarManager$19;->this$0:Lcom/waze/NavBarManager;

    iput p2, p0, Lcom/waze/NavBarManager$19;->val$num:I

    iput p3, p0, Lcom/waze/NavBarManager$19;->val$maxNum:I

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 281
    invoke-static {}, Lcom/waze/NavBarManager;->access$2()Lcom/waze/navbar/NavBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    invoke-static {}, Lcom/waze/NavBarManager;->access$2()Lcom/waze/navbar/NavBar;

    move-result-object v0

    iget v1, p0, Lcom/waze/NavBarManager$19;->val$num:I

    iget v2, p0, Lcom/waze/NavBarManager$19;->val$maxNum:I

    invoke-virtual {v0, v1, v2}, Lcom/waze/navbar/NavBar;->setFollowersNum(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/waze/NavBarManager$19;->this$0:Lcom/waze/NavBarManager;

    iget v1, p0, Lcom/waze/NavBarManager$19;->val$num:I

    #setter for: Lcom/waze/NavBarManager;->currFollowers:I
    invoke-static {v0, v1}, Lcom/waze/NavBarManager;->access$10(Lcom/waze/NavBarManager;I)V

    .line 284
    iget-object v0, p0, Lcom/waze/NavBarManager$19;->this$0:Lcom/waze/NavBarManager;

    iget v1, p0, Lcom/waze/NavBarManager$19;->val$maxNum:I

    #setter for: Lcom/waze/NavBarManager;->maxFollowers:I
    invoke-static {v0, v1}, Lcom/waze/NavBarManager;->access$11(Lcom/waze/NavBarManager;I)V

    .line 287
    :cond_0
    return-void
.end method
