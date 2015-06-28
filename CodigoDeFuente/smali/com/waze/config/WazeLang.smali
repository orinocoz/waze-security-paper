.class public Lcom/waze/config/WazeLang;
.super Ljava/lang/Object;
.source "WazeLang.java"


# static fields
.field private static mDirName:Ljava/lang/String;

.field private static mFileName:Ljava/lang/String;

.field private static mMap:Ljava/util/HashMap;
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/config/WazeLang;->mMap:Ljava/util/HashMap;

    .line 69
    const-string v0, "lang."

    sput-object v0, Lcom/waze/config/WazeLang;->mFileName:Ljava/lang/String;

    .line 70
    const-string v0, "/waze/"

    sput-object v0, Lcom/waze/config/WazeLang;->mDirName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLang(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 58
    sget-object v1, Lcom/waze/config/WazeLang;->mMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 59
    sget-object v1, Lcom/waze/config/WazeLang;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    .local v0, val:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 65
    .end local v0           #val:Ljava/lang/String;
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .restart local v0       #val:Ljava/lang/String;
    .restart local p0
    :cond_1
    move-object p0, v0

    .line 63
    goto :goto_0
.end method

.method public static load(Ljava/lang/String;)V
    .locals 10
    .parameter "lang"

    .prologue
    .line 19
    sget-object v7, Lcom/waze/config/WazeLang;->mMap:Ljava/util/HashMap;

    if-eqz v7, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 25
    .local v6, storage:Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Loading lang file"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/waze/config/WazeLang;->mDirName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 26
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/waze/config/WazeLang;->mFileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 25
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 28
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/waze/config/WazeLang;->mDirName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/waze/config/WazeLang;->mFileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    .local v3, file:Ljava/io/File;
    new-instance v5, Ljava/util/Scanner;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;)V

    .line 30
    .local v5, scanner:Ljava/util/Scanner;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lcom/waze/config/WazeLang;->mMap:Ljava/util/HashMap;

    .line 33
    :goto_1
    invoke-virtual {v5}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 34
    invoke-virtual {v5}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 37
    .local v4, nextLine:Ljava/lang/String;
    :try_start_1
    const-string v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, columns:[Ljava/lang/String;
    sget-object v7, Lcom/waze/config/WazeLang;->mMap:Ljava/util/HashMap;

    const/4 v8, 0x0

    aget-object v8, v0, v8

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 40
    .end local v0           #columns:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 41
    .local v1, ex:Ljava/lang/Exception;
    if-nez v1, :cond_2

    :try_start_2
    const-string v2, ""

    .line 42
    .local v2, exceptionMsg:Ljava/lang/String;
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to load lang file ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 43
    const-string v8, "], line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 42
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/waze/widget/WazeAppWidgetLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 46
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #exceptionMsg:Ljava/lang/String;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #nextLine:Ljava/lang/String;
    .end local v5           #scanner:Ljava/util/Scanner;
    .end local v6           #storage:Ljava/io/File;
    :catch_1
    move-exception v1

    .line 47
    .restart local v1       #ex:Ljava/lang/Exception;
    if-nez v1, :cond_3

    const-string v2, ""

    .line 48
    .restart local v2       #exceptionMsg:Ljava/lang/String;
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to load lang file ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 49
    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 48
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/waze/widget/WazeAppWidgetLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 41
    .end local v2           #exceptionMsg:Ljava/lang/String;
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #nextLine:Ljava/lang/String;
    .restart local v5       #scanner:Ljava/util/Scanner;
    .restart local v6       #storage:Ljava/io/File;
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    goto :goto_2

    .line 47
    .end local v3           #file:Ljava/io/File;
    .end local v4           #nextLine:Ljava/lang/String;
    .end local v5           #scanner:Ljava/util/Scanner;
    .end local v6           #storage:Ljava/io/File;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method
