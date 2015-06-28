.class Lcom/waze/utils/ImageRepository$3;
.super Ljava/lang/Object;
.source "ImageRepository.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;ZLandroid/widget/ImageView;Landroid/view/View;Lcom/waze/ifs/ui/ActivityBase;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field _try:I

.field final synthetic this$0:Lcom/waze/utils/ImageRepository;

.field private final synthetic val$ab:Lcom/waze/ifs/ui/ActivityBase;

.field private final synthetic val$retryTimeoutMs:J

.field private final synthetic val$toRemove:Landroid/view/View;

.field private final synthetic val$toSet:Landroid/widget/ImageView;

.field private final synthetic val$tryUri:Landroid/net/Uri;

.field private final synthetic val$urlStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/utils/ImageRepository;ILandroid/widget/ImageView;Ljava/lang/String;Landroid/net/Uri;Lcom/waze/ifs/ui/ActivityBase;JLandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/utils/ImageRepository$3;->this$0:Lcom/waze/utils/ImageRepository;

    iput-object p3, p0, Lcom/waze/utils/ImageRepository$3;->val$toSet:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/waze/utils/ImageRepository$3;->val$urlStr:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/utils/ImageRepository$3;->val$tryUri:Landroid/net/Uri;

    iput-object p6, p0, Lcom/waze/utils/ImageRepository$3;->val$ab:Lcom/waze/ifs/ui/ActivityBase;

    iput-wide p7, p0, Lcom/waze/utils/ImageRepository$3;->val$retryTimeoutMs:J

    iput-object p9, p0, Lcom/waze/utils/ImageRepository$3;->val$toRemove:Landroid/view/View;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput p2, p0, Lcom/waze/utils/ImageRepository$3;->_try:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 267
    iget-object v0, p0, Lcom/waze/utils/ImageRepository$3;->val$toSet:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/waze/utils/ImageRepository$3;->val$urlStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/waze/utils/ImageRepository$3;->val$toSet:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    const/16 v0, 0x64

    const/16 v1, 0x4000

    :try_start_0
    iget-object v2, p0, Lcom/waze/utils/ImageRepository$3;->val$tryUri:Landroid/net/Uri;

    .line 272
    iget-object v3, p0, Lcom/waze/utils/ImageRepository$3;->val$ab:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v3}, Lcom/waze/ifs/ui/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    .line 271
    invoke-static {v0, v1, v2, v3, v4}, Lcom/waze/utils/ImageUtils;->makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 273
    .local v5, bitmap:Landroid/graphics/Bitmap;
    if-nez v5, :cond_2

    .line 274
    const-string v0, "LOAD_IMAGE"

    .line 275
    const-string v1, "STATUS"

    .line 276
    const-string v2, "FAILURE"

    .line 274
    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-wide v0, p0, Lcom/waze/utils/ImageRepository$3;->val$retryTimeoutMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 279
    iget v0, p0, Lcom/waze/utils/ImageRepository$3;->_try:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/waze/utils/ImageRepository$3;->_try:I

    .line 280
    iget v0, p0, Lcom/waze/utils/ImageRepository$3;->_try:I

    if-ltz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/waze/utils/ImageRepository$3;->this$0:Lcom/waze/utils/ImageRepository;

    iget-object v0, v0, Lcom/waze/utils/ImageRepository;->mExec:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_3

    .line 283
    :try_start_1
    iget-wide v0, p0, Lcom/waze/utils/ImageRepository$3;->val$retryTimeoutMs:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 285
    :goto_1
    :try_start_2
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 291
    :cond_2
    :goto_2
    const-string v0, "LOAD_IMAGE"

    .line 292
    const-string v1, "STATUS"

    .line 293
    const-string v2, "SUCCESS"

    .line 291
    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/waze/utils/ImageRepository$3;->this$0:Lcom/waze/utils/ImageRepository;

    iget-object v0, v0, Lcom/waze/utils/ImageRepository;->mImageThumbnailCache:Lcom/waze/utils/ImageRepository$ImageCache;

    iget-object v1, p0, Lcom/waze/utils/ImageRepository$3;->val$urlStr:Ljava/lang/String;

    #calls: Lcom/waze/utils/ImageRepository$ImageCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, v5}, Lcom/waze/utils/ImageRepository$ImageCache;->access$1(Lcom/waze/utils/ImageRepository$ImageCache;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 297
    iget-object v8, p0, Lcom/waze/utils/ImageRepository$3;->val$ab:Lcom/waze/ifs/ui/ActivityBase;

    new-instance v0, Lcom/waze/utils/ImageRepository$3$1;

    iget-object v2, p0, Lcom/waze/utils/ImageRepository$3;->val$toSet:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/waze/utils/ImageRepository$3;->val$urlStr:Ljava/lang/String;

    iget-object v4, p0, Lcom/waze/utils/ImageRepository$3;->val$toRemove:Landroid/view/View;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/waze/utils/ImageRepository$3$1;-><init>(Lcom/waze/utils/ImageRepository$3;Landroid/widget/ImageView;Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v0}, Lcom/waze/ifs/ui/ActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 306
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v6

    .line 307
    .local v6, e:Ljava/lang/OutOfMemoryError;
    iget v0, p0, Lcom/waze/utils/ImageRepository$3;->_try:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/waze/utils/ImageRepository$3;->_try:I

    .line 308
    iget v0, p0, Lcom/waze/utils/ImageRepository$3;->_try:I

    if-ltz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/waze/utils/ImageRepository$3;->this$0:Lcom/waze/utils/ImageRepository;

    iget-object v0, v0, Lcom/waze/utils/ImageRepository;->mExec:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_4

    .line 311
    :try_start_3
    iget-wide v0, p0, Lcom/waze/utils/ImageRepository$3;->val$retryTimeoutMs:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 313
    :goto_3
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 287
    .end local v6           #e:Ljava/lang/OutOfMemoryError;
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/waze/utils/ImageRepository$3;->this$0:Lcom/waze/utils/ImageRepository;

    iget-object v0, v0, Lcom/waze/utils/ImageRepository;->mExec:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v1, p0, Lcom/waze/utils/ImageRepository$3;->val$retryTimeoutMs:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 317
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v6

    .line 320
    .local v6, e:Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/waze/utils/ImageRepository$3;->val$ab:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v0}, Lcom/waze/ifs/ui/ActivityBase;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 321
    .local v7, isDebuggable:Z
    :goto_4
    if-eqz v7, :cond_0

    .line 322
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 315
    .end local v7           #isDebuggable:Z
    .local v6, e:Ljava/lang/OutOfMemoryError;
    :cond_4
    iget-object v0, p0, Lcom/waze/utils/ImageRepository$3;->this$0:Lcom/waze/utils/ImageRepository;

    iget-object v0, v0, Lcom/waze/utils/ImageRepository;->mExec:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v1, p0, Lcom/waze/utils/ImageRepository$3;->val$retryTimeoutMs:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto/16 :goto_0

    .line 320
    .local v6, e:Ljava/lang/Throwable;
    :cond_5
    const/4 v7, 0x0

    goto :goto_4

    .line 312
    .local v6, e:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v0

    goto :goto_3

    .line 284
    .end local v6           #e:Ljava/lang/OutOfMemoryError;
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    :catch_3
    move-exception v0

    goto :goto_1
.end method
