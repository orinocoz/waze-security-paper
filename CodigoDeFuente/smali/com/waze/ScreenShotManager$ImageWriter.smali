.class final Lcom/waze/ScreenShotManager$ImageWriter;
.super Ljava/lang/Thread;
.source "ScreenShotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ScreenShotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImageWriter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ScreenShotManager;


# direct methods
.method private constructor <init>(Lcom/waze/ScreenShotManager;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/waze/ScreenShotManager$ImageWriter;->this$0:Lcom/waze/ScreenShotManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/ScreenShotManager;Lcom/waze/ScreenShotManager$ImageWriter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/waze/ScreenShotManager$ImageWriter;-><init>(Lcom/waze/ScreenShotManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 186
    iget-object v5, p0, Lcom/waze/ScreenShotManager$ImageWriter;->this$0:Lcom/waze/ScreenShotManager;

    #getter for: Lcom/waze/ScreenShotManager;->mBitMap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/waze/ScreenShotManager;->access$0(Lcom/waze/ScreenShotManager;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 188
    invoke-static {}, Lcom/waze/ScreenShotManager;->access$1()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lcom/waze/ScreenShotManager;->access$2(I)V

    .line 190
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "screenshot_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/waze/ScreenShotManager;->access$1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, fileName:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/waze/ResManager;->mSDCardResDir:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "screenshots/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, fullPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 197
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 198
    .local v3, fos:Ljava/io/FileOutputStream;
    iget-object v5, p0, Lcom/waze/ScreenShotManager$ImageWriter;->this$0:Lcom/waze/ScreenShotManager;

    #getter for: Lcom/waze/ScreenShotManager;->mBitMap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/waze/ScreenShotManager;->access$0(Lcom/waze/ScreenShotManager;)Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x32

    invoke-virtual {v5, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 199
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 200
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 201
    iget-object v5, p0, Lcom/waze/ScreenShotManager$ImageWriter;->this$0:Lcom/waze/ScreenShotManager;

    #getter for: Lcom/waze/ScreenShotManager;->mBitMap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/waze/ScreenShotManager;->access$0(Lcom/waze/ScreenShotManager;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 202
    iget-object v5, p0, Lcom/waze/ScreenShotManager$ImageWriter;->this$0:Lcom/waze/ScreenShotManager;

    const/4 v6, 0x0

    #setter for: Lcom/waze/ScreenShotManager;->mBitMap:Landroid/graphics/Bitmap;
    invoke-static {v5, v6}, Lcom/waze/ScreenShotManager;->access$3(Lcom/waze/ScreenShotManager;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v1           #file:Ljava/io/File;
    .end local v2           #fileName:Ljava/lang/String;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #fullPath:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 204
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #fileName:Ljava/lang/String;
    .restart local v4       #fullPath:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 206
    .local v0, ex:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ScreenShot: File writing error for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/waze/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
