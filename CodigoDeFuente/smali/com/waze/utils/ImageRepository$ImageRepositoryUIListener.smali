.class public abstract Lcom/waze/utils/ImageRepository$ImageRepositoryUIListener;
.super Ljava/lang/Object;
.source "ImageRepository.java"

# interfaces
.implements Lcom/waze/utils/ImageRepository$ImageRepositoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/utils/ImageRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ImageRepositoryUIListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImageRetrieved(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 47
    new-instance v0, Lcom/waze/utils/ImageRepository$ImageRepositoryUIListener$1;

    invoke-direct {v0, p0, p1}, Lcom/waze/utils/ImageRepository$ImageRepositoryUIListener$1;-><init>(Lcom/waze/utils/ImageRepository$ImageRepositoryUIListener;Landroid/graphics/Bitmap;)V

    .line 53
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method

.method public abstract onImageRetrievedCallback(Landroid/graphics/Bitmap;)V
.end method
