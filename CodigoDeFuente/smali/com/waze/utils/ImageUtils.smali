.class public Lcom/waze/utils/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/utils/ImageUtils$DensityProps;
    }
.end annotation


# static fields
.field public static final DIRECTION_DOWN:I = 0x3

.field public static final DIRECTION_LEFT:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x1

.field public static final DIRECTION_UP:I = 0x2

.field public static final NO_RECYCLE_INPUT:Z = false

.field public static final RECYCLE_INPUT:Z = true

.field private static final TAG:Ljava/lang/String; = "Util"

.field public static final UNCONSTRAINED:I = -0x1

.field private static sNullOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Assert(Z)V
    .locals 1
    .parameter "cond"

    .prologue
    .line 405
    if-nez p0, :cond_0

    .line 406
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 408
    :cond_0
    return-void
.end method

.method public static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 278
    if-nez p0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 280
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 269
    if-nez p0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 271
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v6, 0x1

    const/4 v11, -0x1

    .line 157
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 158
    .local v4, w:D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 161
    .local v0, h:D
    if-ne p2, v11, :cond_1

    move v2, v6

    .line 163
    .local v2, lowerBound:I
    :goto_0
    if-ne p1, v11, :cond_2

    const/16 v3, 0x80

    .line 166
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 176
    .end local v2           #lowerBound:I
    :cond_0
    :goto_2
    return v2

    .line 161
    .end local v3           #upperBound:I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 163
    .restart local v2       #lowerBound:I
    :cond_2
    int-to-double v7, p1

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    .line 164
    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    .line 163
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 171
    .restart local v3       #upperBound:I
    :cond_3
    if-ne p2, v11, :cond_4

    if-ne p1, v11, :cond_4

    move v2, v6

    .line 172
    goto :goto_2

    .line 173
    :cond_4
    if-eq p1, v11, :cond_0

    move v2, v3

    .line 176
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 140
    invoke-static {p0, p1, p2}, Lcom/waze/utils/ImageUtils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 143
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    .line 144
    const/4 v1, 0x1

    .line 145
    .local v1, roundedSize:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 152
    :goto_1
    return v1

    .line 146
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v1           #roundedSize:I
    :cond_1
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .restart local v1       #roundedSize:I
    goto :goto_1
.end method

.method public static createNativeAllocOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 417
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 418
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    return-object v0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 412
    if-eq p0, p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getImagePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 423
    invoke-static {}, Lcom/waze/utils/DisplayUtils;->scale()F

    move-result v1

    invoke-static {v1}, Lcom/waze/utils/ImageUtils$DensityProps;->getEnumByScale(F)Lcom/waze/utils/ImageUtils$DensityProps;

    move-result-object v0

    .line 425
    .local v0, props:Lcom/waze/utils/ImageUtils$DensityProps;
    invoke-virtual {v0}, Lcom/waze/utils/ImageUtils$DensityProps;->getServerDir()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getNullOnClickListener()Landroid/view/View$OnClickListener;
    .locals 2

    .prologue
    .line 395
    const-class v1, Lcom/waze/utils/ImageUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/waze/utils/ImageUtils;->sNullOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Lcom/waze/utils/ImageUtils$1;

    invoke-direct {v0}, Lcom/waze/utils/ImageUtils$1;-><init>()V

    sput-object v0, Lcom/waze/utils/ImageUtils;->sNullOnClickListener:Landroid/view/View$OnClickListener;

    .line 401
    :cond_0
    sget-object v0, Lcom/waze/utils/ImageUtils;->sNullOnClickListener:Landroid/view/View$OnClickListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter "array"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, s:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_1

    .line 265
    const/4 v0, -0x1

    .end local v0           #i:I
    :cond_0
    return v0

    .line 261
    .restart local v0       #i:I
    :cond_1
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"
    .parameter "uri"
    .parameter "cr"
    .parameter "input"
    .parameter "options"

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 320
    if-nez p4, :cond_0

    :try_start_0
    invoke-static {p2, p3}, Lcom/waze/utils/ImageUtils;->makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p4

    .line 321
    :cond_0
    if-nez p4, :cond_2

    .line 344
    :cond_1
    invoke-static {p4}, Lcom/waze/utils/ImageUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 342
    :goto_0
    return-object v2

    .line 322
    :cond_2
    if-nez p5, :cond_3

    :try_start_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .end local p5
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    move-object p5, v1

    .line 324
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local p5
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 325
    const/4 v3, 0x0

    invoke-static {p4, v3, p5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 326
    iget-boolean v3, p5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_1

    iget v3, p5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v4, :cond_1

    iget v3, p5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v3, v4, :cond_1

    .line 329
    invoke-static {p5, p0, p1}, Lcom/waze/utils/ImageUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 330
    const/4 v3, 0x0

    iput-boolean v3, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 332
    const/4 v3, 0x0

    iput-boolean v3, p5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 333
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 334
    invoke-static {p4}, Lcom/waze/utils/ImageUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 335
    invoke-virtual {p3, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p4

    .line 336
    const/4 v3, 0x0

    invoke-static {p4, v3, p5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 344
    invoke-static {p4}, Lcom/waze/utils/ImageUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got oom exception "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    invoke-static {p4}, Lcom/waze/utils/ImageUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 340
    .end local v0           #ex:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 341
    .local v0, ex:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got fnf exception "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 344
    invoke-static {p4}, Lcom/waze/utils/ImageUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 343
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v2

    .line 344
    invoke-static {p4}, Lcom/waze/utils/ImageUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 345
    throw v2
.end method

.method public static makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Z)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"
    .parameter "uri"
    .parameter "cr"
    .parameter "useNative"

    .prologue
    .line 293
    const/4 v4, 0x0

    .line 295
    .local v4, input:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p3, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 296
    const/4 v5, 0x0

    .line 297
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz p4, :cond_0

    .line 298
    invoke-static {}, Lcom/waze/utils/ImageUtils;->createNativeAllocOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    :cond_0
    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 300
    invoke-static/range {v0 .. v5}, Lcom/waze/utils/ImageUtils;->makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 304
    invoke-static {v4}, Lcom/waze/utils/ImageUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 302
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v0

    .line 301
    :catch_0
    move-exception v6

    .line 304
    .local v6, ex:Ljava/io/IOException;
    invoke-static {v4}, Lcom/waze/utils/ImageUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 302
    const/4 v0, 0x0

    goto :goto_0

    .line 303
    .end local v6           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 304
    invoke-static {v4}, Lcom/waze/utils/ImageUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 305
    throw v0
.end method

.method public static makeBitmap(IILjava/io/InputStream;Z)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"
    .parameter "pfd"
    .parameter "useNative"

    .prologue
    const/4 v2, 0x0

    .line 310
    const/4 v5, 0x0

    .line 311
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz p3, :cond_0

    .line 312
    invoke-static {}, Lcom/waze/utils/ImageUtils;->createNativeAllocOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    :cond_0
    move v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, p2

    .line 314
    invoke-static/range {v0 .. v5}, Lcom/waze/utils/ImageUtils;->makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static makeBitmap(IILjava/lang/String;Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"
    .parameter "imageUrl"
    .parameter "input"
    .parameter "options"

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 351
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 352
    .local v2, url:Ljava/net/URL;
    if-nez p3, :cond_0

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object p3

    .line 353
    :cond_0
    if-nez p3, :cond_2

    .line 382
    :cond_1
    invoke-static {p3}, Lcom/waze/utils/ImageUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 380
    .end local v2           #url:Ljava/net/URL;
    :goto_0
    return-object v3

    .line 354
    .restart local v2       #url:Ljava/net/URL;
    :cond_2
    if-nez p4, :cond_3

    :try_start_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .end local p4
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    move-object p4, v1

    .line 356
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local p4
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 357
    const/4 v4, 0x0

    invoke-static {p3, v4, p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 358
    iget-boolean v4, p4, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v4, :cond_1

    iget v4, p4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v4, v5, :cond_1

    iget v4, p4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v4, v5, :cond_1

    .line 361
    invoke-static {p4, p0, p1}, Lcom/waze/utils/ImageUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 362
    const/4 v4, 0x0

    iput-boolean v4, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 364
    const/4 v4, 0x0

    iput-boolean v4, p4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 365
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, p4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 366
    invoke-static {p3}, Lcom/waze/utils/ImageUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 367
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p3

    .line 368
    const/4 v4, 0x0

    invoke-static {p3, v4, p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .line 382
    invoke-static {p3}, Lcom/waze/utils/ImageUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 369
    .end local v2           #url:Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 370
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v4, "Util"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Got oom exception "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 382
    invoke-static {p3}, Lcom/waze/utils/ImageUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 372
    .end local v0           #ex:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 373
    .local v0, ex:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v4, "Util"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Got fnf exception "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 382
    invoke-static {p3}, Lcom/waze/utils/ImageUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 375
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 376
    .local v0, ex:Ljava/net/MalformedURLException;
    :try_start_4
    const-string v4, "Util"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Got bad url exception "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 382
    invoke-static {p3}, Lcom/waze/utils/ImageUtils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 378
    .end local v0           #ex:Ljava/net/MalformedURLException;
    :catch_3
    move-exception v0

    .line 379
    .local v0, ex:Ljava/io/IOException;
    :try_start_5
    const-string v4, "Util"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Got io exception "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 382
    invoke-static {p3}, Lcom/waze/utils/ImageUtils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 381
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 382
    invoke-static {p3}, Lcom/waze/utils/ImageUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 383
    throw v3
.end method

.method private static makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/InputStream;
    .locals 2
    .parameter "uri"
    .parameter "cr"

    .prologue
    .line 388
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 390
    :goto_0
    return-object v1

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, ex:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "b"
    .parameter "degrees"

    .prologue
    const/high16 v3, 0x4000

    .line 108
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 109
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 110
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 112
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 113
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 114
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    move-object p0, v7

    .line 121
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 117
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZZ)Landroid/graphics/Bitmap;
    .locals 28
    .parameter "scaler"
    .parameter "source"
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "scaleUp"
    .parameter "recycle"

    .prologue
    .line 186
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v16, v3, p2

    .line 187
    .local v16, deltaX:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v18, v3, p3

    .line 188
    .local v18, deltaY:I
    if-nez p4, :cond_2

    if-ltz v16, :cond_0

    if-gez v18, :cond_2

    .line 194
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 195
    .local v11, b2:Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 197
    .local v15, c:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    div-int/lit8 v4, v16, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 198
    .local v17, deltaXHalf:I
    const/4 v3, 0x0

    div-int/lit8 v4, v18, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 200
    .local v19, deltaYHalf:I
    new-instance v26, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move/from16 v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v3, v3, v17

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v0, p3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v19

    .line 200
    move-object/from16 v0, v26

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 202
    .local v26, src:Landroid/graphics/Rect;
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, p2, v3

    div-int/lit8 v21, v3, 0x2

    .line 203
    .local v21, dstX:I
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, p3, v3

    div-int/lit8 v22, v3, 0x2

    .line 204
    .local v22, dstY:I
    new-instance v20, Landroid/graphics/Rect;

    sub-int v3, p2, v21

    sub-int v4, p3, v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 205
    .local v20, dst:Landroid/graphics/Rect;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 206
    if-eqz p5, :cond_1

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 256
    .end local v15           #c:Landroid/graphics/Canvas;
    .end local v17           #deltaXHalf:I
    .end local v19           #deltaYHalf:I
    .end local v20           #dst:Landroid/graphics/Rect;
    .end local v21           #dstX:I
    .end local v22           #dstY:I
    .end local v26           #src:Landroid/graphics/Rect;
    :cond_1
    :goto_0
    return-object v11

    .line 211
    .end local v11           #b2:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v14, v3

    .line 212
    .local v14, bitmapWidthF:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v13, v3

    .line 214
    .local v13, bitmapHeightF:F
    div-float v12, v14, v13

    .line 215
    .local v12, bitmapAspect:F
    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    div-float v27, v3, v4

    .line 217
    .local v27, viewAspect:F
    cmpl-float v3, v12, v27

    if-lez v3, :cond_7

    .line 218
    move/from16 v0, p3

    int-to-float v3, v0

    div-float v25, v3, v13

    .line 219
    .local v25, scale:F
    const v3, 0x3f666666

    cmpg-float v3, v25, v3

    if-ltz v3, :cond_3

    const/high16 v3, 0x3f80

    cmpl-float v3, v25, v3

    if-lez v3, :cond_6

    .line 220
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 234
    :goto_1
    if-eqz p0, :cond_a

    .line 236
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v8, p0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 241
    .local v10, b1:Landroid/graphics/Bitmap;
    :goto_2
    if-eqz p5, :cond_4

    move-object/from16 v0, p1

    if-eq v10, v0, :cond_4

    .line 242
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 245
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 246
    .local v23, dx1:I
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 248
    .local v24, dy1:I
    div-int/lit8 v3, v23, 0x2

    div-int/lit8 v4, v24, 0x2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v10, v3, v4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 250
    .restart local v11       #b2:Landroid/graphics/Bitmap;
    if-eq v11, v10, :cond_1

    .line 251
    if-nez p5, :cond_5

    move-object/from16 v0, p1

    if-eq v10, v0, :cond_1

    .line 252
    :cond_5
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 222
    .end local v10           #b1:Landroid/graphics/Bitmap;
    .end local v11           #b2:Landroid/graphics/Bitmap;
    .end local v23           #dx1:I
    .end local v24           #dy1:I
    :cond_6
    const/16 p0, 0x0

    .line 224
    goto :goto_1

    .line 225
    .end local v25           #scale:F
    :cond_7
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v25, v3, v14

    .line 226
    .restart local v25       #scale:F
    const v3, 0x3f666666

    cmpg-float v3, v25, v3

    if-ltz v3, :cond_8

    const/high16 v3, 0x3f80

    cmpl-float v3, v25, v3

    if-lez v3, :cond_9

    .line 227
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_1

    .line 229
    :cond_9
    const/16 p0, 0x0

    goto :goto_1

    .line 238
    :cond_a
    move-object/from16 v10, p1

    .restart local v10       #b1:Landroid/graphics/Bitmap;
    goto :goto_2
.end method
