.class public Lcom/waze/settings/SettingsLanguageActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SettingsLanguageActivity.java"


# instance fields
.field private languages:[Lcom/waze/settings/SettingsValue;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/settings/SettingsLanguageActivity;->languages:[Lcom/waze/settings/SettingsValue;

    .line 13
    return-void
.end method

.method static synthetic access$0(Lcom/waze/settings/SettingsLanguageActivity;[Lcom/waze/settings/SettingsValue;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput-object p1, p0, Lcom/waze/settings/SettingsLanguageActivity;->languages:[Lcom/waze/settings/SettingsValue;

    return-void
.end method

.method static synthetic access$1(Lcom/waze/settings/SettingsLanguageActivity;)[Lcom/waze/settings/SettingsValue;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/waze/settings/SettingsLanguageActivity;->languages:[Lcom/waze/settings/SettingsValue;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v3, 0x7f0300fa

    invoke-virtual {p0, v3}, Lcom/waze/settings/SettingsLanguageActivity;->setContentView(I)V

    .line 20
    const v3, 0x7f090058

    invoke-virtual {p0, v3}, Lcom/waze/settings/SettingsLanguageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/view/title/TitleBar;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_LANGUAGE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, p0, v4}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 21
    new-instance v0, Lcom/waze/settings/SettingValueAdapter;

    invoke-direct {v0, p0}, Lcom/waze/settings/SettingValueAdapter;-><init>(Landroid/content/Context;)V

    .line 22
    .local v0, adapter:Lcom/waze/settings/SettingValueAdapter;
    new-instance v2, Lcom/waze/settings/SettingsNativeManager;

    invoke-direct {v2}, Lcom/waze/settings/SettingsNativeManager;-><init>()V

    .line 23
    .local v2, nativeManager:Lcom/waze/settings/SettingsNativeManager;
    const v3, 0x7f090674

    invoke-virtual {p0, v3}, Lcom/waze/settings/SettingsLanguageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 24
    .local v1, list:Landroid/widget/ListView;
    new-instance v3, Lcom/waze/settings/SettingsLanguageActivity$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/waze/settings/SettingsLanguageActivity$1;-><init>(Lcom/waze/settings/SettingsLanguageActivity;Lcom/waze/settings/SettingValueAdapter;Landroid/widget/ListView;)V

    invoke-virtual {v2, v3}, Lcom/waze/settings/SettingsNativeManager;->getLanguages(Lcom/waze/settings/SettingsNativeManager$SettingsValuesListener;)V

    .line 32
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    new-instance v3, Lcom/waze/settings/SettingsLanguageActivity$2;

    invoke-direct {v3, p0, v2}, Lcom/waze/settings/SettingsLanguageActivity$2;-><init>(Lcom/waze/settings/SettingsLanguageActivity;Lcom/waze/settings/SettingsNativeManager;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 44
    return-void
.end method
