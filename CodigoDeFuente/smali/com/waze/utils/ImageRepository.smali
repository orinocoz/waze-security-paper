.class public Lcom/waze/utils/ImageRepository;
.super Ljava/lang/Object;
.source "ImageRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/utils/ImageRepository$ImageCache;,
        Lcom/waze/utils/ImageRepository$ImageRepositoryListener;,
        Lcom/waze/utils/ImageRepository$ImageRepositoryUIListener;
    }
.end annotation


# static fields
.field private static final MAX_EXEC_THREADES:I = 0x5

.field private static final MAX_IMAGES:I = 0x19

.field private static final MAX_NUM_OF_PIXELS:I = 0x100000

.field private static final MAX_THUMBNAILS:I = 0x64

.field private static final MICRO_MAX_NUM_OF_PIXELS:I = 0x4000

.field private static final MICRO_MIN_SIDE_LENGTH:I = 0x64

.field private static final MIN_SIDE_LENGTH:I = 0x400

.field private static final THUMB_MAX_NUM_OF_PIXELS:I = 0x40000

.field private static final THUMB_MIN_SIDE_LENGTH:I = 0x200

.field public static instance:Lcom/waze/utils/ImageRepository;


# instance fields
.field mExec:Ljava/util/concurrent/ScheduledExecutorService;

.field mImageCache:Lcom/waze/utils/ImageRepository$ImageCache;

.field mImageThumbnailCache:Lcom/waze/utils/ImageRepository$ImageCache;

.field mTimesExecInit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/waze/utils/ImageRepository;

    invoke-direct {v0}, Lcom/waze/utils/ImageRepository;-><init>()V

    sput-object v0, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/utils/ImageRepository;->mTimesExecInit:I

    .line 127
    new-instance v0, Lcom/waze/utils/ImageRepository$ImageCache;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lcom/waze/utils/ImageRepository$ImageCache;-><init>(I)V

    iput-object v0, p0, Lcom/waze/utils/ImageRepository;->mImageCache:Lcom/waze/utils/ImageRepository$ImageCache;

    .line 128
    new-instance v0, Lcom/waze/utils/ImageRepository$ImageCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/waze/utils/ImageRepository$ImageCache;-><init>(I)V

    iput-object v0, p0, Lcom/waze/utils/ImageRepository;->mImageThumbnailCache:Lcom/waze/utils/ImageRepository$ImageCache;

    .line 26
    return-void
.end method

.method public static imageViewAnimatedChange(Landroid/widget/ImageView;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "v"
    .parameter "remove"
    .parameter "newImage"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 354
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 355
    .local v1, anim_out:Landroid/view/animation/Animation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 356
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 357
    .local v0, anim_in:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 359
    new-instance v2, Lcom/waze/utils/ImageRepository$5;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/waze/utils/ImageRepository$5;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/view/animation/Animation;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 390
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 391
    return-void
.end method


# virtual methods
.method public declared-synchronized endExecutor()V
    .locals 2

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/waze/utils/ImageRepository;->mTimesExecInit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/waze/utils/ImageRepository;->mTimesExecInit:I

    .line 79
    iget v1, p0, Lcom/waze/utils/ImageRepository;->mTimesExecInit:I

    if-nez v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/waze/utils/ImageRepository;->mExec:Ljava/util/concurrent/ScheduledExecutorService;

    .line 81
    .local v0, toEnd:Ljava/util/concurrent/ExecutorService;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/utils/ImageRepository;->mExec:Ljava/util/concurrent/ScheduledExecutorService;

    .line 82
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v0           #toEnd:Ljava/util/concurrent/ExecutorService;
    :cond_0
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1
    .parameter "urlStr"
    .parameter "toSet"

    .prologue
    .line 198
    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 200
    :cond_0
    new-instance v0, Lcom/waze/utils/ImageRepository$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/waze/utils/ImageRepository$2;-><init>(Lcom/waze/utils/ImageRepository;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;Lcom/waze/utils/ImageRepository$ImageRepositoryListener;)V

    .line 217
    return-void
.end method

.method public getImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/waze/ifs/ui/ActivityBase;)V
    .locals 9
    .parameter "urlStr"
    .parameter "toSet"
    .parameter "ab"

    .prologue
    .line 220
    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v8}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;ZLandroid/widget/ImageView;Landroid/view/View;Lcom/waze/ifs/ui/ActivityBase;JI)V

    .line 221
    return-void
.end method

.method public getImage(Ljava/lang/String;Lcom/waze/utils/ImageRepository$ImageRepositoryListener;)V
    .locals 1
    .parameter "urlStr"
    .parameter "listener"

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;ZLcom/waze/utils/ImageRepository$ImageRepositoryListener;)V

    .line 132
    return-void
.end method

.method public getImage(Ljava/lang/String;ZLandroid/widget/ImageView;Landroid/view/View;Lcom/waze/ifs/ui/ActivityBase;)V
    .locals 9
    .parameter "urlStr"
    .parameter "bThumbnail"
    .parameter "toSet"
    .parameter "toRemove"
    .parameter "ab"

    .prologue
    .line 225
    const-wide/16 v6, 0x0

    const/4 v8, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v8}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;ZLandroid/widget/ImageView;Landroid/view/View;Lcom/waze/ifs/ui/ActivityBase;JI)V

    .line 226
    return-void
.end method

.method public getImage(Ljava/lang/String;ZLandroid/widget/ImageView;Landroid/view/View;Lcom/waze/ifs/ui/ActivityBase;JI)V
    .locals 17
    .parameter "urlStr"
    .parameter "bThumbnail"
    .parameter "toSet"
    .parameter "toRemove"
    .parameter "ab"
    .parameter "retryTimeoutMs"
    .parameter "maxRetries"

    .prologue
    .line 231
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 233
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 350
    :cond_1
    :goto_0
    return-void

    .line 237
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 238
    .local v8, tryUri:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v16

    .line 239
    .local v16, scheme:Ljava/lang/String;
    if-eqz v16, :cond_3

    const-string v4, "content"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 240
    const/16 p2, 0x1

    .line 244
    :cond_3
    if-eqz p2, :cond_4

    .line 245
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/waze/utils/ImageRepository;->mImageThumbnailCache:Lcom/waze/utils/ImageRepository$ImageCache;

    move-object/from16 v0, p1

    #calls: Lcom/waze/utils/ImageRepository$ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v4, v0}, Lcom/waze/utils/ImageRepository$ImageCache;->access$0(Lcom/waze/utils/ImageRepository$ImageCache;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 250
    .local v15, b:Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v15, :cond_5

    .line 251
    const-string v4, "LOAD_IMAGE"

    .line 252
    const-string v5, "STATUS"

    .line 253
    const-string v6, "CACHED"

    .line 251
    invoke-static {v4, v5, v6}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 247
    .end local v15           #b:Landroid/graphics/Bitmap;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/waze/utils/ImageRepository;->mImageCache:Lcom/waze/utils/ImageRepository$ImageCache;

    move-object/from16 v0, p1

    #calls: Lcom/waze/utils/ImageRepository$ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v4, v0}, Lcom/waze/utils/ImageRepository$ImageCache;->access$0(Lcom/waze/utils/ImageRepository$ImageCache;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    .restart local v15       #b:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 258
    :cond_5
    if-eqz v16, :cond_7

    const-string v4, "content"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 259
    new-instance v3, Lcom/waze/utils/ImageRepository$3;

    move-object/from16 v4, p0

    move/from16 v5, p8

    move-object/from16 v6, p3

    move-object/from16 v7, p1

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move-object/from16 v12, p4

    invoke-direct/range {v3 .. v12}, Lcom/waze/utils/ImageRepository$3;-><init>(Lcom/waze/utils/ImageRepository;ILandroid/widget/ImageView;Ljava/lang/String;Landroid/net/Uri;Lcom/waze/ifs/ui/ActivityBase;JLandroid/view/View;)V

    .line 327
    .local v3, runnable:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/waze/utils/ImageRepository;->mExec:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v4, :cond_6

    .line 328
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 330
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/waze/utils/ImageRepository;->mExec:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 335
    .end local v3           #runnable:Ljava/lang/Runnable;
    :cond_7
    new-instance v9, Lcom/waze/utils/ImageRepository$4;

    move-object/from16 v10, p0

    move-object/from16 v11, p5

    move-object/from16 v12, p3

    move-object/from16 v13, p1

    move-object/from16 v14, p4

    invoke-direct/range {v9 .. v14}, Lcom/waze/utils/ImageRepository$4;-><init>(Lcom/waze/utils/ImageRepository;Lcom/waze/ifs/ui/ActivityBase;Landroid/widget/ImageView;Ljava/lang/String;Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v9}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;ZLcom/waze/utils/ImageRepository$ImageRepositoryListener;)V

    goto/16 :goto_0
.end method

.method public getImage(Ljava/lang/String;ZLcom/waze/utils/ImageRepository$ImageRepositoryListener;)V
    .locals 5
    .parameter "urlStr"
    .parameter "bThumbnail"
    .parameter "listener"

    .prologue
    .line 136
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    if-eqz p2, :cond_2

    .line 142
    iget-object v2, p0, Lcom/waze/utils/ImageRepository;->mImageThumbnailCache:Lcom/waze/utils/ImageRepository$ImageCache;

    #calls: Lcom/waze/utils/ImageRepository$ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v2, p1}, Lcom/waze/utils/ImageRepository$ImageCache;->access$0(Lcom/waze/utils/ImageRepository$ImageCache;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    .local v0, b:Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v0, :cond_3

    .line 148
    const-string v2, "LOAD_IMAGE"

    .line 149
    const-string v3, "STATUS"

    .line 150
    const-string v4, "CACHED"

    .line 148
    invoke-static {v2, v3, v4}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    if-eqz p3, :cond_0

    .line 152
    invoke-interface {p3, v0}, Lcom/waze/utils/ImageRepository$ImageRepositoryListener;->onImageRetrieved(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 144
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v2, p0, Lcom/waze/utils/ImageRepository;->mImageCache:Lcom/waze/utils/ImageRepository$ImageCache;

    #calls: Lcom/waze/utils/ImageRepository$ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v2, p1}, Lcom/waze/utils/ImageRepository$ImageCache;->access$0(Lcom/waze/utils/ImageRepository$ImageCache;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #b:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 157
    :cond_3
    new-instance v1, Lcom/waze/utils/ImageRepository$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/waze/utils/ImageRepository$1;-><init>(Lcom/waze/utils/ImageRepository;ZLjava/lang/String;Lcom/waze/utils/ImageRepository$ImageRepositoryListener;)V

    .line 189
    .local v1, runnable:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/waze/utils/ImageRepository;->mExec:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v2, :cond_4

    .line 190
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 192
    :cond_4
    iget-object v2, p0, Lcom/waze/utils/ImageRepository;->mExec:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public declared-synchronized initExecutor()V
    .locals 1

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/waze/utils/ImageRepository;->mExec:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/utils/ImageRepository;->mExec:Ljava/util/concurrent/ScheduledExecutorService;

    .line 74
    :cond_0
    iget v0, p0, Lcom/waze/utils/ImageRepository;->mTimesExecInit:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/waze/utils/ImageRepository;->mTimesExecInit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCached(Ljava/lang/String;)Z
    .locals 1
    .parameter "urlStr"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/waze/utils/ImageRepository;->mImageCache:Lcom/waze/utils/ImageRepository$ImageCache;

    invoke-virtual {v0, p1}, Lcom/waze/utils/ImageRepository$ImageCache;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isThumbnailCached(Ljava/lang/String;)Z
    .locals 1
    .parameter "urlStr"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/waze/utils/ImageRepository;->mImageThumbnailCache:Lcom/waze/utils/ImageRepository$ImageCache;

    invoke-virtual {v0, p1}, Lcom/waze/utils/ImageRepository$ImageCache;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
