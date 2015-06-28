.class Lcom/waze/utils/ImageRepository$ImageCache;
.super Ljava/lang/Object;
.source "ImageRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/utils/ImageRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageCache"
.end annotation


# instance fields
.field private final _maxEntries:I

.field private imageAccessHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private imageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "maxEntries"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/waze/utils/ImageRepository$ImageCache;->imageMap:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/utils/ImageRepository$ImageCache;->imageAccessHistory:Ljava/util/ArrayList;

    .line 91
    iput p1, p0, Lcom/waze/utils/ImageRepository$ImageCache;->_maxEntries:I

    .line 92
    return-void
.end method

.method static synthetic access$0(Lcom/waze/utils/ImageRepository$ImageCache;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/waze/utils/ImageRepository$ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/utils/ImageRepository$ImageCache;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/waze/utils/ImageRepository$ImageCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "urlStr"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/waze/utils/ImageRepository$ImageCache;->imageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/waze/utils/ImageRepository$ImageCache;->imageAccessHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/waze/utils/ImageRepository$ImageCache;->imageAccessHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/waze/utils/ImageRepository$ImageCache;->imageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 103
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "urlStr"
    .parameter "d"

    .prologue
    .line 107
    const-string v1, "file"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/waze/utils/ImageRepository$ImageCache;->imageMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/waze/utils/ImageRepository$ImageCache;->imageAccessHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 110
    iget-object v1, p0, Lcom/waze/utils/ImageRepository$ImageCache;->imageAccessHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v1, p0, Lcom/waze/utils/ImageRepository$ImageCache;->imageMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/waze/utils/ImageRepository$ImageCache;->imageAccessHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v1, p0, Lcom/waze/utils/ImageRepository$ImageCache;->imageMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v1, p0, Lcom/waze/utils/ImageRepository$ImageCache;->imageAccessHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/waze/utils/ImageRepository$ImageCache;->_maxEntries:I

    if-le v1, v2, :cond_0

    .line 116
    iget-object v1, p0, Lcom/waze/utils/ImageRepository$ImageCache;->imageAccessHistory:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    .local v0, removeUrl:Ljava/lang/String;
    iget-object v1, p0, Lcom/waze/utils/ImageRepository$ImageCache;->imageMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public has(Ljava/lang/String;)Z
    .locals 1
    .parameter "urlStr"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/waze/utils/ImageRepository$ImageCache;->imageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
