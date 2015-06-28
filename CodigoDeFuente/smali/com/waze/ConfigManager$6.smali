.class Lcom/waze/ConfigManager$6;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "ConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ConfigManager;->setConfig(Lcom/waze/ConfigItem;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ConfigManager;

.field private final synthetic val$configItem:Lcom/waze/ConfigItem;

.field private final synthetic val$screenName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/ConfigManager;Lcom/waze/ConfigItem;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ConfigManager$6;->this$0:Lcom/waze/ConfigManager;

    iput-object p2, p0, Lcom/waze/ConfigManager$6;->val$configItem:Lcom/waze/ConfigItem;

    iput-object p3, p0, Lcom/waze/ConfigManager$6;->val$screenName:Ljava/lang/String;

    .line 125
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public event()V
    .locals 4

    .prologue
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/waze/ConfigManager$6;->val$configItem:Lcom/waze/ConfigItem;

    invoke-virtual {v2}, Lcom/waze/ConfigItem;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/ConfigManager$6;->val$configItem:Lcom/waze/ConfigItem;

    invoke-virtual {v2}, Lcom/waze/ConfigItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/ConfigManager$6;->val$configItem:Lcom/waze/ConfigItem;

    invoke-virtual {v2}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, configItemsStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/waze/ConfigManager$6;->this$0:Lcom/waze/ConfigManager;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/ConfigManager$6;->val$screenName:Ljava/lang/String;

    #calls: Lcom/waze/ConfigManager;->setConfigNTV(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/waze/ConfigManager;->access$6(Lcom/waze/ConfigManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method
