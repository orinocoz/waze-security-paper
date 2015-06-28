.class public Lcom/waze/settings/SettingsNativeManager;
.super Ljava/lang/Object;
.source "SettingsNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/settings/SettingsNativeManager$SettingsExistsListener;,
        Lcom/waze/settings/SettingsNativeManager$SettingsValuesListener;,
        Lcom/waze/settings/SettingsNativeManager$SettingsVoiceDataValuesListener;
    }
.end annotation


# static fields
.field private static ready:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/settings/SettingsNativeManager;->ready:Z

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-direct {p0}, Lcom/waze/settings/SettingsNativeManager;->init()V

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/waze/settings/SettingsNativeManager;)[Lcom/waze/settings/SettingsValue;
    .locals 1
    .parameter

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/waze/settings/SettingsNativeManager;->getLanguagesNTV()[Lcom/waze/settings/SettingsValue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/settings/SettingsNativeManager;)[Lcom/waze/voice/VoiceData;
    .locals 1
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/waze/settings/SettingsNativeManager;->getVoicesNTV()[Lcom/waze/voice/VoiceData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Lcom/waze/settings/SettingsNativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/waze/settings/SettingsNativeManager;->setPreferredStationNTV(I)V

    return-void
.end method

.method static synthetic access$11(Lcom/waze/settings/SettingsNativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/waze/settings/SettingsNativeManager;->setPreferredTypeNTV(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/waze/settings/SettingsNativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/waze/settings/SettingsNativeManager;->setLanguageNTV(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/waze/settings/SettingsNativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/waze/settings/SettingsNativeManager;->setVoiceNTV(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/waze/settings/SettingsNativeManager;)[Lcom/waze/settings/SettingsValue;
    .locals 1
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/waze/settings/SettingsNativeManager;->getNavigationGuidanceNTV()[Lcom/waze/settings/SettingsValue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/settings/SettingsNativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/waze/settings/SettingsNativeManager;->setNavigationGuidanceNTV(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/waze/settings/SettingsNativeManager;)[Lcom/waze/settings/SettingsValue;
    .locals 1
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/waze/settings/SettingsNativeManager;->getNavigationGuidanceTypesNTV()[Lcom/waze/settings/SettingsValue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/waze/settings/SettingsNativeManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/waze/settings/SettingsNativeManager;->setNavigationGuidanceTypeNTV(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lcom/waze/settings/SettingsNativeManager;)[Lcom/waze/settings/SettingsValue;
    .locals 1
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/waze/settings/SettingsNativeManager;->getGasTypesNTV()[Lcom/waze/settings/SettingsValue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Lcom/waze/settings/SettingsNativeManager;)[Lcom/waze/settings/SettingsValue;
    .locals 1
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/waze/settings/SettingsNativeManager;->getGasStationsNTV()[Lcom/waze/settings/SettingsValue;

    move-result-object v0

    return-object v0
.end method

.method private native getGasStationsNTV()[Lcom/waze/settings/SettingsValue;
.end method

.method private native getGasTypesNTV()[Lcom/waze/settings/SettingsValue;
.end method

.method private native getLanguagesNTV()[Lcom/waze/settings/SettingsValue;
.end method

.method private native getNavigationGuidanceNTV()[Lcom/waze/settings/SettingsValue;
.end method

.method private native getNavigationGuidanceTypesNTV()[Lcom/waze/settings/SettingsValue;
.end method

.method private native getVoicesNTV()[Lcom/waze/voice/VoiceData;
.end method

.method private init()V
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/waze/settings/SettingsNativeManager;->ready:Z

    if-nez v0, :cond_0

    .line 26
    invoke-direct {p0}, Lcom/waze/settings/SettingsNativeManager;->initNativeLayerNTV()V

    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/settings/SettingsNativeManager;->ready:Z

    .line 29
    :cond_0
    return-void
.end method

.method private native initNativeLayerNTV()V
.end method

.method private native setLanguageNTV(Ljava/lang/String;)V
.end method

.method private native setNavigationGuidanceNTV(Ljava/lang/String;)V
.end method

.method private native setNavigationGuidanceTypeNTV(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native setPreferredStationNTV(I)V
.end method

.method private native setPreferredTypeNTV(I)V
.end method

.method private native setVoiceNTV(I)V
.end method


# virtual methods
.method public getLanguages(Lcom/waze/settings/SettingsNativeManager$SettingsValuesListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 37
    new-instance v0, Lcom/waze/settings/SettingsNativeManager$1;

    invoke-direct {v0, p0, p1}, Lcom/waze/settings/SettingsNativeManager$1;-><init>(Lcom/waze/settings/SettingsNativeManager;Lcom/waze/settings/SettingsNativeManager$SettingsValuesListener;)V

    .line 50
    .local v0, loadDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method public native getLanguagesLocaleNTV()Ljava/lang/String;
.end method

.method public getNavigationGuidance(Lcom/waze/settings/SettingsNativeManager$SettingsValuesListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 105
    new-instance v0, Lcom/waze/settings/SettingsNativeManager$5;

    invoke-direct {v0, p0, p1}, Lcom/waze/settings/SettingsNativeManager$5;-><init>(Lcom/waze/settings/SettingsNativeManager;Lcom/waze/settings/SettingsNativeManager$SettingsValuesListener;)V

    .line 118
    .local v0, loadDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method

.method public getNavigationGuidanceTypes(Lcom/waze/settings/SettingsNativeManager$SettingsValuesListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 131
    new-instance v0, Lcom/waze/settings/SettingsNativeManager$7;

    invoke-direct {v0, p0, p1}, Lcom/waze/settings/SettingsNativeManager$7;-><init>(Lcom/waze/settings/SettingsNativeManager;Lcom/waze/settings/SettingsNativeManager$SettingsValuesListener;)V

    .line 144
    .local v0, loadDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method public getPreferredGasStations(Lcom/waze/settings/SettingsNativeManager$SettingsValuesListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 183
    new-instance v0, Lcom/waze/settings/SettingsNativeManager$10;

    invoke-direct {v0, p0, p1}, Lcom/waze/settings/SettingsNativeManager$10;-><init>(Lcom/waze/settings/SettingsNativeManager;Lcom/waze/settings/SettingsNativeManager$SettingsValuesListener;)V

    .line 196
    .local v0, loadDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method

.method public getPreferredGasType(Lcom/waze/settings/SettingsNativeManager$SettingsValuesListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 166
    new-instance v0, Lcom/waze/settings/SettingsNativeManager$9;

    invoke-direct {v0, p0, p1}, Lcom/waze/settings/SettingsNativeManager$9;-><init>(Lcom/waze/settings/SettingsNativeManager;Lcom/waze/settings/SettingsNativeManager$SettingsValuesListener;)V

    .line 179
    .local v0, loadDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method public getVoices(Lcom/waze/settings/SettingsNativeManager$SettingsVoiceDataValuesListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 55
    new-instance v0, Lcom/waze/settings/SettingsNativeManager$2;

    invoke-direct {v0, p0, p1}, Lcom/waze/settings/SettingsNativeManager$2;-><init>(Lcom/waze/settings/SettingsNativeManager;Lcom/waze/settings/SettingsNativeManager$SettingsVoiceDataValuesListener;)V

    .line 68
    .local v0, loadDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 72
    new-instance v0, Lcom/waze/settings/SettingsNativeManager$3;

    invoke-direct {v0, p0, p1}, Lcom/waze/settings/SettingsNativeManager$3;-><init>(Lcom/waze/settings/SettingsNativeManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method

.method public setNavigationGuidance(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 122
    new-instance v0, Lcom/waze/settings/SettingsNativeManager$6;

    invoke-direct {v0, p0, p1}, Lcom/waze/settings/SettingsNativeManager$6;-><init>(Lcom/waze/settings/SettingsNativeManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method public setNavigationGuidanceType(Ljava/lang/String;Ljava/lang/String;Lcom/waze/settings/SettingsNativeManager$SettingsExistsListener;)V
    .locals 1
    .parameter "name"
    .parameter "display"
    .parameter "listener"

    .prologue
    .line 148
    new-instance v0, Lcom/waze/settings/SettingsNativeManager$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/settings/SettingsNativeManager$8;-><init>(Lcom/waze/settings/SettingsNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/waze/settings/SettingsNativeManager$SettingsExistsListener;)V

    .line 162
    .local v0, loadDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 163
    return-void
.end method

.method public setPreferredStation(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 199
    new-instance v0, Lcom/waze/settings/SettingsNativeManager$11;

    invoke-direct {v0, p0, p1}, Lcom/waze/settings/SettingsNativeManager$11;-><init>(Lcom/waze/settings/SettingsNativeManager;I)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method

.method public setPreferredType(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 207
    new-instance v0, Lcom/waze/settings/SettingsNativeManager$12;

    invoke-direct {v0, p0, p1}, Lcom/waze/settings/SettingsNativeManager$12;-><init>(Lcom/waze/settings/SettingsNativeManager;I)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method

.method public setVoice(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 81
    new-instance v0, Lcom/waze/settings/SettingsNativeManager$4;

    invoke-direct {v0, p0, p1}, Lcom/waze/settings/SettingsNativeManager$4;-><init>(Lcom/waze/settings/SettingsNativeManager;I)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method
