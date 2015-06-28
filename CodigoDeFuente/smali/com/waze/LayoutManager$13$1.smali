.class Lcom/waze/LayoutManager$13$1;
.super Ljava/lang/Object;
.source "LayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/LayoutManager$13;->onAnimationStart(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/LayoutManager$13;


# direct methods
.method constructor <init>(Lcom/waze/LayoutManager$13;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/LayoutManager$13$1;->this$1:Lcom/waze/LayoutManager$13;

    .line 855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/waze/LayoutManager$13$1;->this$1:Lcom/waze/LayoutManager$13;

    #getter for: Lcom/waze/LayoutManager$13;->this$0:Lcom/waze/LayoutManager;
    invoke-static {v0}, Lcom/waze/LayoutManager$13;->access$0(Lcom/waze/LayoutManager$13;)Lcom/waze/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->OpenPopUps()V

    .line 858
    return-void
.end method
