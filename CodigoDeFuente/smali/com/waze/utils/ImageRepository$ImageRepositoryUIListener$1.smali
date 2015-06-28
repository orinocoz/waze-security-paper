.class Lcom/waze/utils/ImageRepository$ImageRepositoryUIListener$1;
.super Ljava/lang/Object;
.source "ImageRepository.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/utils/ImageRepository$ImageRepositoryUIListener;->onImageRetrieved(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/utils/ImageRepository$ImageRepositoryUIListener;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/waze/utils/ImageRepository$ImageRepositoryUIListener;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/utils/ImageRepository$ImageRepositoryUIListener$1;->this$1:Lcom/waze/utils/ImageRepository$ImageRepositoryUIListener;

    iput-object p2, p0, Lcom/waze/utils/ImageRepository$ImageRepositoryUIListener$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/waze/utils/ImageRepository$ImageRepositoryUIListener$1;->this$1:Lcom/waze/utils/ImageRepository$ImageRepositoryUIListener;

    iget-object v1, p0, Lcom/waze/utils/ImageRepository$ImageRepositoryUIListener$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/waze/utils/ImageRepository$ImageRepositoryUIListener;->onImageRetrievedCallback(Landroid/graphics/Bitmap;)V

    .line 51
    return-void
.end method
