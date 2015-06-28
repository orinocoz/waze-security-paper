.class public Lcom/waze/profile/ImageTaker;
.super Ljava/lang/Object;
.source "ImageTaker.java"


# static fields
.field static final IMAGE_UNSPECIFIED:Ljava/lang/String; = "image/*"

.field public static final REQUEST_CODE_CROP_PHOTO:I = 0xdf

.field public static final REQUEST_CODE_TAKE_FROM_CAMERA:I = 0xde


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAspectX:I

.field private mAspectY:I

.field private mCaptureFileFullPath:Ljava/lang/String;

.field private mCroppedFileFullPath:Ljava/lang/String;

.field private final mFileName:Ljava/lang/String;

.field mFinalBitmap:Landroid/graphics/Bitmap;

.field private mOutX:I

.field private mOutY:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .parameter "a"
    .parameter "fileName"

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/waze/profile/ImageTaker;->mCaptureFileFullPath:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/waze/profile/ImageTaker;->mCroppedFileFullPath:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/waze/profile/ImageTaker;->mFinalBitmap:Landroid/graphics/Bitmap;

    .line 32
    iput v2, p0, Lcom/waze/profile/ImageTaker;->mOutX:I

    .line 33
    iput v2, p0, Lcom/waze/profile/ImageTaker;->mOutY:I

    .line 34
    iput v1, p0, Lcom/waze/profile/ImageTaker;->mAspectX:I

    .line 35
    iput v1, p0, Lcom/waze/profile/ImageTaker;->mAspectY:I

    .line 38
    iput-object p1, p0, Lcom/waze/profile/ImageTaker;->mActivity:Landroid/app/Activity;

    .line 39
    iput-object p2, p0, Lcom/waze/profile/ImageTaker;->mFileName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/waze/profile/ImageTaker;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/waze/profile/ImageTaker;->getCaptureFileNameWC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .parameter "options"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 249
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 250
    .local v2, height:I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 251
    .local v4, width:I
    const/4 v3, 0x1

    .line 253
    .local v3, inSampleSize:I
    if-gt v2, p2, :cond_0

    if-le v4, p1, :cond_1

    .line 255
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 256
    .local v0, halfHeight:I
    div-int/lit8 v1, v4, 0x2

    .line 260
    .local v1, halfWidth:I
    :goto_0
    div-int v5, v0, v3

    if-le v5, p2, :cond_1

    div-int v5, v1, v3

    if-gt v5, p1, :cond_2

    .line 265
    .end local v0           #halfHeight:I
    .end local v1           #halfWidth:I
    :cond_1
    return v3

    .line 261
    .restart local v0       #halfHeight:I
    .restart local v1       #halfWidth:I
    :cond_2
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0
.end method

.method private cropImage(Landroid/net/Uri;)V
    .locals 5
    .parameter "imageCaptureUri"

    .prologue
    const/4 v4, 0x1

    .line 271
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    invoke-direct {p0}, Lcom/waze/profile/ImageTaker;->getImageFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .local v0, imageFile:Ljava/io/File;
    const-string v2, "output"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 278
    const-string v2, "outputX"

    iget v3, p0, Lcom/waze/profile/ImageTaker;->mOutX:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    const-string v2, "outputY"

    iget v3, p0, Lcom/waze/profile/ImageTaker;->mOutY:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    const-string v2, "aspectX"

    iget v3, p0, Lcom/waze/profile/ImageTaker;->mAspectX:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    const-string v2, "aspectY"

    iget v3, p0, Lcom/waze/profile/ImageTaker;->mAspectY:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    const-string v2, "scale"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 285
    const-string v2, "return-data"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 288
    iget-object v2, p0, Lcom/waze/profile/ImageTaker;->mActivity:Landroid/app/Activity;

    const/16 v3, 0xdf

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 289
    return-void
.end method

.method public static decodeSampledBitmapFromResource(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "res"
    .parameter "uri"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    const/4 v3, 0x0

    .line 224
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 225
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 228
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 232
    .local v1, input:Ljava/io/InputStream;
    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 235
    invoke-static {v2, p2, p3}, Lcom/waze/profile/ImageTaker;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 238
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 240
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 244
    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .end local v1           #input:Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 241
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #input:Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 242
    .restart local v0       #e:Ljava/io/FileNotFoundException;
    goto :goto_0
.end method

.method private getCaptureFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/waze/profile/ImageTaker;->mFileName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Capture.tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCaptureFileNameWC()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/waze/profile/ImageTaker;->mFileName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Capture"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getImageFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/waze/profile/ImageTaker;->mFileName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Capture.tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private newTakePhotoIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 70
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, takePhotoIntent:Landroid/content/Intent;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/waze/profile/ImageTaker;->mCaptureFileFullPath:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    invoke-direct {p0}, Lcom/waze/profile/ImageTaker;->getCaptureFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .local v0, imageFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 78
    :cond_0
    const-string v2, "output"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 79
    return-object v1
.end method

.method private saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "bitmap"
    .parameter "fileName"

    .prologue
    .line 207
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .local v1, imageFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 211
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 212
    .local v0, fos:Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 213
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 214
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 215
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 217
    .end local v0           #fos:Ljava/io/FileOutputStream;
    .end local v1           #imageFile:Ljava/io/File;
    :goto_0
    return-object v2

    .line 216
    :catch_0
    move-exception v2

    .line 217
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/waze/profile/ImageTaker;->mFinalBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/waze/profile/ImageTaker;->mCroppedFileFullPath:Ljava/lang/String;

    return-object v0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/waze/profile/ImageTaker;->mFinalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 16
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 99
    const/16 v3, 0xde

    move/from16 v0, p1

    if-ne v0, v3, :cond_8

    .line 100
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_8

    .line 101
    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 104
    .local v2, uri:Landroid/net/Uri;
    const/4 v13, 0x0

    .line 107
    .local v13, imageFilePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/profile/ImageTaker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 111
    .local v1, res:Landroid/content/ContentResolver;
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_data"

    aput-object v5, v3, v4

    .line 112
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 111
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 114
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 115
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 116
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 117
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    if-eqz v13, :cond_7

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 125
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 126
    .local v15, tryUri:Landroid/net/Uri;
    if-eqz v15, :cond_3

    .line 127
    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 128
    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 130
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/waze/profile/ImageTaker;->cropImage(Landroid/net/Uri;)V

    .line 191
    .end local v1           #res:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    .end local v13           #imageFilePath:Ljava/lang/String;
    .end local v15           #tryUri:Landroid/net/Uri;
    :cond_2
    :goto_1
    return-void

    .line 134
    .restart local v1       #res:Landroid/content/ContentResolver;
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v13       #imageFilePath:Ljava/lang/String;
    .restart local v15       #tryUri:Landroid/net/Uri;
    :cond_3
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/waze/profile/ImageTaker;->mCaptureFileFullPath:Ljava/lang/String;

    .line 145
    .end local v1           #res:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    .end local v13           #imageFilePath:Ljava/lang/String;
    .end local v15           #tryUri:Landroid/net/Uri;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/profile/ImageTaker;->mCaptureFileFullPath:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 147
    new-instance v12, Ljava/io/File;

    sget-object v3, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/waze/profile/ImageTaker;->getCaptureFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .local v12, imageFile:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 149
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/waze/profile/ImageTaker;->mCaptureFileFullPath:Ljava/lang/String;

    .line 152
    .end local v12           #imageFile:Ljava/io/File;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/profile/ImageTaker;->mCaptureFileFullPath:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 154
    if-eqz p3, :cond_6

    const-string v3, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 156
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-direct/range {p0 .. p0}, Lcom/waze/profile/ImageTaker;->getCaptureFileName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/waze/profile/ImageTaker;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 155
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/waze/profile/ImageTaker;->mCaptureFileFullPath:Ljava/lang/String;

    .line 161
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/profile/ImageTaker;->mCaptureFileFullPath:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 162
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/profile/ImageTaker;->mCaptureFileFullPath:Ljava/lang/String;

    invoke-direct {v14, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v14, imgFile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 164
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/waze/profile/ImageTaker;->mCaptureFileFullPath:Ljava/lang/String;

    .line 165
    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/waze/profile/ImageTaker;->cropImage(Landroid/net/Uri;)V

    goto :goto_1

    .line 138
    .end local v14           #imgFile:Ljava/io/File;
    .restart local v1       #res:Landroid/content/ContentResolver;
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v13       #imageFilePath:Ljava/lang/String;
    :cond_7
    const/16 v3, 0x1e0

    const/16 v4, 0x1e0

    invoke-static {v1, v2, v3, v4}, Lcom/waze/profile/ImageTaker;->decodeSampledBitmapFromResource(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 139
    .local v7, bmp:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_4

    .line 141
    invoke-direct/range {p0 .. p0}, Lcom/waze/profile/ImageTaker;->getCaptureFileName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3}, Lcom/waze/profile/ImageTaker;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/waze/profile/ImageTaker;->mCaptureFileFullPath:Ljava/lang/String;

    goto/16 :goto_2

    .line 168
    .end local v1           #res:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    .end local v7           #bmp:Landroid/graphics/Bitmap;
    .end local v13           #imageFilePath:Ljava/lang/String;
    :cond_8
    const/16 v3, 0xdf

    move/from16 v0, p1

    if-ne v0, v3, :cond_2

    .line 169
    if-eqz p3, :cond_9

    const-string v3, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 171
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/waze/profile/ImageTaker;->mFinalBitmap:Landroid/graphics/Bitmap;

    .line 173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/profile/ImageTaker;->mFinalBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_9

    .line 174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/profile/ImageTaker;->mFinalBitmap:Landroid/graphics/Bitmap;

    invoke-direct/range {p0 .. p0}, Lcom/waze/profile/ImageTaker;->getImageFileName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/waze/profile/ImageTaker;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/waze/profile/ImageTaker;->mCroppedFileFullPath:Ljava/lang/String;

    .line 179
    :cond_9
    new-instance v9, Ljava/io/File;

    sget-object v3, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    const-string v4, "."

    invoke-direct {v9, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .local v9, dir:Ljava/io/File;
    new-instance v3, Lcom/waze/profile/ImageTaker$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/waze/profile/ImageTaker$1;-><init>(Lcom/waze/profile/ImageTaker;)V

    invoke-virtual {v9, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v11

    .line 187
    .local v11, files:[Ljava/io/File;
    array-length v4, v11

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_2

    aget-object v10, v11, v3

    .line 188
    .local v10, f:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 187
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 119
    .end local v9           #dir:Ljava/io/File;
    .end local v10           #f:Ljava/io/File;
    .end local v11           #files:[Ljava/io/File;
    .restart local v1       #res:Landroid/content/ContentResolver;
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v13       #imageFilePath:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method public sendCaptureIntent(Z)V
    .locals 3
    .parameter "bForceLandscape"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/waze/profile/ImageTaker;->newTakePhotoIntent()Landroid/content/Intent;

    move-result-object v0

    .line 84
    .local v0, takePhotoIntent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 85
    const-string v1, "android.intent.extra.screenOrientation"

    .line 86
    const/4 v2, 0x0

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/waze/profile/ImageTaker;->mActivity:Landroid/app/Activity;

    const/16 v2, 0xde

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 89
    return-void
.end method

.method public sendIntent()V
    .locals 7

    .prologue
    .line 56
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v1, pickIntent:Landroid/content/Intent;
    const-string v4, "image/*"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-direct {p0}, Lcom/waze/profile/ImageTaker;->newTakePhotoIntent()Landroid/content/Intent;

    move-result-object v3

    .line 62
    .local v3, takePhotoIntent:Landroid/content/Intent;
    const-string v2, "Select or take a new Picture"

    .line 63
    .local v2, pickTitle:Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 64
    .local v0, chooserIntent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.INITIAL_INTENTS"

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/content/Intent;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 66
    iget-object v4, p0, Lcom/waze/profile/ImageTaker;->mActivity:Landroid/app/Activity;

    const/16 v5, 0xde

    invoke-virtual {v4, v0, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 67
    return-void
.end method

.method public setOutputResolution(IIII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "aspectX"
    .parameter "aspectY"

    .prologue
    .line 92
    iput p1, p0, Lcom/waze/profile/ImageTaker;->mOutX:I

    .line 93
    iput p2, p0, Lcom/waze/profile/ImageTaker;->mOutY:I

    .line 94
    iput p3, p0, Lcom/waze/profile/ImageTaker;->mAspectX:I

    .line 95
    iput p4, p0, Lcom/waze/profile/ImageTaker;->mAspectY:I

    .line 96
    return-void
.end method
