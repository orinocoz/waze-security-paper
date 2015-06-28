.class Lcom/waze/LayoutManager$17;
.super Ljava/lang/Object;
.source "LayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/LayoutManager;->RunDotOffAnimation(Landroid/widget/ImageView;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/LayoutManager;

.field private final synthetic val$ImagesId:[I

.field private final synthetic val$hn:Landroid/os/Handler;

.field private final synthetic val$image:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/waze/LayoutManager;[ILandroid/widget/ImageView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/LayoutManager$17;->this$0:Lcom/waze/LayoutManager;

    iput-object p2, p0, Lcom/waze/LayoutManager$17;->val$ImagesId:[I

    iput-object p3, p0, Lcom/waze/LayoutManager$17;->val$image:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/waze/LayoutManager$17;->val$hn:Landroid/os/Handler;

    .line 1026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/waze/LayoutManager$17;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->mDotsAnimationOffCount:I
    invoke-static {v0}, Lcom/waze/LayoutManager;->access$22(Lcom/waze/LayoutManager;)I

    move-result v0

    iget-object v1, p0, Lcom/waze/LayoutManager$17;->val$ImagesId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/waze/LayoutManager$17;->val$image:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/waze/LayoutManager$17;->val$ImagesId:[I

    iget-object v2, p0, Lcom/waze/LayoutManager$17;->val$ImagesId:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/waze/LayoutManager$17;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->mDotsAnimationOffCount:I
    invoke-static {v3}, Lcom/waze/LayoutManager;->access$22(Lcom/waze/LayoutManager;)I

    move-result v3

    sub-int/2addr v2, v3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1030
    iget-object v0, p0, Lcom/waze/LayoutManager$17;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->mDotsAnimationOffCount:I
    invoke-static {v0}, Lcom/waze/LayoutManager;->access$22(Lcom/waze/LayoutManager;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/waze/LayoutManager;->mDotsAnimationOffCount:I
    invoke-static {v0, v1}, Lcom/waze/LayoutManager;->access$23(Lcom/waze/LayoutManager;I)V

    .line 1031
    iget-object v0, p0, Lcom/waze/LayoutManager$17;->val$hn:Landroid/os/Handler;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1035
    :goto_0
    return-void

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/waze/LayoutManager$17;->this$0:Lcom/waze/LayoutManager;

    const/4 v1, 0x0

    #setter for: Lcom/waze/LayoutManager;->mDotsAnimationOffCount:I
    invoke-static {v0, v1}, Lcom/waze/LayoutManager;->access$23(Lcom/waze/LayoutManager;I)V

    goto :goto_0
.end method
