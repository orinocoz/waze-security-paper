.class Lcom/waze/share/ShareNativeManager$6;
.super Lcom/waze/ifs/async/RunnableExecutor;
.source "ShareNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareNativeManager;->initConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/ShareNativeManager;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareNativeManager;Ljava/util/concurrent/Executor;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareNativeManager$6;->this$0:Lcom/waze/share/ShareNativeManager;

    .line 207
    invoke-direct {p0, p2}, Lcom/waze/ifs/async/RunnableExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public event()V
    .locals 4

    .prologue
    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v0, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/waze/ConfigItem;>;"
    const/4 v1, 0x0

    sget-object v2, Lcom/waze/share/ShareConstants;->CFG_ITEM_SHARE_FB_FEATURE_ENABLED:Lcom/waze/ConfigItem;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 214
    const/4 v1, 0x1

    sget-object v2, Lcom/waze/share/ShareConstants;->CFG_ITEM_SHARE_TWITTER_FEATURE_ENABLED:Lcom/waze/ConfigItem;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 215
    const/4 v1, 0x2

    sget-object v2, Lcom/waze/share/ShareConstants;->CFG_ITEM_SHARE_FOURSQUARE_FEATURE_ENABLED:Lcom/waze/ConfigItem;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 216
    const/4 v1, 0x3

    sget-object v2, Lcom/waze/share/ShareConstants;->CFG_ITEM_SHARE_FB_USER_SHARE_PREFIX:Lcom/waze/ConfigItem;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 218
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/share/ShareNativeManager$6;->this$0:Lcom/waze/share/ShareNativeManager;

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/waze/ConfigManager;->getConfig(Lcom/waze/ConfigManager$IConfigUpdater;Ljava/util/List;Ljava/lang/String;)V

    .line 219
    return-void
.end method
