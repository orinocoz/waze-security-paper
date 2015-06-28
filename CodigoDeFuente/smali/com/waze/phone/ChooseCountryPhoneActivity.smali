.class public Lcom/waze/phone/ChooseCountryPhoneActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "ChooseCountryPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/phone/ChooseCountryPhoneActivity$IndexedSettingValueAdapter;
    }
.end annotation


# instance fields
.field private countries:[Lcom/waze/settings/SettingsValue;

.field private mAdapter:Lcom/waze/phone/ChooseCountryPhoneActivity$IndexedSettingValueAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/phone/ChooseCountryPhoneActivity;->countries:[Lcom/waze/settings/SettingsValue;

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/waze/phone/ChooseCountryPhoneActivity;)[Lcom/waze/settings/SettingsValue;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/waze/phone/ChooseCountryPhoneActivity;->countries:[Lcom/waze/settings/SettingsValue;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/phone/ChooseCountryPhoneActivity;)Lcom/waze/phone/ChooseCountryPhoneActivity$IndexedSettingValueAdapter;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/waze/phone/ChooseCountryPhoneActivity;->mAdapter:Lcom/waze/phone/ChooseCountryPhoneActivity$IndexedSettingValueAdapter;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x7f090058

    .line 26
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v1, 0x7f0300fa

    invoke-virtual {p0, v1}, Lcom/waze/phone/ChooseCountryPhoneActivity;->setContentView(I)V

    .line 28
    invoke-virtual {p0, v3}, Lcom/waze/phone/ChooseCountryPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/title/TitleBar;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SELECT_COUNTRY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, p0, v2}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 30
    invoke-virtual {p0, v3}, Lcom/waze/phone/ChooseCountryPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/title/TitleBar;

    new-instance v2, Lcom/waze/phone/ChooseCountryPhoneActivity$1;

    invoke-direct {v2, p0}, Lcom/waze/phone/ChooseCountryPhoneActivity$1;-><init>(Lcom/waze/phone/ChooseCountryPhoneActivity;)V

    invoke-virtual {v1, v2}, Lcom/waze/view/title/TitleBar;->setOnClickCloseListener(Landroid/view/View$OnClickListener;)V

    .line 38
    new-instance v1, Lcom/waze/phone/ChooseCountryPhoneActivity$IndexedSettingValueAdapter;

    invoke-direct {v1, p0}, Lcom/waze/phone/ChooseCountryPhoneActivity$IndexedSettingValueAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/waze/phone/ChooseCountryPhoneActivity;->mAdapter:Lcom/waze/phone/ChooseCountryPhoneActivity$IndexedSettingValueAdapter;

    .line 39
    const v1, 0x7f090674

    invoke-virtual {p0, v1}, Lcom/waze/phone/ChooseCountryPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 42
    .local v0, list:Landroid/widget/ListView;
    invoke-static {}, Lcom/waze/phone/PhoneNumberSignInActivity;->getCountries()[Lcom/waze/settings/SettingsValue;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/phone/ChooseCountryPhoneActivity;->countries:[Lcom/waze/settings/SettingsValue;

    .line 44
    iget-object v1, p0, Lcom/waze/phone/ChooseCountryPhoneActivity;->mAdapter:Lcom/waze/phone/ChooseCountryPhoneActivity$IndexedSettingValueAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    iget-object v1, p0, Lcom/waze/phone/ChooseCountryPhoneActivity;->mAdapter:Lcom/waze/phone/ChooseCountryPhoneActivity$IndexedSettingValueAdapter;

    iget-object v2, p0, Lcom/waze/phone/ChooseCountryPhoneActivity;->countries:[Lcom/waze/settings/SettingsValue;

    invoke-virtual {v1, v2}, Lcom/waze/phone/ChooseCountryPhoneActivity$IndexedSettingValueAdapter;->setValues([Lcom/waze/settings/SettingsValue;)V

    .line 47
    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 49
    new-instance v1, Lcom/waze/phone/ChooseCountryPhoneActivity$2;

    invoke-direct {v1, p0}, Lcom/waze/phone/ChooseCountryPhoneActivity$2;-><init>(Lcom/waze/phone/ChooseCountryPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    return-void
.end method
