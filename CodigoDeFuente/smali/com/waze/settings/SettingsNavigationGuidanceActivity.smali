.class public Lcom/waze/settings/SettingsNavigationGuidanceActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SettingsNavigationGuidanceActivity.java"


# instance fields
.field private languages:[Lcom/waze/voice/VoiceData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/settings/SettingsNavigationGuidanceActivity;->languages:[Lcom/waze/voice/VoiceData;

    .line 14
    return-void
.end method

.method static synthetic access$0(Lcom/waze/settings/SettingsNavigationGuidanceActivity;[Lcom/waze/voice/VoiceData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lcom/waze/settings/SettingsNavigationGuidanceActivity;->languages:[Lcom/waze/voice/VoiceData;

    return-void
.end method

.method static synthetic access$1(Lcom/waze/settings/SettingsNavigationGuidanceActivity;)[Lcom/waze/voice/VoiceData;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/waze/settings/SettingsNavigationGuidanceActivity;->languages:[Lcom/waze/voice/VoiceData;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v3, 0x7f0300fa

    invoke-virtual {p0, v3}, Lcom/waze/settings/SettingsNavigationGuidanceActivity;->setContentView(I)V

    .line 21
    const v3, 0x7f090058

    invoke-virtual {p0, v3}, Lcom/waze/settings/SettingsNavigationGuidanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/view/title/TitleBar;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_SOUND:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, p0, v4}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 22
    new-instance v0, Lcom/waze/settings/SettingValueAdapterTwoLines;

    invoke-direct {v0, p0}, Lcom/waze/settings/SettingValueAdapterTwoLines;-><init>(Landroid/content/Context;)V

    .line 23
    .local v0, adapter:Lcom/waze/settings/SettingValueAdapterTwoLines;
    new-instance v2, Lcom/waze/settings/SettingsNativeManager;

    invoke-direct {v2}, Lcom/waze/settings/SettingsNativeManager;-><init>()V

    .line 24
    .local v2, nativeManager:Lcom/waze/settings/SettingsNativeManager;
    const v3, 0x7f090674

    invoke-virtual {p0, v3}, Lcom/waze/settings/SettingsNavigationGuidanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 25
    .local v1, list:Landroid/widget/ListView;
    new-instance v3, Lcom/waze/settings/SettingsNavigationGuidanceActivity$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/waze/settings/SettingsNavigationGuidanceActivity$1;-><init>(Lcom/waze/settings/SettingsNavigationGuidanceActivity;Lcom/waze/settings/SettingValueAdapterTwoLines;Landroid/widget/ListView;)V

    invoke-virtual {v2, v3}, Lcom/waze/settings/SettingsNativeManager;->getVoices(Lcom/waze/settings/SettingsNativeManager$SettingsVoiceDataValuesListener;)V

    .line 33
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    new-instance v3, Lcom/waze/settings/SettingsNavigationGuidanceActivity$2;

    invoke-direct {v3, p0, v2}, Lcom/waze/settings/SettingsNavigationGuidanceActivity$2;-><init>(Lcom/waze/settings/SettingsNavigationGuidanceActivity;Lcom/waze/settings/SettingsNativeManager;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 45
    return-void
.end method
