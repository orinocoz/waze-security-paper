.class Lcom/waze/ConfigManager$1;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "ConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ConfigManager;->getConfig(Lcom/waze/ConfigManager$IConfigUpdater;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mConfigItems:Ljava/lang/String;

.field final synthetic this$0:Lcom/waze/ConfigManager;

.field private final synthetic val$configItems:Ljava/util/List;

.field private final synthetic val$screenName:Ljava/lang/String;

.field private final synthetic val$updater:Lcom/waze/ConfigManager$IConfigUpdater;


# direct methods
.method constructor <init>(Lcom/waze/ConfigManager;Ljava/util/List;Ljava/lang/String;Lcom/waze/ConfigManager$IConfigUpdater;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ConfigManager$1;->this$0:Lcom/waze/ConfigManager;

    iput-object p2, p0, Lcom/waze/ConfigManager$1;->val$configItems:Ljava/util/List;

    iput-object p3, p0, Lcom/waze/ConfigManager$1;->val$screenName:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/ConfigManager$1;->val$updater:Lcom/waze/ConfigManager$IConfigUpdater;

    .line 62
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 3

    .prologue
    .line 73
    const-string v1, "WAZE"

    const-string v2, "getConfig - callback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/waze/ConfigManager$1;->this$0:Lcom/waze/ConfigManager;

    iget-object v2, p0, Lcom/waze/ConfigManager$1;->mConfigItems:Ljava/lang/String;

    #calls: Lcom/waze/ConfigManager;->StringToConfigItems(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v1, v2}, Lcom/waze/ConfigManager;->access$2(Lcom/waze/ConfigManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 75
    .local v0, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/waze/ConfigItem;>;"
    iget-object v1, p0, Lcom/waze/ConfigManager$1;->val$updater:Lcom/waze/ConfigManager$IConfigUpdater;

    invoke-interface {v1, v0}, Lcom/waze/ConfigManager$IConfigUpdater;->updateConfigItems(Ljava/util/List;)V

    .line 76
    return-void
.end method

.method public event()V
    .locals 3

    .prologue
    .line 66
    const-string v1, "WAZE"

    const-string v2, "getConfig - event"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v1, p0, Lcom/waze/ConfigManager$1;->this$0:Lcom/waze/ConfigManager;

    iget-object v2, p0, Lcom/waze/ConfigManager$1;->val$configItems:Ljava/util/List;

    #calls: Lcom/waze/ConfigManager;->configItemsToStr(Ljava/util/List;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/waze/ConfigManager;->access$0(Lcom/waze/ConfigManager;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, configItemsStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/waze/ConfigManager$1;->this$0:Lcom/waze/ConfigManager;

    iget-object v2, p0, Lcom/waze/ConfigManager$1;->val$screenName:Ljava/lang/String;

    #calls: Lcom/waze/ConfigManager;->getConfigNTV(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v0, v2}, Lcom/waze/ConfigManager;->access$1(Lcom/waze/ConfigManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/ConfigManager$1;->mConfigItems:Ljava/lang/String;

    .line 69
    return-void
.end method
