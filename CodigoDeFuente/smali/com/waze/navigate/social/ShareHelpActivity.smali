.class public Lcom/waze/navigate/social/ShareHelpActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "ShareHelpActivity.java"


# instance fields
.field private mGotItButton:Landroid/widget/LinearLayout;

.field private mGotItText:Lcom/waze/view/text/WazeTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method

.method private initFieldsTexts()V
    .locals 3

    .prologue
    .line 47
    const v0, 0x7f090073

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/ShareHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    .line 48
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SHARE_RIDE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 49
    const v0, 0x7f090510

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/ShareHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 53
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SHARE_YOUR_DRIVE_WITH_FRIENDS_AND:Lcom/waze/strings/DisplayStrings;

    .line 52
    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const v0, 0x7f0906c1

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/ShareHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 59
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_FROM_THE_ETA_SCREEN_SIMPLY_ADD_FRIENDS_TO:Lcom/waze/strings/DisplayStrings;

    .line 58
    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/waze/navigate/social/ShareHelpActivity;->mGotItText:Lcom/waze/view/text/WazeTextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 61
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_START_DRIVING:Lcom/waze/strings/DisplayStrings;

    .line 60
    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method private initMembers()V
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f090512

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/ShareHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/text/WazeTextView;

    iput-object v0, p0, Lcom/waze/navigate/social/ShareHelpActivity;->mGotItText:Lcom/waze/view/text/WazeTextView;

    .line 79
    const v0, 0x7f090511

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/ShareHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/waze/navigate/social/ShareHelpActivity;->mGotItButton:Landroid/widget/LinearLayout;

    .line 81
    return-void
.end method

.method private setOnClickListeners()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/waze/navigate/social/ShareHelpActivity;->mGotItButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/waze/navigate/social/ShareHelpActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/ShareHelpActivity$1;-><init>(Lcom/waze/navigate/social/ShareHelpActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 37
    if-eqz p2, :cond_0

    .line 39
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/ShareHelpActivity;->setResult(I)V

    .line 40
    invoke-virtual {p0}, Lcom/waze/navigate/social/ShareHelpActivity;->finish()V

    .line 42
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 43
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f030107

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/ShareHelpActivity;->setContentView(I)V

    .line 30
    invoke-direct {p0}, Lcom/waze/navigate/social/ShareHelpActivity;->initMembers()V

    .line 31
    invoke-direct {p0}, Lcom/waze/navigate/social/ShareHelpActivity;->setOnClickListeners()V

    .line 32
    invoke-direct {p0}, Lcom/waze/navigate/social/ShareHelpActivity;->initFieldsTexts()V

    .line 33
    return-void
.end method
