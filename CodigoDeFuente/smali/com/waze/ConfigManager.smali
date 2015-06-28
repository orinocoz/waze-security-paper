.class public Lcom/waze/ConfigManager;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/ConfigManager$IConfigUpdater;
    }
.end annotation


# static fields
.field public static final CounterConfig_FriendsTip:I = 0x4

.field public static final CounterConfig_LAST:I = 0x6

.field public static final CounterConfig_PrivacyMessage:I = 0x2

.field public static final CounterConfig_ResidentialConfirmation:I = 0x0

.field public static final CounterConfig_SendLocationButtonBanner:I = 0x1

.field public static final CounterConfig_ShareEtaFriendTip:I = 0x5

.field public static final CounterConfig_ShareEtaTip:I = 0x3

.field public static final SwitchConfig_LAST:I = 0x1

.field public static final SwitchConfig_OptOutOfTargetedAds:I

.field private static mInstance:Lcom/waze/ConfigManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native InitNativeLayerNTV()V
.end method

.method private StringToConfigItems(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "configItemsString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/waze/ConfigItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v0, configItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/ConfigItem;>;"
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v7, "|"

    invoke-direct {v2, p1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .local v2, stringTokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_0

    .line 182
    return-object v0

    .line 171
    :cond_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, token:Ljava/lang/String;
    const/4 v7, 0x0

    const-string v8, "."

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, tokenCategory:Ljava/lang/String;
    const-string v7, "."

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    const-string v8, ":"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, tokenName:Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 175
    .local v6, tokenValue:Ljava/lang/String;
    new-instance v1, Lcom/waze/ConfigItem;

    invoke-direct {v1}, Lcom/waze/ConfigItem;-><init>()V

    .line 176
    .local v1, newItem:Lcom/waze/ConfigItem;
    invoke-virtual {v1, v4}, Lcom/waze/ConfigItem;->setCategory(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1, v5}, Lcom/waze/ConfigItem;->setName(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v1, v6}, Lcom/waze/ConfigItem;->setValue(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private native aboutClickNTV()V
.end method

.method static synthetic access$0(Lcom/waze/ConfigManager;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/waze/ConfigManager;->configItemsToStr(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/ConfigManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/waze/ConfigManager;->getConfigNTV(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/ConfigManager;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/waze/ConfigManager;->StringToConfigItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/ConfigManager;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/waze/ConfigManager;->sendLogsClickNTV()V

    return-void
.end method

.method static synthetic access$4(Lcom/waze/ConfigManager;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/waze/ConfigManager;->askQuestionNTV()V

    return-void
.end method

.method static synthetic access$5(Lcom/waze/ConfigManager;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/waze/ConfigManager;->aboutClickNTV()V

    return-void
.end method

.method static synthetic access$6(Lcom/waze/ConfigManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/waze/ConfigManager;->setConfigNTV(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private native askQuestionNTV()V
.end method

.method private native checkConfigDisplayCounterNTV(IZ)I
.end method

.method private configItemsToStr(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/waze/ConfigItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/waze/ConfigItem;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 148
    .local v1, itemsStr:Ljava/lang/StringBuffer;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 148
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/ConfigItem;

    .line 149
    .local v0, configItem:Lcom/waze/ConfigItem;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/waze/ConfigItem;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/waze/ConfigItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    invoke-virtual {v0}, Lcom/waze/ConfigItem;->getCategory()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/waze/ConfigItem;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 152
    :cond_1
    const-string v3, "WAZE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ConfigItem is not initialized as expected: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/waze/ConfigItem;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/waze/ConfigItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private native getConfigNTV(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native getConfigSwitchValueNTV(I)Z
.end method

.method public static getInstance()Lcom/waze/ConfigManager;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/waze/ConfigManager;->mInstance:Lcom/waze/ConfigManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/waze/ConfigManager;

    invoke-direct {v0}, Lcom/waze/ConfigManager;-><init>()V

    sput-object v0, Lcom/waze/ConfigManager;->mInstance:Lcom/waze/ConfigManager;

    .line 54
    sget-object v0, Lcom/waze/ConfigManager;->mInstance:Lcom/waze/ConfigManager;

    invoke-direct {v0}, Lcom/waze/ConfigManager;->initNativeLayer()V

    .line 56
    :cond_0
    sget-object v0, Lcom/waze/ConfigManager;->mInstance:Lcom/waze/ConfigManager;

    return-object v0
.end method

.method private initNativeLayer()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/waze/ConfigManager;->InitNativeLayerNTV()V

    .line 213
    return-void
.end method

.method private native sendLogsClickNTV()V
.end method

.method private native setConfigDisplayCounterNTV(II)V
.end method

.method private native setConfigNTV(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native setConfigSwitchValueNTV(IZ)V
.end method

.method public static native test_counterConfigEnum()V
.end method

.method private native toggleConfigSwitchValueNTV(I)V
.end method


# virtual methods
.method public aboutClick()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/waze/ConfigManager$4;

    invoke-direct {v0, p0}, Lcom/waze/ConfigManager$4;-><init>(Lcom/waze/ConfigManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method public checkConfigDisplayCounter(IZ)I
    .locals 1
    .parameter "config"
    .parameter "increment"

    .prologue
    .line 191
    invoke-direct {p0, p1, p2}, Lcom/waze/ConfigManager;->checkConfigDisplayCounterNTV(IZ)I

    move-result v0

    return v0
.end method

.method public getConfig(Lcom/waze/ConfigManager$IConfigUpdater;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .parameter "updater"
    .parameter
    .parameter "screenName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/waze/ConfigManager$IConfigUpdater;",
            "Ljava/util/List",
            "<",
            "Lcom/waze/ConfigItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/waze/ConfigItem;>;"
    new-instance v0, Lcom/waze/ConfigManager$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/waze/ConfigManager$1;-><init>(Lcom/waze/ConfigManager;Ljava/util/List;Ljava/lang/String;Lcom/waze/ConfigManager$IConfigUpdater;)V

    .line 79
    .local v0, getConfigEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method

.method public getConfigSwitchValue(I)Z
    .locals 1
    .parameter "config"

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/waze/ConfigManager;->getConfigSwitchValueNTV(I)Z

    move-result v0

    return v0
.end method

.method public helpAskQuestion()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/waze/ConfigManager$3;

    invoke-direct {v0, p0}, Lcom/waze/ConfigManager$3;-><init>(Lcom/waze/ConfigManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method public sendLogsClick()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/waze/ConfigManager$2;

    invoke-direct {v0, p0}, Lcom/waze/ConfigManager$2;-><init>(Lcom/waze/ConfigManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method public setConfig(Lcom/waze/ConfigItem;Ljava/lang/String;)V
    .locals 1
    .parameter "configItem"
    .parameter "screenName"

    .prologue
    .line 125
    new-instance v0, Lcom/waze/ConfigManager$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/ConfigManager$6;-><init>(Lcom/waze/ConfigManager;Lcom/waze/ConfigItem;Ljava/lang/String;)V

    .line 137
    .local v0, setConfigEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method public setConfig(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "screenName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/ConfigItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, configItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/ConfigItem;>;"
    new-instance v0, Lcom/waze/ConfigManager$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/ConfigManager$5;-><init>(Lcom/waze/ConfigManager;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 121
    .local v0, setConfigEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method public setConfigDisplayCounter(II)V
    .locals 0
    .parameter "config"
    .parameter "val"

    .prologue
    .line 195
    invoke-direct {p0, p1, p2}, Lcom/waze/ConfigManager;->setConfigDisplayCounterNTV(II)V

    .line 196
    return-void
.end method

.method public setConfigSwitchValue(IZ)V
    .locals 0
    .parameter "config"
    .parameter "val"

    .prologue
    .line 203
    invoke-direct {p0, p1, p2}, Lcom/waze/ConfigManager;->setConfigSwitchValueNTV(IZ)V

    .line 204
    return-void
.end method

.method public toggleConfigSwitchValue(I)V
    .locals 0
    .parameter "config"

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/waze/ConfigManager;->toggleConfigSwitchValueNTV(I)V

    .line 208
    return-void
.end method
