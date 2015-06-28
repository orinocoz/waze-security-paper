.class public Lcom/waze/settings/SettingsDataTransferActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SettingsDataTransferActivity.java"

# interfaces
.implements Lcom/waze/ConfigManager$IConfigUpdater;


# static fields
.field private static final DOWNLOAD_TRAFFIC_INDEX:I = 0x0

.field public static final screenName:Ljava/lang/String; = "SettingsDataTransfer"


# instance fields
.field private downloadTrafficInfoView:Lcom/waze/settings/SettingsCheckboxView;

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 31
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/settings/SettingsDataTransferActivity;->mNativeManager:Lcom/waze/NativeManager;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/waze/settings/SettingsDataTransferActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/waze/settings/SettingsDataTransferActivity;->onRefresh()V

    return-void
.end method

.method private onRefresh()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsDataTransferActivity;->setResult(I)V

    .line 44
    invoke-virtual {p0}, Lcom/waze/settings/SettingsDataTransferActivity;->finish()V

    .line 46
    new-instance v0, Lcom/waze/settings/SettingsDataTransferActivity$1;

    invoke-direct {v0, p0}, Lcom/waze/settings/SettingsDataTransferActivity$1;-><init>(Lcom/waze/settings/SettingsDataTransferActivity;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const-string v3, "waze"

    const-string v4, "start data transfer activity"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const v3, 0x7f0300e6

    invoke-virtual {p0, v3}, Lcom/waze/settings/SettingsDataTransferActivity;->setContentView(I)V

    .line 59
    const v3, 0x7f090058

    invoke-virtual {p0, v3}, Lcom/waze/settings/SettingsDataTransferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/view/title/TitleBar;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_DATA_TRANSFER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, p0, v4}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/waze/settings/SettingsDataTransferActivity;->mConfigItems:Ljava/util/List;

    .line 63
    iget-object v3, p0, Lcom/waze/settings/SettingsDataTransferActivity;->mConfigItems:Ljava/util/List;

    new-instance v4, Lcom/waze/ConfigItem;

    const-string v5, "Download"

    const-string v6, "Download traffic jams"

    const-string v7, ""

    invoke-direct {v4, v5, v6, v7}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v3

    iget-object v4, p0, Lcom/waze/settings/SettingsDataTransferActivity;->mConfigItems:Ljava/util/List;

    const-string v5, "SettingsDataTransfer"

    invoke-virtual {v3, p0, v4, v5}, Lcom/waze/ConfigManager;->getConfig(Lcom/waze/ConfigManager$IConfigUpdater;Ljava/util/List;Ljava/lang/String;)V

    .line 66
    const v3, 0x7f090624

    invoke-virtual {p0, v3}, Lcom/waze/settings/SettingsDataTransferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/settings/SettingsDataTransferActivity;->mNativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_DATA_USED_IN_CURRENT_SESSION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v3, 0x7f090627

    invoke-virtual {p0, v3}, Lcom/waze/settings/SettingsDataTransferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/settings/SettingsDataTransferActivity;->mNativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_REFRESH_MAP_OF_MY_AREA:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const v3, 0x7f090629

    invoke-virtual {p0, v3}, Lcom/waze/settings/SettingsDataTransferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/settings/SettingsDataTransferActivity;->mNativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_CHANGES_WONT_AFFECT_ROUTING:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v3, 0x7f09062a

    invoke-virtual {p0, v3}, Lcom/waze/settings/SettingsDataTransferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/settings/SettingsDataTransferActivity;->mNativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_TRAFFIC_AND_UPDATES_WILL_NOT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v3, 0x7f090626

    invoke-virtual {p0, v3}, Lcom/waze/settings/SettingsDataTransferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/waze/settings/SettingsDataTransferActivity$2;

    invoke-direct {v4, p0}, Lcom/waze/settings/SettingsDataTransferActivity$2;-><init>(Lcom/waze/settings/SettingsDataTransferActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v3, p0, Lcom/waze/settings/SettingsDataTransferActivity;->mNativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v3}, Lcom/waze/NativeManager;->netMonCountNTV()I

    move-result v3

    div-int/lit16 v0, v3, 0x400

    .line 82
    .local v0, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " KB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, counter:Ljava/lang/String;
    const v3, 0x7f090625

    invoke-virtual {p0, v3}, Lcom/waze/settings/SettingsDataTransferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const v3, 0x7f090628

    invoke-virtual {p0, v3}, Lcom/waze/settings/SettingsDataTransferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/settings/SettingsCheckboxView;

    iput-object v3, p0, Lcom/waze/settings/SettingsDataTransferActivity;->downloadTrafficInfoView:Lcom/waze/settings/SettingsCheckboxView;

    .line 91
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_DOWNLOAD_TRAFFIC_INFO:Lcom/waze/strings/DisplayStrings;

    .line 92
    .local v2, displayStr2:Lcom/waze/strings/DisplayStrings;
    iget-object v3, p0, Lcom/waze/settings/SettingsDataTransferActivity;->downloadTrafficInfoView:Lcom/waze/settings/SettingsCheckboxView;

    invoke-static {v3, v2}, Lcom/waze/settings/SettingsUtils;->setCheckboxLanguageString(Lcom/waze/settings/SettingsCheckboxView;Lcom/waze/strings/DisplayStrings;)V

    .line 94
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
    .local p1, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/waze/ConfigItem;>;"
    const/4 v3, 0x0

    .line 38
    iget-object v1, p0, Lcom/waze/settings/SettingsDataTransferActivity;->downloadTrafficInfoView:Lcom/waze/settings/SettingsCheckboxView;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/ConfigItem;

    invoke-virtual {v0}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/waze/settings/SettingsCheckboxView;->setValue(Z)V

    .line 39
    const-string v0, "SettingsDataTransfer"

    iget-object v1, p0, Lcom/waze/settings/SettingsDataTransferActivity;->mConfigItems:Ljava/util/List;

    iget-object v2, p0, Lcom/waze/settings/SettingsDataTransferActivity;->downloadTrafficInfoView:Lcom/waze/settings/SettingsCheckboxView;

    invoke-static {v0, v1, v2, v3}, Lcom/waze/settings/SettingsUtils;->setCheckboxCallback(Ljava/lang/String;Ljava/util/List;Lcom/waze/settings/SettingsCheckboxView;I)V

    .line 40
    return-void
.end method
