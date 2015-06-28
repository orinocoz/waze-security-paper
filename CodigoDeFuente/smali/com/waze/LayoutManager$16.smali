.class Lcom/waze/LayoutManager$16;
.super Ljava/lang/Object;
.source "LayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/LayoutManager;->RunDotOnAnimation(Landroid/widget/ImageView;[I)V
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
    iput-object p1, p0, Lcom/waze/LayoutManager$16;->this$0:Lcom/waze/LayoutManager;

    iput-object p2, p0, Lcom/waze/LayoutManager$16;->val$ImagesId:[I

    iput-object p3, p0, Lcom/waze/LayoutManager$16;->val$image:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/waze/LayoutManager$16;->val$hn:Landroid/os/Handler;

    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/waze/LayoutManager$16;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->mDotsAnimationOnCount:I
    invoke-static {v0}, Lcom/waze/LayoutManager;->access$20(Lcom/waze/LayoutManager;)I

    move-result v0

    iget-object v1, p0, Lcom/waze/LayoutManager$16;->val$ImagesId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/waze/LayoutManager$16;->val$image:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/waze/LayoutManager$16;->val$ImagesId:[I

    iget-object v2, p0, Lcom/waze/LayoutManager$16;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->mDotsAnimationOnCount:I
    invoke-static {v2}, Lcom/waze/LayoutManager;->access$20(Lcom/waze/LayoutManager;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1014
    iget-object v0, p0, Lcom/waze/LayoutManager$16;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->mDotsAnimationOnCount:I
    invoke-static {v0}, Lcom/waze/LayoutManager;->access$20(Lcom/waze/LayoutManager;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/waze/LayoutManager;->mDotsAnimationOnCount:I
    invoke-static {v0, v1}, Lcom/waze/LayoutManager;->access$21(Lcom/waze/LayoutManager;I)V

    .line 1015
    iget-object v0, p0, Lcom/waze/LayoutManager$16;->val$hn:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1019
    :goto_0
    return-void

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/waze/LayoutManager$16;->this$0:Lcom/waze/LayoutManager;

    const/4 v1, 0x0

    #setter for: Lcom/waze/LayoutManager;->mDotsAnimationOnCount:I
    invoke-static {v0, v1}, Lcom/waze/LayoutManager;->access$21(Lcom/waze/LayoutManager;I)V

    goto :goto_0
.end method
