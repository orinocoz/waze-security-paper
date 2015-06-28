.class public final Lcom/waze/install/TermsOfUseActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "TermsOfUseActivity.java"


# instance fields
.field private MailCheckBox:Lcom/waze/settings/SettingsCheckboxView;

.field private mIsCloseEnabled:Z

.field private nativeManager:Lcom/waze/NativeManager;

.field private nm:Lcom/waze/install/InstallNativeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/install/TermsOfUseActivity;->mIsCloseEnabled:Z

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/waze/install/TermsOfUseActivity;)Lcom/waze/install/InstallNativeManager;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/waze/install/TermsOfUseActivity;->nm:Lcom/waze/install/InstallNativeManager;

    return-object v0
.end method


# virtual methods
.method public GoogleTest()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const v4, 0x7f09071b

    const/4 v5, 0x1

    .line 34
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0, v5}, Lcom/waze/install/TermsOfUseActivity;->requestWindowFeature(I)Z

    .line 37
    const v2, 0x7f030117

    invoke-virtual {p0, v2}, Lcom/waze/install/TermsOfUseActivity;->setContentView(I)V

    .line 38
    invoke-static {}, Lcom/waze/NativeCanvas;->getInstance()Lcom/waze/NativeCanvas;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/waze/NativeCanvas;->setCancelSplashNeeded(Z)V

    .line 39
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/install/TermsOfUseActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 42
    :try_start_0
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, bm:Landroid/app/backup/BackupManager;
    new-instance v2, Lcom/waze/install/TermsOfUseActivity$1;

    invoke-direct {v2, p0}, Lcom/waze/install/TermsOfUseActivity$1;-><init>(Lcom/waze/install/TermsOfUseActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/backup/BackupManager;->requestRestore(Landroid/app/backup/RestoreObserver;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v0           #bm:Landroid/app/backup/BackupManager;
    :goto_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    .line 57
    const-string v3, "AGREEMENT"

    .line 56
    invoke-virtual {v2, v3, v6, v6, v5}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {p0, v4}, Lcom/waze/install/TermsOfUseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 63
    .local v1, termsOfUseText:Landroid/widget/TextView;
    const v2, 0x7f070044

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 69
    :goto_1
    const v2, 0x7f09071e

    invoke-virtual {p0, v2}, Lcom/waze/install/TermsOfUseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/install/TermsOfUseActivity$2;

    invoke-direct {v3, p0}, Lcom/waze/install/TermsOfUseActivity$2;-><init>(Lcom/waze/install/TermsOfUseActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v2, 0x7f09071c

    invoke-virtual {p0, v2}, Lcom/waze/install/TermsOfUseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/install/TermsOfUseActivity$3;

    invoke-direct {v3, p0}, Lcom/waze/install/TermsOfUseActivity$3;-><init>(Lcom/waze/install/TermsOfUseActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v2, 0x7f09071a

    invoke-virtual {p0, v2}, Lcom/waze/install/TermsOfUseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/waze/install/TermsOfUseActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 99
    const-string v4, "Waze\u2122 End User License Agreement"

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const v2, 0x7f09071f

    invoke-virtual {p0, v2}, Lcom/waze/install/TermsOfUseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/waze/install/TermsOfUseActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_ACCEPT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const v2, 0x7f09071d

    invoke-virtual {p0, v2}, Lcom/waze/install/TermsOfUseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/waze/install/TermsOfUseActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_DECLINE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-static {v1, v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 106
    new-instance v2, Lcom/waze/install/InstallNativeManager;

    invoke-direct {v2}, Lcom/waze/install/InstallNativeManager;-><init>()V

    iput-object v2, p0, Lcom/waze/install/TermsOfUseActivity;->nm:Lcom/waze/install/InstallNativeManager;

    .line 108
    invoke-virtual {p0}, Lcom/waze/install/TermsOfUseActivity;->GoogleTest()V

    .line 109
    return-void

    .line 66
    .end local v1           #termsOfUseText:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0, v4}, Lcom/waze/install/TermsOfUseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .restart local v1       #termsOfUseText:Landroid/widget/TextView;
    goto :goto_1

    .line 54
    .end local v1           #termsOfUseText:Landroid/widget/TextView;
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method
