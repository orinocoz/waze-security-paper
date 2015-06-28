.class public Lcom/waze/settings/SettingsGroupsActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SettingsGroupsActivity.java"

# interfaces
.implements Lcom/waze/ConfigManager$IConfigUpdater;


# static fields
.field private static final GROUPS_ICONS_INDEX:I = 0x1

.field public static final GROUP_ICONS_OPTIONS:[Ljava/lang/String; = null

.field public static final GROUP_ICONS_VALUES:[Ljava/lang/String; = null

.field private static final POPUP_REPORTS_INDEX:I = 0x0

.field public static final POPUP_REPORTS_OPTIONS:[Ljava/lang/String; = null

.field public static final POPUP_REPORTS_VALUES:[Ljava/lang/String; = null

.field public static final screenName:Ljava/lang/String; = "SettingsGroups"


# instance fields
.field private iconsView:Lcom/waze/settings/SettingsSelectionView;

.field private mConfigItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/waze/ConfigItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeManager:Lcom/waze/NativeManager;

.field private reportsView:Lcom/waze/settings/SettingsSelectionView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "None"

    aput-object v1, v0, v2

    const-string v1, "From all groups I follow"

    aput-object v1, v0, v3

    const-string v1, "From my main group"

    aput-object v1, v0, v4

    sput-object v0, Lcom/waze/settings/SettingsGroupsActivity;->POPUP_REPORTS_OPTIONS:[Ljava/lang/String;

    .line 27
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "none"

    aput-object v1, v0, v2

    const-string v1, "following"

    aput-object v1, v0, v3

    const-string v1, "main"

    aput-object v1, v0, v4

    sput-object v0, Lcom/waze/settings/SettingsGroupsActivity;->POPUP_REPORTS_VALUES:[Ljava/lang/String;

    .line 28
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "All groups"

    aput-object v1, v0, v2

    const-string v1, "From all groups I follow"

    aput-object v1, v0, v3

    const-string v1, "From my main group"

    aput-object v1, v0, v4

    sput-object v0, Lcom/waze/settings/SettingsGroupsActivity;->GROUP_ICONS_OPTIONS:[Ljava/lang/String;

    .line 29
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "All"

    aput-object v1, v0, v2

    const-string v1, "following"

    aput-object v1, v0, v3

    const-string v1, "main"

    aput-object v1, v0, v4

    sput-object v0, Lcom/waze/settings/SettingsGroupsActivity;->GROUP_ICONS_VALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 32
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/settings/SettingsGroupsActivity;->mNativeManager:Lcom/waze/NativeManager;

    .line 33
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const-string v0, "waze"

    const-string v1, "start settings activity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const v0, 0x7f0300eb

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsGroupsActivity;->setContentView(I)V

    .line 49
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsGroupsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_GROUPS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/settings/SettingsGroupsActivity;->mConfigItems:Ljava/util/List;

    .line 51
    iget-object v0, p0, Lcom/waze/settings/SettingsGroupsActivity;->mConfigItems:Ljava/util/List;

    new-instance v1, Lcom/waze/ConfigItem;

    const-string v2, "Groups"

    const-string v3, "Pop-up reports"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/waze/settings/SettingsGroupsActivity;->mConfigItems:Ljava/util/List;

    new-instance v1, Lcom/waze/ConfigItem;

    const-string v2, "Groups"

    const-string v3, "Show wazers"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/settings/SettingsGroupsActivity;->mConfigItems:Ljava/util/List;

    const-string v2, "SettingsGroups"

    invoke-virtual {v0, p0, v1, v2}, Lcom/waze/ConfigManager;->getConfig(Lcom/waze/ConfigManager$IConfigUpdater;Ljava/util/List;Ljava/lang/String;)V

    .line 55
    const v0, 0x7f090637

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsGroupsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsSelectionView;

    iput-object v0, p0, Lcom/waze/settings/SettingsGroupsActivity;->reportsView:Lcom/waze/settings/SettingsSelectionView;

    .line 56
    const-string v1, "SettingsGroups"

    iget-object v2, p0, Lcom/waze/settings/SettingsGroupsActivity;->mConfigItems:Ljava/util/List;

    iget-object v3, p0, Lcom/waze/settings/SettingsGroupsActivity;->reportsView:Lcom/waze/settings/SettingsSelectionView;

    .line 57
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_POPHUP_REPORTS:Lcom/waze/strings/DisplayStrings;

    sget-object v5, Lcom/waze/settings/SettingsGroupsActivity;->POPUP_REPORTS_OPTIONS:[Ljava/lang/String;

    sget-object v6, Lcom/waze/settings/SettingsGroupsActivity;->POPUP_REPORTS_VALUES:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object v0, p0

    .line 56
    invoke-static/range {v0 .. v7}, Lcom/waze/settings/SettingsUtils;->createSettingsSelectionView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSelectionView;Lcom/waze/strings/DisplayStrings;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 58
    const v0, 0x7f090638

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsGroupsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsSelectionView;

    iput-object v0, p0, Lcom/waze/settings/SettingsGroupsActivity;->iconsView:Lcom/waze/settings/SettingsSelectionView;

    .line 59
    const-string v1, "SettingsGroups"

    iget-object v2, p0, Lcom/waze/settings/SettingsGroupsActivity;->mConfigItems:Ljava/util/List;

    iget-object v3, p0, Lcom/waze/settings/SettingsGroupsActivity;->iconsView:Lcom/waze/settings/SettingsSelectionView;

    .line 60
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_GROUP_ICONS:Lcom/waze/strings/DisplayStrings;

    sget-object v5, Lcom/waze/settings/SettingsGroupsActivity;->GROUP_ICONS_OPTIONS:[Ljava/lang/String;

    sget-object v6, Lcom/waze/settings/SettingsGroupsActivity;->GROUP_ICONS_VALUES:[Ljava/lang/String;

    const/4 v7, 0x1

    move-object v0, p0

    .line 59
    invoke-static/range {v0 .. v7}, Lcom/waze/settings/SettingsUtils;->createSettingsSelectionView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsSelectionView;Lcom/waze/strings/DisplayStrings;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method public updateConfigItems(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/waze/ConfigItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/waze/ConfigItem;>;"
    sget-object v2, Lcom/waze/settings/SettingsGroupsActivity;->POPUP_REPORTS_VALUES:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/ConfigItem;

    invoke-virtual {v1}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/waze/settings/SettingsUtils;->findValueIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 39
    .local v0, index:I
    iget-object v1, p0, Lcom/waze/settings/SettingsGroupsActivity;->reportsView:Lcom/waze/settings/SettingsSelectionView;

    iget-object v2, p0, Lcom/waze/settings/SettingsGroupsActivity;->mNativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/settings/SettingsGroupsActivity;->POPUP_REPORTS_OPTIONS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSelectionView;->setValueText(Ljava/lang/String;)V

    .line 40
    sget-object v2, Lcom/waze/settings/SettingsGroupsActivity;->GROUP_ICONS_VALUES:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/ConfigItem;

    invoke-virtual {v1}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/waze/settings/SettingsUtils;->findValueIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 41
    iget-object v1, p0, Lcom/waze/settings/SettingsGroupsActivity;->iconsView:Lcom/waze/settings/SettingsSelectionView;

    iget-object v2, p0, Lcom/waze/settings/SettingsGroupsActivity;->mNativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/settings/SettingsGroupsActivity;->GROUP_ICONS_OPTIONS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSelectionView;->setValueText(Ljava/lang/String;)V

    .line 42
    return-void
.end method
