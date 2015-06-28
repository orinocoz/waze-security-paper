.class Lcom/waze/ConfigManager$5;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "ConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ConfigManager;->setConfig(Ljava/util/ArrayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ConfigManager;

.field private final synthetic val$configItems:Ljava/util/ArrayList;

.field private final synthetic val$screenName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/ConfigManager;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ConfigManager$5;->this$0:Lcom/waze/ConfigManager;

    iput-object p2, p0, Lcom/waze/ConfigManager$5;->val$configItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/waze/ConfigManager$5;->val$screenName:Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public event()V
    .locals 4

    .prologue
    .line 110
    const-string v1, "WAZE"

    const-string v2, "setConfig - event"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v1, p0, Lcom/waze/ConfigManager$5;->this$0:Lcom/waze/ConfigManager;

    iget-object v2, p0, Lcom/waze/ConfigManager$5;->val$configItems:Ljava/util/ArrayList;

    #calls: Lcom/waze/ConfigManager;->configItemsToStr(Ljava/util/List;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/waze/ConfigManager;->access$0(Lcom/waze/ConfigManager;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, configItemsStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/waze/ConfigManager$5;->this$0:Lcom/waze/ConfigManager;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/ConfigManager$5;->val$screenName:Ljava/lang/String;

    #calls: Lcom/waze/ConfigManager;->setConfigNTV(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/waze/ConfigManager;->access$6(Lcom/waze/ConfigManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method
