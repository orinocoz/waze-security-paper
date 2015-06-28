.class public Lcom/waze/EditBox;
.super Landroid/widget/EditText;
.source "EditBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/EditBox$EditBoxCallback;
    }
.end annotation


# static fields
.field public static final WAZE_EDITBOX_FLAG_PASSWORD:I = 0x1

.field public static final WAZE_EDITBOX_FLAG_SPEECHTT:I = 0x2

.field public static WAZE_EDITBOX_TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/waze/EditBox$EditBoxCallback;

.field private mContext:Lcom/waze/MainActivity;

.field private mFlags:I

.field private mImeAction:I

.field private mStayOnAction:Z

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 373
    const-string v0, "@WazeEditBox"

    sput-object v0, Lcom/waze/EditBox;->WAZE_EDITBOX_TAG:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "aContext"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 366
    iput-object v1, p0, Lcom/waze/EditBox;->mContext:Lcom/waze/MainActivity;

    .line 367
    iput v0, p0, Lcom/waze/EditBox;->mImeAction:I

    .line 368
    iput-boolean v0, p0, Lcom/waze/EditBox;->mStayOnAction:Z

    .line 369
    iput-object v1, p0, Lcom/waze/EditBox;->mCallback:Lcom/waze/EditBox$EditBoxCallback;

    .line 370
    iput-object v1, p0, Lcom/waze/EditBox;->mValue:Ljava/lang/String;

    .line 371
    iput v0, p0, Lcom/waze/EditBox;->mFlags:I

    .line 44
    invoke-virtual {p0, p1}, Lcom/waze/EditBox;->Init(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLjava/lang/String;Lcom/waze/EditBox$EditBoxCallback;)V
    .locals 2
    .parameter "aContext"
    .parameter "aImeAction"
    .parameter "aCloseOnAction"
    .parameter "aValue"
    .parameter "aCallback"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 366
    iput-object v1, p0, Lcom/waze/EditBox;->mContext:Lcom/waze/MainActivity;

    .line 367
    iput v0, p0, Lcom/waze/EditBox;->mImeAction:I

    .line 368
    iput-boolean v0, p0, Lcom/waze/EditBox;->mStayOnAction:Z

    .line 369
    iput-object v1, p0, Lcom/waze/EditBox;->mCallback:Lcom/waze/EditBox$EditBoxCallback;

    .line 370
    iput-object v1, p0, Lcom/waze/EditBox;->mValue:Ljava/lang/String;

    .line 371
    iput v0, p0, Lcom/waze/EditBox;->mFlags:I

    .line 58
    invoke-virtual {p0, p1}, Lcom/waze/EditBox;->Init(Landroid/content/Context;)V

    .line 60
    invoke-virtual {p0, p2}, Lcom/waze/EditBox;->setEditBoxAction(I)V

    .line 61
    invoke-virtual {p0, p3}, Lcom/waze/EditBox;->setEditBoxStayOnAction(Z)V

    .line 62
    invoke-virtual {p0, p4}, Lcom/waze/EditBox;->setEditBoxValue(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p5}, Lcom/waze/EditBox;->setEditBoxCallback(Lcom/waze/EditBox$EditBoxCallback;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "aContext"
    .parameter "aAttrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 366
    iput-object v1, p0, Lcom/waze/EditBox;->mContext:Lcom/waze/MainActivity;

    .line 367
    iput v0, p0, Lcom/waze/EditBox;->mImeAction:I

    .line 368
    iput-boolean v0, p0, Lcom/waze/EditBox;->mStayOnAction:Z

    .line 369
    iput-object v1, p0, Lcom/waze/EditBox;->mCallback:Lcom/waze/EditBox$EditBoxCallback;

    .line 370
    iput-object v1, p0, Lcom/waze/EditBox;->mValue:Ljava/lang/String;

    .line 371
    iput v0, p0, Lcom/waze/EditBox;->mFlags:I

    .line 50
    invoke-virtual {p0, p1}, Lcom/waze/EditBox;->Init(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/waze/EditBox;)I
    .locals 1
    .parameter

    .prologue
    .line 367
    iget v0, p0, Lcom/waze/EditBox;->mImeAction:I

    return v0
.end method

.method static synthetic access$1(Lcom/waze/EditBox;)Z
    .locals 1
    .parameter

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/waze/EditBox;->mStayOnAction:Z

    return v0
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 3

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/waze/EditBox;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 357
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    return-object v0
.end method


# virtual methods
.method protected ActionHandler()V
    .locals 4

    .prologue
    .line 314
    iget-object v1, p0, Lcom/waze/EditBox;->mCallback:Lcom/waze/EditBox$EditBoxCallback;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/waze/EditBox;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/waze/EditBox$EditBoxCallback;->Post(ZLjava/lang/String;)V

    .line 315
    iget-boolean v1, p0, Lcom/waze/EditBox;->mStayOnAction:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/waze/EditBox;->mContext:Lcom/waze/MainActivity;

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/waze/EditBox;->mContext:Lcom/waze/MainActivity;

    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 318
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    invoke-virtual {v0}, Lcom/waze/LayoutManager;->HideEditBox()V

    .line 320
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :cond_0
    return-void
.end method

.method public HideSoftInput()V
    .locals 3

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/waze/EditBox;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/waze/EditBox;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 157
    return-void
.end method

.method protected Init(Landroid/content/Context;)V
    .locals 4
    .parameter "aContext"

    .prologue
    .line 258
    instance-of v3, p1, Lcom/waze/MainActivity;

    if-eqz v3, :cond_0

    .line 259
    check-cast p1, Lcom/waze/MainActivity;

    .end local p1
    iput-object p1, p0, Lcom/waze/EditBox;->mContext:Lcom/waze/MainActivity;

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/waze/EditBox;->setSingleLine()V

    .line 262
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/waze/EditBox;->setFocusableInTouchMode(Z)V

    .line 263
    const v1, 0x10001

    .line 264
    .local v1, inputType:I
    invoke-virtual {p0, v1}, Lcom/waze/EditBox;->setInputType(I)V

    .line 265
    sget-object v3, Lcom/waze/EditBox;->WAZE_EDITBOX_TAG:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/waze/EditBox;->setTag(Ljava/lang/Object;)V

    .line 269
    new-instance v0, Lcom/waze/EditBox$1;

    invoke-direct {v0, p0}, Lcom/waze/EditBox$1;-><init>(Lcom/waze/EditBox;)V

    .line 285
    .local v0, editorActionListener:Landroid/widget/TextView$OnEditorActionListener;
    invoke-virtual {p0, v0}, Lcom/waze/EditBox;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 289
    new-instance v2, Lcom/waze/EditBox$2;

    invoke-direct {v2, p0}, Lcom/waze/EditBox$2;-><init>(Lcom/waze/EditBox;)V

    .line 304
    .local v2, textWatcher:Landroid/text/TextWatcher;
    invoke-virtual {p0, v2}, Lcom/waze/EditBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 305
    return-void
.end method

.method protected PrepareSpeechTTHandler()V
    .locals 5

    .prologue
    .line 327
    new-instance v1, Lcom/waze/EditBox$3;

    invoke-direct {v1, p0}, Lcom/waze/EditBox$3;-><init>(Lcom/waze/EditBox;)V

    .line 337
    .local v1, speechTTCb:Lcom/waze/SpeechttManagerBase$Callback;
    new-instance v2, Lcom/waze/EditBox$4;

    invoke-direct {v2, p0, v1}, Lcom/waze/EditBox$4;-><init>(Lcom/waze/EditBox;Lcom/waze/SpeechttManagerBase$Callback;)V

    .line 345
    .local v2, voiceBtnListener:Landroid/view/View$OnClickListener;
    invoke-virtual {p0}, Lcom/waze/EditBox;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090285

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 346
    .local v0, btn:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    :cond_0
    return-void
.end method

.method public ShowSoftInput()V
    .locals 2

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/waze/EditBox;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 146
    invoke-direct {p0}, Lcom/waze/EditBox;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 147
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "aEvent"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 185
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 208
    :goto_0
    return v1

    .line 191
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 200
    :sswitch_0
    iget-object v3, p0, Lcom/waze/EditBox;->mCallback:Lcom/waze/EditBox$EditBoxCallback;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/waze/EditBox$EditBoxCallback;->Post(ZLjava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/waze/EditBox;->mContext:Lcom/waze/MainActivity;

    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 202
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    invoke-virtual {v0}, Lcom/waze/LayoutManager;->HideEditBox()V

    move v1, v2

    .line 204
    goto :goto_0

    .line 195
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :sswitch_1
    invoke-virtual {p0}, Lcom/waze/EditBox;->ActionHandler()V

    move v1, v2

    .line 196
    goto :goto_0

    .line 191
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "aKeyCode"
    .parameter "aEvent"

    .prologue
    .line 166
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 175
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 170
    :pswitch_0
    invoke-virtual {p0}, Lcom/waze/EditBox;->ActionHandler()V

    .line 171
    const/4 v0, 0x1

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method

.method public setEditBoxAction(I)V
    .locals 2
    .parameter "aImeAction"

    .prologue
    .line 83
    iput p1, p0, Lcom/waze/EditBox;->mImeAction:I

    .line 85
    invoke-virtual {p0}, Lcom/waze/EditBox;->getImeOptions()I

    move-result v0

    .line 86
    .local v0, imeOptions:I
    iget v1, p0, Lcom/waze/EditBox;->mImeAction:I

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/waze/EditBox;->setImeOptions(I)V

    .line 87
    return-void
.end method

.method public setEditBoxCallback(Lcom/waze/EditBox$EditBoxCallback;)V
    .locals 0
    .parameter "aCallback"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/waze/EditBox;->mCallback:Lcom/waze/EditBox$EditBoxCallback;

    .line 137
    return-void
.end method

.method public setEditBoxFlags(I)V
    .locals 2
    .parameter "aFlags"

    .prologue
    .line 95
    iput p1, p0, Lcom/waze/EditBox;->mFlags:I

    .line 100
    const/4 v0, 0x1

    .line 101
    .local v0, inputType:I
    iget v1, p0, Lcom/waze/EditBox;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_0

    .line 103
    or-int/lit16 v0, v0, 0x80

    .line 105
    :cond_0
    iget v1, p0, Lcom/waze/EditBox;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/waze/EditBox;->PrepareSpeechTTHandler()V

    .line 109
    :cond_1
    invoke-virtual {p0, v0}, Lcom/waze/EditBox;->setInputType(I)V

    .line 110
    return-void
.end method

.method public setEditBoxStayOnAction(Z)V
    .locals 0
    .parameter "aStayOnAction"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/waze/EditBox;->mStayOnAction:Z

    .line 119
    return-void
.end method

.method public setEditBoxValue(Ljava/lang/String;)V
    .locals 1
    .parameter "aValue"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/waze/EditBox;->mValue:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/waze/EditBox;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/waze/EditBox;->setText(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method
