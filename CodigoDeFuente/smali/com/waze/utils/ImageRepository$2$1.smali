.class Lcom/waze/utils/ImageRepository$2$1;
.super Ljava/lang/Object;
.source "ImageRepository.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/utils/ImageRepository$2;->onImageRetrieved(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/utils/ImageRepository$2;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$toSet:Landroid/widget/ImageView;

.field private final synthetic val$urlStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/utils/ImageRepository$2;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/utils/ImageRepository$2$1;->this$1:Lcom/waze/utils/ImageRepository$2;

    iput-object p2, p0, Lcom/waze/utils/ImageRepository$2$1;->val$toSet:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/waze/utils/ImageRepository$2$1;->val$urlStr:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/utils/ImageRepository$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/waze/utils/ImageRepository$2$1;->val$toSet:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/utils/ImageRepository$2$1;->val$urlStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/waze/utils/ImageRepository$2$1;->val$toSet:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/waze/utils/ImageRepository$2$1;->val$toSet:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/waze/utils/ImageRepository$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 212
    :cond_0
    return-void
.end method
