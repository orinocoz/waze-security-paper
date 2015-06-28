.class public Lcom/waze/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/Utils$ExceptionEntry;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CheckDeleteFileException(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter "aEntry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/Utils$ExceptionEntry;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, aExceptionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/Utils$ExceptionEntry;>;"
    const/4 v3, 0x0

    .line 171
    const/4 v2, 0x0

    .line 172
    .local v2, res:Z
    const/4 v1, -0x1

    .line 174
    .local v1, index:I
    if-eqz p0, :cond_0

    .line 176
    new-instance v0, Lcom/waze/Utils$ExceptionEntry;

    .line 177
    const/4 v4, 0x4

    .line 176
    invoke-direct {v0, p1, v4, v3}, Lcom/waze/Utils$ExceptionEntry;-><init>(Ljava/lang/String;II)V

    .line 180
    .local v0, exEntry:Lcom/waze/Utils$ExceptionEntry;
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 182
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    const/4 v2, 0x1

    .line 185
    .end local v0           #exEntry:Lcom/waze/Utils$ExceptionEntry;
    :cond_0
    :goto_0
    return v2

    .restart local v0       #exEntry:Lcom/waze/Utils$ExceptionEntry;
    :cond_1
    move v2, v3

    .line 182
    goto :goto_0
.end method

.method public static Copy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "srcPath"
    .parameter "dstPath"

    .prologue
    .line 70
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v4, srcFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, dstFile:Ljava/io/File;
    new-instance v0, Ljava/lang/String;

    const-string v5, "/"

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, delim:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 76
    const-string v5, "CopyDir"

    const-string v6, "Source does not exist!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 81
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 82
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, files:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v2

    if-ge v3, v5, :cond_0

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/waze/Utils;->Copy(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 90
    .end local v2           #files:[Ljava/lang/String;
    .end local v3           #i:I
    :cond_2
    invoke-static {p0, p1}, Lcom/waze/Utils;->CopyFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static CopyFile()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method private static CopyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "srcPath"
    .parameter "dstPath"

    .prologue
    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, srcChannel:Ljava/nio/channels/FileChannel;
    const/4 v0, 0x0

    .line 101
    .local v0, dstChannel:Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 102
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 104
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 106
    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 110
    :cond_0
    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    :cond_1
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v6

    .line 117
    .local v6, ex:Ljava/io/FileNotFoundException;
    const-string v2, "CopyFile"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "File not found "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v6           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    .line 122
    .local v6, ex:Ljava/io/IOException;
    const-string v2, "CopyFile"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Transfer data error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static Delete(Ljava/io/File;)V
    .locals 1
    .parameter "aFile"

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/waze/Utils;->Delete(Ljava/io/File;Ljava/util/ArrayList;)V

    .line 133
    return-void
.end method

.method private static Delete(Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "aFile"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/Utils$ExceptionEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, aExceptionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/Utils$ExceptionEntry;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 145
    const-string v3, "Delete"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Source does not exist! "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/waze/Utils;->CheckDeleteFileException(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 151
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 153
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 154
    .local v1, files:[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, v1

    if-lt v2, v3, :cond_3

    .line 159
    .end local v1           #files:[Ljava/io/File;
    .end local v2           #i:I
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 163
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "Delete"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Delete failed for: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 156
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #files:[Ljava/io/File;
    .restart local v2       #i:I
    :cond_3
    :try_start_1
    aget-object v3, v1, v2

    invoke-static {v3, p1}, Lcom/waze/Utils;->Delete(Ljava/io/File;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static DeleteDir(Ljava/lang/String;)V
    .locals 2
    .parameter "aPath"

    .prologue
    .line 193
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/waze/Utils;->DeleteDir(Ljava/lang/String;Z[Lcom/waze/Utils$ExceptionEntry;)V

    .line 194
    return-void
.end method

.method public static DeleteDir(Ljava/lang/String;Z)V
    .locals 1
    .parameter "aPath"
    .parameter "aIsContentOnly"

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/waze/Utils;->DeleteDir(Ljava/lang/String;Z[Lcom/waze/Utils$ExceptionEntry;)V

    .line 202
    return-void
.end method

.method public static DeleteDir(Ljava/lang/String;Z[Lcom/waze/Utils$ExceptionEntry;)V
    .locals 5
    .parameter "aPath"
    .parameter "aIsContentOnly"
    .parameter "aExceptionList"

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, exceptList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/Utils$ExceptionEntry;>;"
    if-eqz p2, :cond_0

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #exceptList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/Utils$ExceptionEntry;>;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 213
    .restart local v0       #exceptList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/Utils$ExceptionEntry;>;"
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v3, inputFile:Ljava/io/File;
    if-eqz p1, :cond_3

    .line 216
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 217
    .local v1, files:[Ljava/io/File;
    if-nez v1, :cond_2

    .line 230
    .end local v1           #files:[Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 221
    .restart local v1       #files:[Ljava/io/File;
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 223
    aget-object v4, v1, v2

    invoke-static {v4, v0}, Lcom/waze/Utils;->Delete(Ljava/io/File;Ljava/util/ArrayList;)V

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 228
    .end local v1           #files:[Ljava/io/File;
    .end local v2           #i:I
    :cond_3
    invoke-static {v3, v0}, Lcom/waze/Utils;->Delete(Ljava/io/File;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public static ReadStream(Ljava/io/InputStream;)[B
    .locals 6
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    const/16 v0, 0x2000

    .line 237
    .local v0, DEFAULT_INIT_BUF_SIZE:I
    const/16 v5, 0x2000

    new-array v2, v5, [B

    .line 241
    .local v2, buffer:[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 242
    .local v4, output:Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, bytesRead:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    .line 246
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 247
    .local v1, arrayOut:[B
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 249
    return-object v1

    .line 244
    .end local v1           #arrayOut:[B
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static bytes2Long([B)Ljava/lang/Long;
    .locals 10
    .parameter "array"

    .prologue
    const/16 v9, 0x8

    .line 254
    new-instance v1, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    invoke-direct {v1, v3, v4}, Ljava/lang/Long;-><init>(J)V

    .line 255
    .local v1, ret:Ljava/lang/Long;
    const/4 v2, 0x0

    .line 256
    .local v2, shift:I
    if-eqz p0, :cond_0

    array-length v3, p0

    if-eq v3, v9, :cond_1

    .line 257
    :cond_0
    const/4 v3, 0x0

    .line 265
    :goto_0
    return-object v3

    .line 259
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v9, :cond_2

    move-object v3, v1

    .line 265
    goto :goto_0

    .line 261
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aget-byte v5, p0, v0

    int-to-long v5, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    mul-int/lit8 v7, v2, 0x8

    shl-long/2addr v5, v7

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 262
    add-int/lit8 v2, v2, 0x1

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static long2bytes(J)[B
    .locals 7
    .parameter "value"

    .prologue
    const/16 v6, 0x8

    .line 272
    new-array v1, v6, [B

    .line 273
    .local v1, ret:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v6, :cond_0

    .line 277
    return-object v1

    .line 275
    :cond_0
    const-wide/16 v2, 0xff

    mul-int/lit8 v4, v0, 0x8

    shr-long v4, p0, v4

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static removeMultipleSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "aStr"

    .prologue
    .line 46
    move-object v0, p0

    .line 47
    .local v0, res:Ljava/lang/String;
    :goto_0
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    return-object v0

    .line 49
    :cond_0
    const-string v1, "//"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
