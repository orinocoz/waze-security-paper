.class Lcom/waze/view/popups/ThumbsUpPopUP$3;
.super Ljava/lang/Object;
.source "ThumbsUpPopUP.java"

# interfaces
.implements Lcom/waze/utils/ImageRepository$ImageRepositoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/ThumbsUpPopUP;->setUpforRTL()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/ThumbsUpPopUP;

.field private final synthetic val$Userimg:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/ThumbsUpPopUP;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/ThumbsUpPopUP$3;->this$0:Lcom/waze/view/popups/ThumbsUpPopUP;

    iput-object p2, p0, Lcom/waze/view/popups/ThumbsUpPopUP$3;->val$Userimg:Landroid/widget/ImageView;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageRetrieved(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/waze/view/popups/ThumbsUpPopUP$3;->this$0:Lcom/waze/view/popups/ThumbsUpPopUP;

    new-instance v1, Lcom/waze/view/popups/ThumbsUpPopUP$3$1;

    iget-object v2, p0, Lcom/waze/view/popups/ThumbsUpPopUP$3;->val$Userimg:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2, p1}, Lcom/waze/view/popups/ThumbsUpPopUP$3$1;-><init>(Lcom/waze/view/popups/ThumbsUpPopUP$3;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/waze/view/popups/ThumbsUpPopUP;->post(Ljava/lang/Runnable;)Z

    .line 172
    return-void
.end method
