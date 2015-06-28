.class public Lcom/waze/phone/PhoneRequestAccessDialog;
.super Landroid/app/Dialog;
.source "PhoneRequestAccessDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/phone/PhoneRequestAccessDialog$PhoneRequestAccessResultListener;
    }
.end annotation


# instance fields
.field private mGotItButton:Landroid/widget/LinearLayout;

.field private mGotItText:Lcom/waze/view/text/WazeTextView;

.field private final mListener:Lcom/waze/phone/PhoneRequestAccessDialog$PhoneRequestAccessResultListener;

.field mbOkClicked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/waze/phone/PhoneRequestAccessDialog$PhoneRequestAccessResultListener;)V
    .locals 1
    .parameter "context"
    .parameter "l"

    .prologue
    .line 35
    const v0, 0x7f06000f

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    iput-object p2, p0, Lcom/waze/phone/PhoneRequestAccessDialog;->mListener:Lcom/waze/phone/PhoneRequestAccessDialog$PhoneRequestAccessResultListener;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/phone/PhoneRequestAccessDialog;->mbOkClicked:Z

    .line 38
    return-void
.end method

.method private initFieldsTexts()V
    .locals 5

    .prologue
    .line 56
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 57
    .local v1, nm:Lcom/waze/NativeManager;
    const v2, 0x7f09050f

    invoke-virtual {p0, v2}, Lcom/waze/phone/PhoneRequestAccessDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 58
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_ALLOW_ACCESS_TO_CONTACTS:Lcom/waze/strings/DisplayStrings;

    .line 57
    invoke-virtual {v1, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 58
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const v2, 0x7f090510

    invoke-virtual {p0, v2}, Lcom/waze/phone/PhoneRequestAccessDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 60
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_ALLOW_WAZE_TO_ACCESS_CONTACTS_DESCRIPTION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v2, p0, Lcom/waze/phone/PhoneRequestAccessDialog;->mGotItText:Lcom/waze/view/text/WazeTextView;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_ALLOW_ACCESS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const v2, 0x7f090513

    invoke-virtual {p0, v2}, Lcom/waze/phone/PhoneRequestAccessDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    .local v0, learnMore:Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_LEARN_MORE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 68
    new-instance v2, Lcom/waze/phone/PhoneRequestAccessDialog$1;

    invoke-direct {v2, p0}, Lcom/waze/phone/PhoneRequestAccessDialog$1;-><init>(Lcom/waze/phone/PhoneRequestAccessDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v2, 0x7f090514

    invoke-virtual {p0, v2}, Lcom/waze/phone/PhoneRequestAccessDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/phone/PhoneRequestAccessDialog$2;

    invoke-direct {v3, p0}, Lcom/waze/phone/PhoneRequestAccessDialog$2;-><init>(Lcom/waze/phone/PhoneRequestAccessDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method

.method private initMembers()V
    .locals 1

    .prologue
    .line 110
    const v0, 0x7f090512

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneRequestAccessDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/text/WazeTextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneRequestAccessDialog;->mGotItText:Lcom/waze/view/text/WazeTextView;

    .line 111
    const v0, 0x7f090511

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneRequestAccessDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/waze/phone/PhoneRequestAccessDialog;->mGotItButton:Landroid/widget/LinearLayout;

    .line 113
    return-void
.end method

.method private setOnClickListeners()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/waze/phone/PhoneRequestAccessDialog;->mGotItButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/waze/phone/PhoneRequestAccessDialog$3;

    invoke-direct {v1, p0}, Lcom/waze/phone/PhoneRequestAccessDialog$3;-><init>(Lcom/waze/phone/PhoneRequestAccessDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/waze/phone/PhoneRequestAccessDialog;->mListener:Lcom/waze/phone/PhoneRequestAccessDialog$PhoneRequestAccessResultListener;

    iget-boolean v1, p0, Lcom/waze/phone/PhoneRequestAccessDialog;->mbOkClicked:Z

    invoke-interface {v0, v1}, Lcom/waze/phone/PhoneRequestAccessDialog$PhoneRequestAccessResultListener;->onResult(Z)V

    .line 106
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 107
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 42
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f0300a7

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneRequestAccessDialog;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/waze/phone/PhoneRequestAccessDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 47
    const-string v0, "ALLOW_CONTACTS_ACCESS_SHOWN"

    invoke-static {v0, v2, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/waze/phone/PhoneRequestAccessDialog;->initMembers()V

    .line 50
    invoke-direct {p0}, Lcom/waze/phone/PhoneRequestAccessDialog;->setOnClickListeners()V

    .line 51
    invoke-direct {p0}, Lcom/waze/phone/PhoneRequestAccessDialog;->initFieldsTexts()V

    .line 52
    return-void
.end method
