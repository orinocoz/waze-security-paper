.class public Lcom/waze/config/WazeUserPreferences;
.super Ljava/lang/Object;
.source "WazeUserPreferences.java"


# static fields
.field private static mConfig:Lcom/waze/config/WazeConfig;

.field private static mDirName:Ljava/lang/String;

.field private static mFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/config/WazeUserPreferences;->mConfig:Lcom/waze/config/WazeConfig;

    .line 54
    const-string v0, "user"

    sput-object v0, Lcom/waze/config/WazeUserPreferences;->mFileName:Ljava/lang/String;

    .line 55
    const-string v0, "/data/com.waze/"

    sput-object v0, Lcom/waze/config/WazeUserPreferences;->mDirName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 30
    sget-object v0, Lcom/waze/config/WazeUserPreferences;->mConfig:Lcom/waze/config/WazeConfig;

    if-nez v0, :cond_0

    .line 31
    invoke-static {}, Lcom/waze/config/WazeUserPreferences;->load()V

    .line 33
    :cond_0
    sget-object v0, Lcom/waze/config/WazeUserPreferences;->mConfig:Lcom/waze/config/WazeConfig;

    invoke-virtual {v0, p0}, Lcom/waze/config/WazeConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .parameter "default_value"

    .prologue
    .line 44
    sget-object v0, Lcom/waze/config/WazeUserPreferences;->mConfig:Lcom/waze/config/WazeConfig;

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lcom/waze/config/WazeUserPreferences;->load()V

    .line 47
    :cond_0
    sget-object v0, Lcom/waze/config/WazeUserPreferences;->mConfig:Lcom/waze/config/WazeConfig;

    if-nez v0, :cond_1

    .line 50
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    sget-object v0, Lcom/waze/config/WazeUserPreferences;->mConfig:Lcom/waze/config/WazeConfig;

    invoke-virtual {v0, p0, p1}, Lcom/waze/config/WazeConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static load()V
    .locals 4

    .prologue
    .line 16
    sget-object v1, Lcom/waze/config/WazeUserPreferences;->mConfig:Lcom/waze/config/WazeConfig;

    if-nez v1, :cond_0

    .line 17
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 18
    .local v0, storage:Ljava/io/File;
    new-instance v1, Lcom/waze/config/WazeConfig;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/waze/config/WazeUserPreferences;->mDirName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/waze/config/WazeUserPreferences;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/waze/config/WazeConfig;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/waze/config/WazeUserPreferences;->mConfig:Lcom/waze/config/WazeConfig;

    .line 19
    sget-object v1, Lcom/waze/config/WazeUserPreferences;->mConfig:Lcom/waze/config/WazeConfig;

    invoke-virtual {v1}, Lcom/waze/config/WazeConfig;->load()V

    .line 21
    :cond_0
    return-void
.end method
