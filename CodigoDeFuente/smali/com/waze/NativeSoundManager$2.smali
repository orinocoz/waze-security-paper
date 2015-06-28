.class Lcom/waze/NativeSoundManager$2;
.super Lcom/waze/ifs/async/RunnableExecutor;
.source "NativeSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeSoundManager;->requestConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeSoundManager;


# direct methods
.method constructor <init>(Lcom/waze/NativeSoundManager;Ljava/util/concurrent/Executor;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeSoundManager$2;->this$0:Lcom/waze/NativeSoundManager;

    .line 92
    invoke-direct {p0, p2}, Lcom/waze/ifs/async/RunnableExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public event()V
    .locals 5

    .prologue
    .line 96
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 98
    .local v1, nm:Lcom/waze/NativeManager;
    iget-object v2, p0, Lcom/waze/NativeSoundManager$2;->this$0:Lcom/waze/NativeSoundManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SOUND_DEVICE_SPEAKER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/waze/NativeSoundManager;->mSpeakerDeviceName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/waze/NativeSoundManager;->access$6(Lcom/waze/NativeSoundManager;Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/waze/NativeSoundManager$2;->this$0:Lcom/waze/NativeSoundManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SOUND_DEVICE_BT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/waze/NativeSoundManager;->mBTDeviceName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/waze/NativeSoundManager;->access$7(Lcom/waze/NativeSoundManager;Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/waze/NativeSoundManager$2;->this$0:Lcom/waze/NativeSoundManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SOUND_DEVICE_DEFAULT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/waze/NativeSoundManager;->mDefaultDeviceName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/waze/NativeSoundManager;->access$8(Lcom/waze/NativeSoundManager;Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/waze/ConfigItem;>;"
    const/4 v2, 0x0

    sget-object v3, Lcom/waze/settings/SettingsSoundConstants;->CFG_ITEM_ROUTE_2_SPEAKER:Lcom/waze/ConfigItem;

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 105
    const/4 v2, 0x1

    sget-object v3, Lcom/waze/settings/SettingsSoundConstants;->CFG_ITEM_PROMPTS_VOLUME:Lcom/waze/ConfigItem;

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 106
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/NativeSoundManager$2;->this$0:Lcom/waze/NativeSoundManager;

    const-string v4, ""

    invoke-virtual {v2, v3, v0, v4}, Lcom/waze/ConfigManager;->getConfig(Lcom/waze/ConfigManager$IConfigUpdater;Ljava/util/List;Ljava/lang/String;)V

    .line 107
    return-void
.end method
