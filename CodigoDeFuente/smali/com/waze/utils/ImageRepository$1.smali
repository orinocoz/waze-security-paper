.class Lcom/waze/utils/ImageRepository$1;
.super Ljava/lang/Object;
.source "ImageRepository.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;ZLcom/waze/utils/ImageRepository$ImageRepositoryListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/utils/ImageRepository;

.field private final synthetic val$bThumbnail:Z

.field private final synthetic val$listener:Lcom/waze/utils/ImageRepository$ImageRepositoryListener;

.field private final synthetic val$urlStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/utils/ImageRepository;ZLjava/lang/String;Lcom/waze/utils/ImageRepository$ImageRepositoryListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/utils/ImageRepository$1;->this$0:Lcom/waze/utils/ImageRepository;

    iput-boolean p2, p0, Lcom/waze/utils/ImageRepository$1;->val$bThumbnail:Z

    iput-object p3, p0, Lcom/waze/utils/ImageRepository$1;->val$urlStr:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/utils/ImageRepository$1;->val$listener:Lcom/waze/utils/ImageRepository$ImageRepositoryListener;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 161
    iget-boolean v1, p0, Lcom/waze/utils/ImageRepository$1;->val$bThumbnail:Z

    if-eqz v1, :cond_1

    .line 163
    const/16 v1, 0x200

    const/high16 v2, 0x4

    iget-object v3, p0, Lcom/waze/utils/ImageRepository$1;->val$urlStr:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v4}, Lcom/waze/utils/ImageUtils;->makeBitmap(IILjava/lang/String;Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 169
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    if-nez v0, :cond_2

    .line 170
    const-string v1, "LOAD_IMAGE"

    .line 171
    const-string v2, "STATUS"

    .line 172
    const-string v3, "FAILURE"

    .line 170
    invoke-static {v1, v2, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    :goto_1
    return-void

    .line 166
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    const/16 v1, 0x400

    const/high16 v2, 0x10

    iget-object v3, p0, Lcom/waze/utils/ImageRepository$1;->val$urlStr:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v4}, Lcom/waze/utils/ImageUtils;->makeBitmap(IILjava/lang/String;Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 175
    :cond_2
    const-string v1, "LOAD_IMAGE"

    .line 176
    const-string v2, "STATUS"

    .line 177
    const-string v3, "SUCCESS"

    .line 175
    invoke-static {v1, v2, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-boolean v1, p0, Lcom/waze/utils/ImageRepository$1;->val$bThumbnail:Z

    if-eqz v1, :cond_3

    .line 180
    iget-object v1, p0, Lcom/waze/utils/ImageRepository$1;->this$0:Lcom/waze/utils/ImageRepository;

    iget-object v1, v1, Lcom/waze/utils/ImageRepository;->mImageThumbnailCache:Lcom/waze/utils/ImageRepository$ImageCache;

    iget-object v2, p0, Lcom/waze/utils/ImageRepository$1;->val$urlStr:Ljava/lang/String;

    #calls: Lcom/waze/utils/ImageRepository$ImageCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static {v1, v2, v0}, Lcom/waze/utils/ImageRepository$ImageCache;->access$1(Lcom/waze/utils/ImageRepository$ImageCache;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 184
    :goto_2
    iget-object v1, p0, Lcom/waze/utils/ImageRepository$1;->val$listener:Lcom/waze/utils/ImageRepository$ImageRepositoryListener;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/waze/utils/ImageRepository$1;->val$listener:Lcom/waze/utils/ImageRepository$ImageRepositoryListener;

    invoke-interface {v1, v0}, Lcom/waze/utils/ImageRepository$ImageRepositoryListener;->onImageRetrieved(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 182
    :cond_3
    iget-object v1, p0, Lcom/waze/utils/ImageRepository$1;->this$0:Lcom/waze/utils/ImageRepository;

    iget-object v1, v1, Lcom/waze/utils/ImageRepository;->mImageCache:Lcom/waze/utils/ImageRepository$ImageCache;

    iget-object v2, p0, Lcom/waze/utils/ImageRepository$1;->val$urlStr:Ljava/lang/String;

    #calls: Lcom/waze/utils/ImageRepository$ImageCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static {v1, v2, v0}, Lcom/waze/utils/ImageRepository$ImageCache;->access$1(Lcom/waze/utils/ImageRepository$ImageCache;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method
