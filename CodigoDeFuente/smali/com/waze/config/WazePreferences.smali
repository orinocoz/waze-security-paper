.class public Lcom/waze/config/WazePreferences;
.super Ljava/lang/Object;
.source "WazePreferences.java"


# static fields
.field private static mConfig:Lcom/waze/config/WazeConfig;

.field private static mDirName:Ljava/lang/String;

.field private static mFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/config/WazePreferences;->mConfig:Lcom/waze/config/WazeConfig;

    .line 70
    const-string v0, "preferences"

    sput-object v0, Lcom/waze/config/WazePreferences;->mFileName:Ljava/lang/String;

    .line 71
    const-string v0, "/data/com.waze/"

    sput-object v0, Lcom/waze/config/WazePreferences;->mDirName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 45
    sget-object v0, Lcom/waze/config/WazePreferences;->mConfig:Lcom/waze/config/WazeConfig;

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Lcom/waze/config/WazePreferences;->load()V

    .line 48
    :cond_0
    sget-object v0, Lcom/waze/config/WazePreferences;->mConfig:Lcom/waze/config/WazeConfig;

    invoke-virtual {v0, p0}, Lcom/waze/config/WazeConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .parameter "default_value"

    .prologue
    .line 58
    sget-object v0, Lcom/waze/config/WazePreferences;->mConfig:Lcom/waze/config/WazeConfig;

    if-nez v0, :cond_0

    .line 59
    invoke-static {}, Lcom/waze/config/WazePreferences;->load()V

    .line 61
    :cond_0
    sget-object v0, Lcom/waze/config/WazePreferences;->mConfig:Lcom/waze/config/WazeConfig;

    if-eqz v0, :cond_1

    .line 62
    sget-object v0, Lcom/waze/config/WazePreferences;->mConfig:Lcom/waze/config/WazeConfig;

    invoke-virtual {v0, p0, p1}, Lcom/waze/config/WazeConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    .end local p1
    :cond_1
    return-object p1
.end method

.method public static load()V
    .locals 4

    .prologue
    .line 19
    sget-object v1, Lcom/waze/config/WazePreferences;->mConfig:Lcom/waze/config/WazeConfig;

    if-nez v1, :cond_0

    .line 21
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 22
    .local v0, storage:Ljava/io/File;
    new-instance v1, Lcom/waze/config/WazeConfig;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/waze/config/WazePreferences;->mDirName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/waze/config/WazePreferences;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/waze/config/WazeConfig;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/waze/config/WazePreferences;->mConfig:Lcom/waze/config/WazeConfig;

    .line 23
    sget-object v1, Lcom/waze/config/WazePreferences;->mConfig:Lcom/waze/config/WazeConfig;

    invoke-virtual {v1}, Lcom/waze/config/WazeConfig;->load()V

    .line 25
    :cond_0
    return-void
.end method

.method public static loadFromPackage(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 32
    sget-object v0, Lcom/waze/config/WazePreferences;->mConfig:Lcom/waze/config/WazeConfig;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/waze/config/WazeConfig;

    const-string v1, "SD/"

    sget-object v2, Lcom/waze/config/WazePreferences;->mFileName:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/waze/config/WazeConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/waze/config/WazePreferences;->mConfig:Lcom/waze/config/WazeConfig;

    .line 34
    sget-object v0, Lcom/waze/config/WazePreferences;->mConfig:Lcom/waze/config/WazeConfig;

    invoke-virtual {v0}, Lcom/waze/config/WazeConfig;->load()V

    .line 37
    :cond_0
    return-void
.end method
