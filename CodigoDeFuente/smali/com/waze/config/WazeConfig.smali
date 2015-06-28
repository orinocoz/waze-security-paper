.class public Lcom/waze/config/WazeConfig;
.super Ljava/lang/Object;
.source "WazeConfig.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "WAZE_CONFIG"


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mFileStream:Ljava/io/InputStream;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "assetPath"
    .parameter "fileName"

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object v1, p0, Lcom/waze/config/WazeConfig;->mFileName:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/waze/config/WazeConfig;->mFileStream:Ljava/io/InputStream;

    .line 98
    iput-object v1, p0, Lcom/waze/config/WazeConfig;->mMap:Ljava/util/HashMap;

    .line 27
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/config/WazeConfig;->mFileStream:Ljava/io/InputStream;

    .line 28
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/waze/config/WazeConfig;->mMap:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "WAZE_CONFIG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load config file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/waze/config/WazeConfig;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "fileName"

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object v0, p0, Lcom/waze/config/WazeConfig;->mFileName:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/waze/config/WazeConfig;->mFileStream:Ljava/io/InputStream;

    .line 98
    iput-object v0, p0, Lcom/waze/config/WazeConfig;->mMap:Ljava/util/HashMap;

    .line 20
    iput-object p1, p0, Lcom/waze/config/WazeConfig;->mFileName:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/waze/config/WazeConfig;->mMap:Ljava/util/HashMap;

    .line 22
    return-void
.end method


# virtual methods
.method getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/waze/config/WazeConfig;->mMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/waze/config/WazeConfig;->load()V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/waze/config/WazeConfig;->mMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/waze/config/WazeConfig;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .parameter "default_value"

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/waze/config/WazeConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, val:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 92
    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method load()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 42
    const/4 v3, 0x0

    .line 43
    .local v3, scanner:Ljava/util/Scanner;
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/waze/config/WazeConfig;->mFileName:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 45
    new-instance v4, Ljava/util/Scanner;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;)V

    .end local v3           #scanner:Ljava/util/Scanner;
    .local v4, scanner:Ljava/util/Scanner;
    move-object v3, v4

    .line 49
    .end local v4           #scanner:Ljava/util/Scanner;
    .restart local v3       #scanner:Ljava/util/Scanner;
    :goto_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/waze/config/WazeConfig;->mMap:Ljava/util/HashMap;

    .line 51
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v5

    if-nez v5, :cond_2

    .line 57
    const-string v5, "WAZE_CONFIG"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "config file "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/waze/config/WazeConfig;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Loaded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v2           #file:Ljava/io/File;
    :goto_2
    return-void

    .line 47
    .restart local v2       #file:Ljava/io/File;
    :cond_1
    new-instance v4, Ljava/util/Scanner;

    iget-object v5, p0, Lcom/waze/config/WazeConfig;->mFileStream:Ljava/io/InputStream;

    invoke-direct {v4, v5}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .end local v3           #scanner:Ljava/util/Scanner;
    .restart local v4       #scanner:Ljava/util/Scanner;
    move-object v3, v4

    .end local v4           #scanner:Ljava/util/Scanner;
    .restart local v3       #scanner:Ljava/util/Scanner;
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v3}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, columns:[Ljava/lang/String;
    array-length v5, v0

    if-le v5, v8, :cond_0

    .line 54
    iget-object v5, p0, Lcom/waze/config/WazeConfig;->mMap:Ljava/util/HashMap;

    const/4 v6, 0x0

    aget-object v6, v0, v6

    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 60
    .end local v0           #columns:[Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 61
    .local v1, ex:Ljava/lang/Exception;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/waze/config/WazeConfig;->mMap:Ljava/util/HashMap;

    .line 62
    const-string v5, "WAZE_CONFIG"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to load config file "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/waze/config/WazeConfig;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
