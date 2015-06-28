.class public Lcom/waze/reports/SimpleChoiceFragment;
.super Landroid/app/Fragment;
.source "SimpleChoiceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/reports/SimpleChoiceFragment$ISimplyChoose;,
        Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllowComment:Z

.field private mChoice:Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;

.field private mChoices:[Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;

.field private mEditText:Landroid/widget/EditText;

.field private mHintDs:Lcom/waze/strings/DisplayStrings;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInputType:I

.field private mSelectedView:Landroid/view/View;

.field private mSingleLine:Z

.field private mSubtitleDs:Lcom/waze/strings/DisplayStrings;

.field private mTitleDs:Lcom/waze/strings/DisplayStrings;

.field private r:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/waze/reports/SimpleChoiceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/reports/SimpleChoiceFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/SimpleChoiceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/waze/reports/SimpleChoiceFragment;->doDone()V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/reports/SimpleChoiceFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/waze/reports/SimpleChoiceFragment;->mSelectedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/reports/SimpleChoiceFragment;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/waze/reports/SimpleChoiceFragment;->mSelectedView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$3(Lcom/waze/reports/SimpleChoiceFragment;Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/waze/reports/SimpleChoiceFragment;->mChoice:Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;

    return-void
.end method

.method private addChoice(Landroid/view/ViewGroup;Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;ZZ)Landroid/view/View;
    .locals 8
    .parameter "parent"
    .parameter "choice"
    .parameter "isTop"
    .parameter "isBottom"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 192
    iget-object v4, p0, Lcom/waze/reports/SimpleChoiceFragment;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0300f3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 194
    .local v3, view:Landroid/view/View;
    const v4, 0x7f09062d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/text/WazeTextView;

    .line 195
    .local v1, itemText:Lcom/waze/view/text/WazeTextView;
    iget-object v4, p2, Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;->display:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    const v4, 0x7f09062b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 200
    .local v0, container:Landroid/view/View;
    if-eqz p4, :cond_0

    .line 201
    const v4, 0x7f020223

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 207
    :goto_0
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 209
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 211
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 212
    .local v2, p:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/waze/reports/SimpleChoiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 213
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    const v4, 0x7f09065d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 217
    new-instance v4, Lcom/waze/reports/SimpleChoiceFragment$3;

    invoke-direct {v4, p0, v3, p2}, Lcom/waze/reports/SimpleChoiceFragment$3;-><init>(Lcom/waze/reports/SimpleChoiceFragment;Landroid/view/View;Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    return-object v3

    .line 202
    .end local v2           #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    if-eqz p3, :cond_1

    .line 203
    const v4, 0x7f020226

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 205
    :cond_1
    const v4, 0x7f020224

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private doDone()V
    .locals 4

    .prologue
    .line 235
    iget-object v1, p0, Lcom/waze/reports/SimpleChoiceFragment;->mChoice:Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;

    if-nez v1, :cond_0

    .line 241
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/waze/reports/SimpleChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 239
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/waze/reports/SimpleChoiceFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 240
    invoke-virtual {p0}, Lcom/waze/reports/SimpleChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/waze/reports/SimpleChoiceFragment$ISimplyChoose;

    iget-object v2, p0, Lcom/waze/reports/SimpleChoiceFragment;->mChoice:Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;

    iget-object v3, p0, Lcom/waze/reports/SimpleChoiceFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/waze/reports/SimpleChoiceFragment$ISimplyChoose;->choiceMade(Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v11, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 105
    iput-object p1, p0, Lcom/waze/reports/SimpleChoiceFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 106
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    .line 108
    .local v2, nm:Lcom/waze/NativeManager;
    if-eqz p3, :cond_0

    .line 109
    invoke-static {}, Lcom/waze/strings/DisplayStrings;->values()[Lcom/waze/strings/DisplayStrings;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/waze/reports/SimpleChoiceFragment;->TAG:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".mTitleDs"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    aget-object v6, v6, v9

    iput-object v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->mTitleDs:Lcom/waze/strings/DisplayStrings;

    .line 110
    invoke-static {}, Lcom/waze/strings/DisplayStrings;->values()[Lcom/waze/strings/DisplayStrings;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/waze/reports/SimpleChoiceFragment;->TAG:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".mSubtitleDs"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    aget-object v6, v6, v9

    iput-object v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->mSubtitleDs:Lcom/waze/strings/DisplayStrings;

    .line 111
    invoke-static {}, Lcom/waze/strings/DisplayStrings;->values()[Lcom/waze/strings/DisplayStrings;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/waze/reports/SimpleChoiceFragment;->TAG:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".mHintDs"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    aget-object v6, v6, v9

    iput-object v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->mHintDs:Lcom/waze/strings/DisplayStrings;

    .line 112
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/waze/reports/SimpleChoiceFragment;->TAG:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".mChoices"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, [Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;

    iput-object v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->mChoices:[Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;

    .line 113
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/waze/reports/SimpleChoiceFragment;->TAG:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".mInputType"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->mInputType:I

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/waze/reports/SimpleChoiceFragment;->TAG:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".mAllowComment"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-boolean v9, p0, Lcom/waze/reports/SimpleChoiceFragment;->mAllowComment:Z

    invoke-virtual {p3, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->mAllowComment:Z

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/waze/reports/SimpleChoiceFragment;->TAG:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".mSingleLine"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-boolean v9, p0, Lcom/waze/reports/SimpleChoiceFragment;->mSingleLine:Z

    invoke-virtual {p3, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->mSingleLine:Z

    .line 118
    :cond_0
    const v6, 0x7f03010c

    invoke-virtual {p1, v6, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->r:Landroid/view/View;

    .line 123
    iget-object v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->mTitleDs:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, titleStr:Ljava/lang/String;
    iget-object v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->r:Landroid/view/View;

    const v9, 0x7f090058

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/view/title/TitleBarTextButton;

    .line 125
    .local v4, titleButtonBar:Lcom/waze/view/title/TitleBarTextButton;
    invoke-virtual {p0}, Lcom/waze/reports/SimpleChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_DONE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v6, v5, v9}, Lcom/waze/view/title/TitleBarTextButton;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v6, Lcom/waze/reports/SimpleChoiceFragment$1;

    invoke-direct {v6, p0}, Lcom/waze/reports/SimpleChoiceFragment$1;-><init>(Lcom/waze/reports/SimpleChoiceFragment;)V

    invoke-virtual {v4, v6}, Lcom/waze/view/title/TitleBarTextButton;->setOnClickCloseListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->mSubtitleDs:Lcom/waze/strings/DisplayStrings;

    if-eqz v6, :cond_1

    .line 136
    iget-object v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->r:Landroid/view/View;

    const v9, 0x7f09027f

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/settings/SettingsTitleText;

    .line 137
    .local v3, subView:Lcom/waze/settings/SettingsTitleText;
    iget-object v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->mSubtitleDs:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v3, v8}, Lcom/waze/settings/SettingsTitleText;->setVisibility(I)V

    .line 144
    .end local v3           #subView:Lcom/waze/settings/SettingsTitleText;
    :cond_1
    iget-object v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->r:Landroid/view/View;

    const v9, 0x7f0906e8

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 146
    .local v0, choicesContainer:Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->mChoices:[Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->mChoices:[Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;

    array-length v6, v6

    if-lez v6, :cond_6

    .line 147
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 148
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->mChoices:[Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;

    array-length v6, v6

    if-lt v1, v6, :cond_3

    .line 157
    .end local v1           #i:I
    :goto_1
    iget-boolean v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->mAllowComment:Z

    if-eqz v6, :cond_7

    .line 158
    iget-object v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->r:Landroid/view/View;

    const v7, 0x7f090281

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->mEditText:Landroid/widget/EditText;

    .line 159
    iget-object v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->mEditText:Landroid/widget/EditText;

    new-instance v7, Lcom/waze/reports/SimpleChoiceFragment$2;

    invoke-direct {v7, p0}, Lcom/waze/reports/SimpleChoiceFragment$2;-><init>(Lcom/waze/reports/SimpleChoiceFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 168
    iget-object v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->mEditText:Landroid/widget/EditText;

    iget v7, p0, Lcom/waze/reports/SimpleChoiceFragment;->mInputType:I

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 172
    :goto_2
    iget-object v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->mHintDs:Lcom/waze/strings/DisplayStrings;

    if-eqz v6, :cond_2

    .line 173
    iget-object v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->mEditText:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/waze/reports/SimpleChoiceFragment;->mHintDs:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 176
    :cond_2
    iget-object v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->mEditText:Landroid/widget/EditText;

    iget-boolean v7, p0, Lcom/waze/reports/SimpleChoiceFragment;->mSingleLine:Z

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 178
    iget-object v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->r:Landroid/view/View;

    return-object v6

    .line 149
    .restart local v1       #i:I
    :cond_3
    iget-object v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->mChoices:[Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;

    aget-object v10, v6, v1

    if-nez v1, :cond_4

    move v6, v7

    :goto_3
    iget-object v9, p0, Lcom/waze/reports/SimpleChoiceFragment;->mChoices:[Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;

    array-length v9, v9

    if-ne v1, v9, :cond_5

    move v9, v7

    :goto_4
    invoke-direct {p0, v0, v10, v6, v9}, Lcom/waze/reports/SimpleChoiceFragment;->addChoice(Landroid/view/ViewGroup;Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;ZZ)Landroid/view/View;

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v6, v8

    .line 149
    goto :goto_3

    :cond_5
    move v9, v8

    goto :goto_4

    .line 152
    .end local v1           #i:I
    :cond_6
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 153
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 170
    :cond_7
    iget-object v6, p0, Lcom/waze/reports/SimpleChoiceFragment;->r:Landroid/view/View;

    const v7, 0x7f0906e9

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 184
    iget-object v0, p0, Lcom/waze/reports/SimpleChoiceFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 185
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/SimpleChoiceFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mTitleDs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/SimpleChoiceFragment;->mTitleDs:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1}, Lcom/waze/strings/DisplayStrings;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/SimpleChoiceFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mSubtitleDs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/SimpleChoiceFragment;->mSubtitleDs:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1}, Lcom/waze/strings/DisplayStrings;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/SimpleChoiceFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mHintDs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/SimpleChoiceFragment;->mHintDs:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1}, Lcom/waze/strings/DisplayStrings;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/SimpleChoiceFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mChoices"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/SimpleChoiceFragment;->mChoices:[Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/SimpleChoiceFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mInputType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/waze/reports/SimpleChoiceFragment;->mInputType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/SimpleChoiceFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mAllowComment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/waze/reports/SimpleChoiceFragment;->mAllowComment:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/SimpleChoiceFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mSingleLine"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/waze/reports/SimpleChoiceFragment;->mSingleLine:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    return-void
.end method

.method public setAllowComment(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/waze/reports/SimpleChoiceFragment;->mAllowComment:Z

    .line 83
    return-void
.end method

.method public setChoices([Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;)V
    .locals 0
    .parameter "choices"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/waze/reports/SimpleChoiceFragment;->mChoices:[Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;

    .line 75
    return-void
.end method

.method public setHint(Lcom/waze/strings/DisplayStrings;)V
    .locals 0
    .parameter "ds"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/waze/reports/SimpleChoiceFragment;->mHintDs:Lcom/waze/strings/DisplayStrings;

    .line 71
    return-void
.end method

.method public setInputType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 78
    iput p1, p0, Lcom/waze/reports/SimpleChoiceFragment;->mInputType:I

    .line 79
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/waze/reports/SimpleChoiceFragment;->mSingleLine:Z

    .line 87
    return-void
.end method

.method public setSubtitle(Lcom/waze/strings/DisplayStrings;)V
    .locals 0
    .parameter "ds"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/waze/reports/SimpleChoiceFragment;->mSubtitleDs:Lcom/waze/strings/DisplayStrings;

    .line 67
    return-void
.end method

.method public setTitle(Lcom/waze/strings/DisplayStrings;)V
    .locals 0
    .parameter "ds"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/waze/reports/SimpleChoiceFragment;->mTitleDs:Lcom/waze/strings/DisplayStrings;

    .line 63
    return-void
.end method
