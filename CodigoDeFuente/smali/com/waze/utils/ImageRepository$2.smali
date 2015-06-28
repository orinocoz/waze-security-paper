.class Lcom/waze/utils/ImageRepository$2;
.super Ljava/lang/Object;
.source "ImageRepository.java"

# interfaces
.implements Lcom/waze/utils/ImageRepository$ImageRepositoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/utils/ImageRepository;

.field private final synthetic val$toSet:Landroid/widget/ImageView;

.field private final synthetic val$urlStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/utils/ImageRepository;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/utils/ImageRepository$2;->this$0:Lcom/waze/utils/ImageRepository;

    iput-object p2, p0, Lcom/waze/utils/ImageRepository$2;->val$toSet:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/waze/utils/ImageRepository$2;->val$urlStr:Ljava/lang/String;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageRetrieved(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    .line 203
    if-nez p1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/waze/utils/ImageRepository$2;->val$toSet:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/waze/utils/ImageRepository$2;->val$toSet:Landroid/widget/ImageView;

    new-instance v1, Lcom/waze/utils/ImageRepository$2$1;

    iget-object v2, p0, Lcom/waze/utils/ImageRepository$2;->val$toSet:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/waze/utils/ImageRepository$2;->val$urlStr:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/waze/utils/ImageRepository$2$1;-><init>(Lcom/waze/utils/ImageRepository$2;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
