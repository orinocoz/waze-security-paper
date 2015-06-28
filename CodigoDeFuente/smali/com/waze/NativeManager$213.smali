.class Lcom/waze/NativeManager$213;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->CopyFileToSdcard(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$inputFile:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$213;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$213;->val$inputFile:Ljava/lang/String;

    .line 5891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 5896
    const/4 v2, 0x0

    .line 5897
    .local v2, in:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 5901
    .local v4, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/waze/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5902
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 5904
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 5908
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/waze/NativeManager$213;->val$inputFile:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5909
    .end local v2           #in:Ljava/io/InputStream;
    .local v3, in:Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/waze/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/waze/NativeManager$213;->val$inputFile:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 5911
    .end local v4           #out:Ljava/io/OutputStream;
    .local v5, out:Ljava/io/OutputStream;
    const/16 v7, 0x400

    :try_start_2
    new-array v0, v7, [B

    .line 5913
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, read:I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 5916
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 5917
    const/4 v2, 0x0

    .line 5920
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 5921
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 5922
    const/4 v4, 0x0

    .line 5929
    .end local v0           #buffer:[B
    .end local v1           #dir:Ljava/io/File;
    .end local v5           #out:Ljava/io/OutputStream;
    .end local v6           #read:I
    .restart local v4       #out:Ljava/io/OutputStream;
    :goto_1
    return-void

    .line 5914
    .end local v2           #in:Ljava/io/InputStream;
    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #dir:Ljava/io/File;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    .restart local v6       #read:I
    :cond_1
    const/4 v7, 0x0

    :try_start_4
    invoke-virtual {v5, v0, v7, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 5924
    .end local v0           #buffer:[B
    .end local v6           #read:I
    :catch_0
    move-exception v7

    move-object v4, v5

    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_1

    .line 5926
    .end local v1           #dir:Ljava/io/File;
    :catch_1
    move-exception v7

    goto :goto_1

    .end local v2           #in:Ljava/io/InputStream;
    .restart local v1       #dir:Ljava/io/File;
    .restart local v3       #in:Ljava/io/InputStream;
    :catch_2
    move-exception v7

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_1

    .end local v2           #in:Ljava/io/InputStream;
    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    :catch_3
    move-exception v7

    move-object v4, v5

    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_1

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v0       #buffer:[B
    .restart local v5       #out:Ljava/io/OutputStream;
    .restart local v6       #read:I
    :catch_4
    move-exception v7

    move-object v4, v5

    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    goto :goto_1

    .line 5924
    .end local v0           #buffer:[B
    .end local v1           #dir:Ljava/io/File;
    .end local v6           #read:I
    :catch_5
    move-exception v7

    goto :goto_1

    .end local v2           #in:Ljava/io/InputStream;
    .restart local v1       #dir:Ljava/io/File;
    .restart local v3       #in:Ljava/io/InputStream;
    :catch_6
    move-exception v7

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_1

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v0       #buffer:[B
    .restart local v5       #out:Ljava/io/OutputStream;
    .restart local v6       #read:I
    :catch_7
    move-exception v7

    move-object v4, v5

    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    goto :goto_1
.end method
