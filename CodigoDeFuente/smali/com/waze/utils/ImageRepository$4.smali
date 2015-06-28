.class Lcom/waze/utils/ImageRepository$4;
.super Ljava/lang/Object;
.source "ImageRepository.java"

# interfaces
.implements Lcom/waze/utils/ImageRepository$ImageRepositoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;ZLandroid/widget/ImageView;Landroid/view/View;Lcom/waze/ifs/ui/ActivityBase;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/utils/ImageRepository;

.field private final synthetic val$ab:Lcom/waze/ifs/ui/ActivityBase;

.field private final synthetic val$toRemove:Landroid/view/View;

.field private final synthetic val$toSet:Landroid/widget/ImageView;

.field private final synthetic val$urlStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/utils/ImageRepository;Lcom/waze/ifs/ui/ActivityBase;Landroid/widget/ImageView;Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/utils/ImageRepository$4;->this$0:Lcom/waze/utils/ImageRepository;

    iput-object p2, p0, Lcom/waze/utils/ImageRepository$4;->val$ab:Lcom/waze/ifs/ui/ActivityBase;

    iput-object p3, p0, Lcom/waze/utils/ImageRepository$4;->val$toSet:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/waze/utils/ImageRepository$4;->val$urlStr:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/utils/ImageRepository$4;->val$toRemove:Landroid/view/View;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageRetrieved(Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "bitmap"

    .prologue
    .line 338
    if-nez p1, :cond_0

    .line 348
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v6, p0, Lcom/waze/utils/ImageRepository$4;->val$ab:Lcom/waze/ifs/ui/ActivityBase;

    new-instance v0, Lcom/waze/utils/ImageRepository$4$1;

    iget-object v2, p0, Lcom/waze/utils/ImageRepository$4;->val$toSet:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/waze/utils/ImageRepository$4;->val$urlStr:Ljava/lang/String;

    iget-object v4, p0, Lcom/waze/utils/ImageRepository$4;->val$toRemove:Landroid/view/View;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/waze/utils/ImageRepository$4$1;-><init>(Lcom/waze/utils/ImageRepository$4;Landroid/widget/ImageView;Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v0}, Lcom/waze/ifs/ui/ActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
