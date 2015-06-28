.class public Lcom/waze/rtalerts/RTAlertsCommentsEditor;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "RTAlertsCommentsEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/rtalerts/RTAlertsCommentsEditor$CommentsEditorTitleBar;
    }
.end annotation


# instance fields
.field private mAlertId:I

.field private mEditBox:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/rtalerts/RTAlertsCommentsEditor;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->mEditBox:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/rtalerts/RTAlertsCommentsEditor;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->done(Ljava/lang/String;)V

    return-void
.end method

.method private done(Ljava/lang/String;)V
    .locals 2
    .parameter "commentText"

    .prologue
    .line 136
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-static {}, Lcom/waze/rtalerts/RTAlertsNativeManager;->getInstance()Lcom/waze/rtalerts/RTAlertsNativeManager;

    move-result-object v0

    .line 139
    .local v0, mgr:Lcom/waze/rtalerts/RTAlertsNativeManager;
    iget v1, p0, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->mAlertId:I

    invoke-virtual {v0, v1, p1}, Lcom/waze/rtalerts/RTAlertsNativeManager;->postComment(ILjava/lang/String;)V

    .line 140
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->setResult(I)V

    .line 141
    invoke-virtual {p0}, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->finish()V

    .line 148
    .end local v0           #mgr:Lcom/waze/rtalerts/RTAlertsNativeManager;
    :goto_0
    return-void

    .line 145
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->setResult(I)V

    .line 146
    invoke-virtual {p0}, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->finish()V

    goto :goto_0
.end method

.method public static start(Landroid/app/Activity;I)V
    .locals 2
    .parameter "contextForResult"
    .parameter "alertId"

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/rtalerts/RTAlertsCommentsEditor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Comment alert id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    const v1, 0x8005

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 131
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, -0x1

    .line 93
    const-string v2, "WAZE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Navigate onActRes requestCode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resultCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/16 v2, 0x4d2

    if-ne p1, v2, :cond_1

    .line 95
    if-ne p2, v5, :cond_0

    .line 96
    const-string v2, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 97
    .local v0, matches:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 98
    iget-object v3, p0, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->mEditBox:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 100
    .local v1, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->mEditBox:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 107
    .end local v0           #matches:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #mgr:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    if-ne p2, v5, :cond_0

    .line 104
    invoke-virtual {p0, v5}, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->setResult(I)V

    .line 105
    invoke-virtual {p0}, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v2, 0x7f0300d6

    invoke-virtual {p0, v2}, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Comment alert id"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->mAlertId:I

    .line 56
    const v2, 0x7f090058

    invoke-virtual {p0, v2}, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/title/TitleBar;

    .line 57
    .local v1, titleBar:Lcom/waze/view/title/TitleBar;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_COMMENT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, title:Ljava/lang/String;
    const v2, 0x7f070049

    invoke-virtual {v1, p0, v0, v2}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 62
    const v2, 0x7f090061

    invoke-virtual {p0, v2}, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->mEditBox:Landroid/widget/EditText;

    .line 63
    iget-object v2, p0, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->mEditBox:Landroid/widget/EditText;

    invoke-static {p0, v2}, Lcom/waze/utils/EditTextUtils;->checkTypeLockOnCreate(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 64
    iget-object v2, p0, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->mEditBox:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->mEditBox:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/waze/utils/EditTextUtils;->getKeyboardLockOnTouchListener(Landroid/content/Context;Landroid/widget/EditText;Lcom/waze/utils/EditTextUtils$OnTouchListenerDoneListener;)Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 65
    iget-object v2, p0, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->mEditBox:Landroid/widget/EditText;

    new-instance v3, Lcom/waze/rtalerts/RTAlertsCommentsEditor$1;

    invoke-direct {v3, p0}, Lcom/waze/rtalerts/RTAlertsCommentsEditor$1;-><init>(Lcom/waze/rtalerts/RTAlertsCommentsEditor;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 74
    iget-object v2, p0, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->mEditBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 75
    const v2, 0x7f090062

    invoke-virtual {p0, v2}, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/rtalerts/RTAlertsCommentsEditor$2;

    invoke-direct {v3, p0}, Lcom/waze/rtalerts/RTAlertsCommentsEditor$2;-><init>(Lcom/waze/rtalerts/RTAlertsCommentsEditor;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->mEditBox:Landroid/widget/EditText;

    .line 155
    return-void
.end method

.method public speechRecognitionClicked(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 84
    const-string v1, "WAZE"

    const-string v2, "SR pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    .line 87
    const-string v2, "free_form"

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const/16 v1, 0x4d2

    invoke-virtual {p0, v0, v1}, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->startActivityForResult(Landroid/content/Intent;I)V

    .line 89
    return-void
.end method
