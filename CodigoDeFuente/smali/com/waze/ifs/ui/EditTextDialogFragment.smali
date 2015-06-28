.class public Lcom/waze/ifs/ui/EditTextDialogFragment;
.super Landroid/app/Fragment;
.source "EditTextDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/ifs/ui/EditTextDialogFragment$IEditText;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mExplanation:Ljava/lang/String;

.field private mHintDs:Lcom/waze/strings/DisplayStrings;

.field private mInitial:Ljava/lang/String;

.field private mInputType:I

.field private mMaxLength:I

.field private mMinLines:I

.field private mSingleLine:Z

.field private mSubtitleDs:Lcom/waze/strings/DisplayStrings;

.field private mTitleDs:Lcom/waze/strings/DisplayStrings;

.field private mUseSpeech:Z

.field private r:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/waze/ifs/ui/EditTextDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/EditTextDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mTitleDs:Lcom/waze/strings/DisplayStrings;

    .line 40
    iput-object v0, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mSubtitleDs:Lcom/waze/strings/DisplayStrings;

    .line 41
    iput-object v0, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mHintDs:Lcom/waze/strings/DisplayStrings;

    .line 47
    iput v1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mMaxLength:I

    .line 48
    iput v1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mMinLines:I

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/waze/ifs/ui/EditTextDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/waze/ifs/ui/EditTextDialogFragment;->doDone()V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/ifs/ui/EditTextDialogFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mMaxLength:I

    return v0
.end method

.method private doDone()V
    .locals 3

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/waze/ifs/ui/EditTextDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 253
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 254
    invoke-virtual {p0}, Lcom/waze/ifs/ui/EditTextDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/waze/ifs/ui/EditTextDialogFragment$IEditText;

    iget-object v2, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/waze/ifs/ui/EditTextDialogFragment$IEditText;->textEdited(Ljava/lang/String;)V

    .line 255
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 238
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Navigate onActRes requestCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 239
    const-string v3, " Intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/16 v1, 0x4d2

    if-ne p1, v1, :cond_0

    .line 241
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 242
    const-string v1, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 243
    .local v0, matches:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 244
    iget-object v2, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    .end local v0           #matches:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f090062

    const/4 v7, 0x0

    .line 109
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 111
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 113
    .local v0, nm:Lcom/waze/NativeManager;
    if-eqz p3, :cond_3

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/waze/ifs/ui/EditTextDialogFragment;->TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".mTitleDs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    invoke-static {}, Lcom/waze/strings/DisplayStrings;->values()[Lcom/waze/strings/DisplayStrings;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/waze/ifs/ui/EditTextDialogFragment;->TAG:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".mTitleDs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mTitleDs:Lcom/waze/strings/DisplayStrings;

    .line 116
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/waze/ifs/ui/EditTextDialogFragment;->TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".mSubtitleDs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    invoke-static {}, Lcom/waze/strings/DisplayStrings;->values()[Lcom/waze/strings/DisplayStrings;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/waze/ifs/ui/EditTextDialogFragment;->TAG:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".mSubtitleDs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mSubtitleDs:Lcom/waze/strings/DisplayStrings;

    .line 118
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/waze/ifs/ui/EditTextDialogFragment;->TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".mHintDs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    invoke-static {}, Lcom/waze/strings/DisplayStrings;->values()[Lcom/waze/strings/DisplayStrings;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/waze/ifs/ui/EditTextDialogFragment;->TAG:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".mHintDs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mHintDs:Lcom/waze/strings/DisplayStrings;

    .line 120
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/waze/ifs/ui/EditTextDialogFragment;->TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".mInputType"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mInputType:I

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/waze/ifs/ui/EditTextDialogFragment;->TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".mMaxLength"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mMaxLength:I

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/waze/ifs/ui/EditTextDialogFragment;->TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".mMinLines"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mMinLines:I

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/waze/ifs/ui/EditTextDialogFragment;->TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".mUseSpeech"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mUseSpeech:Z

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mUseSpeech:Z

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/waze/ifs/ui/EditTextDialogFragment;->TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".mSingleLine"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mSingleLine:Z

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mSingleLine:Z

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/waze/ifs/ui/EditTextDialogFragment;->TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".mExplanation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mExplanation:Ljava/lang/String;

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/waze/ifs/ui/EditTextDialogFragment;->TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".mInitial"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mInitial:Ljava/lang/String;

    .line 129
    :cond_3
    const v4, 0x7f03004a

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->r:Landroid/view/View;

    .line 134
    iget-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mTitleDs:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, titleStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->r:Landroid/view/View;

    const v5, 0x7f090058

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/title/TitleBarTextButton;

    .line 136
    .local v2, titleButtonBar:Lcom/waze/view/title/TitleBarTextButton;
    invoke-virtual {p0}, Lcom/waze/ifs/ui/EditTextDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_DONE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Lcom/waze/view/title/TitleBarTextButton;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v4, Lcom/waze/ifs/ui/EditTextDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/waze/ifs/ui/EditTextDialogFragment$1;-><init>(Lcom/waze/ifs/ui/EditTextDialogFragment;)V

    invoke-virtual {v2, v4}, Lcom/waze/view/title/TitleBarTextButton;->setOnClickCloseListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mSubtitleDs:Lcom/waze/strings/DisplayStrings;

    if-eqz v4, :cond_4

    .line 147
    iget-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->r:Landroid/view/View;

    const v5, 0x7f09027f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/SettingsTitleText;

    .line 148
    .local v1, subView:Lcom/waze/settings/SettingsTitleText;
    iget-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mSubtitleDs:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1, v7}, Lcom/waze/settings/SettingsTitleText;->setVisibility(I)V

    .line 155
    .end local v1           #subView:Lcom/waze/settings/SettingsTitleText;
    :cond_4
    iget-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->r:Landroid/view/View;

    const v5, 0x7f090281

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    .line 156
    iget-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    new-instance v5, Lcom/waze/ifs/ui/EditTextDialogFragment$2;

    invoke-direct {v5, p0}, Lcom/waze/ifs/ui/EditTextDialogFragment$2;-><init>(Lcom/waze/ifs/ui/EditTextDialogFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 165
    iget-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    const/high16 v5, 0x2

    iget v6, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mInputType:I

    or-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 167
    iget-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mHintDs:Lcom/waze/strings/DisplayStrings;

    if-eqz v4, :cond_5

    .line 168
    iget-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mHintDs:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 171
    :cond_5
    iget-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mInitial:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 172
    iget-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mInitial:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 176
    :cond_6
    iget-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    iget-boolean v5, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mSingleLine:Z

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 177
    iget-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    iget v5, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mMinLines:I

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setMinLines(I)V

    .line 179
    iget v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mMaxLength:I

    if-lez v4, :cond_7

    .line 180
    iget-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    new-instance v5, Lcom/waze/ifs/ui/EditTextDialogFragment$3;

    invoke-direct {v5, p0}, Lcom/waze/ifs/ui/EditTextDialogFragment$3;-><init>(Lcom/waze/ifs/ui/EditTextDialogFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 197
    :cond_7
    iget-boolean v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mUseSpeech:Z

    if-eqz v4, :cond_a

    .line 198
    iget-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->r:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/waze/ifs/ui/EditTextDialogFragment$4;

    invoke-direct {v5, p0}, Lcom/waze/ifs/ui/EditTextDialogFragment$4;-><init>(Lcom/waze/ifs/ui/EditTextDialogFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    :goto_0
    iget-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mTitleDs:Lcom/waze/strings/DisplayStrings;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_CHIT_CHAT:Lcom/waze/strings/DisplayStrings;

    if-ne v4, v5, :cond_b

    .line 209
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_CHIT_CHATS_ARE_PUBLIC:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mExplanation:Ljava/lang/String;

    .line 213
    :cond_8
    :goto_1
    iget-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mExplanation:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 214
    iget-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->r:Landroid/view/View;

    const v5, 0x7f090282

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mExplanation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    :cond_9
    iget-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->r:Landroid/view/View;

    return-object v4

    .line 205
    :cond_a
    iget-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->r:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 210
    :cond_b
    iget-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mTitleDs:Lcom/waze/strings/DisplayStrings;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_MESSAGE:Lcom/waze/strings/DisplayStrings;

    if-ne v4, v5, :cond_8

    .line 211
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_MESSAGES_ARE_PRIVATE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mExplanation:Ljava/lang/String;

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 223
    iget-object v1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 225
    invoke-virtual {p0}, Lcom/waze/ifs/ui/EditTextDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 226
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 227
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 95
    iget-object v0, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mTitleDs:Lcom/waze/strings/DisplayStrings;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mTitleDs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mTitleDs:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1}, Lcom/waze/strings/DisplayStrings;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mSubtitleDs:Lcom/waze/strings/DisplayStrings;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mSubtitleDs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mSubtitleDs:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1}, Lcom/waze/strings/DisplayStrings;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mHintDs:Lcom/waze/strings/DisplayStrings;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mHintDs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mHintDs:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1}, Lcom/waze/strings/DisplayStrings;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mInputType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mInputType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mMaxLength"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mMaxLength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mMinLines"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mMinLines:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mUseSpeech"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mUseSpeech:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mSingleLine"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mSingleLine:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mExplanation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mExplanation:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mInitial"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mInitial:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public setExplanation(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mExplanation:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setHint(Lcom/waze/strings/DisplayStrings;)V
    .locals 0
    .parameter "ds"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mHintDs:Lcom/waze/strings/DisplayStrings;

    .line 62
    return-void
.end method

.method public setInitial(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mInitial:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setInputType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 65
    iput p1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mInputType:I

    .line 66
    return-void
.end method

.method public setMaxLength(I)V
    .locals 0
    .parameter "length"

    .prologue
    .line 89
    iput p1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mMaxLength:I

    .line 90
    return-void
.end method

.method public setMinLines(I)V
    .locals 0
    .parameter "lines"

    .prologue
    .line 85
    iput p1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mMinLines:I

    .line 86
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mSingleLine:Z

    .line 82
    return-void
.end method

.method public setSpeech(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mUseSpeech:Z

    .line 78
    return-void
.end method

.method public setSubtitle(Lcom/waze/strings/DisplayStrings;)V
    .locals 0
    .parameter "ds"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mSubtitleDs:Lcom/waze/strings/DisplayStrings;

    .line 58
    return-void
.end method

.method public setTitle(Lcom/waze/strings/DisplayStrings;)V
    .locals 0
    .parameter "ds"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/waze/ifs/ui/EditTextDialogFragment;->mTitleDs:Lcom/waze/strings/DisplayStrings;

    .line 54
    return-void
.end method

.method public speechRecognitionClicked(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 230
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    .line 232
    const-string v2, "free_form"

    .line 231
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const/16 v1, 0x4d2

    invoke-virtual {p0, v0, v1}, Lcom/waze/ifs/ui/EditTextDialogFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 234
    return-void
.end method
