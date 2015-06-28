.class public Lcom/waze/ifs/ui/EditTextDialogActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "EditTextDialogActivity.java"


# static fields
.field public static final ARG_CALLBACK:Ljava/lang/String;

.field public static final ARG_CONTEXT:Ljava/lang/String;

.field public static final ARG_EXPLAIN:Ljava/lang/String;

.field public static final ARG_HINT_DS:Ljava/lang/String;

.field public static final ARG_INITIAL:Ljava/lang/String;

.field public static final ARG_MIN_LINES:Ljava/lang/String;

.field public static final ARG_NATIVE:Ljava/lang/String;

.field public static final ARG_SINGLE_LINE:Ljava/lang/String;

.field public static final ARG_SPEECH:Ljava/lang/String;

.field public static final ARG_SUBTITLE_DS:Ljava/lang/String;

.field public static final ARG_TITLE_DS:Ljava/lang/String;

.field public static final ARG_TYPE:Ljava/lang/String;

.field public static final RET_VAL:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mIsNative:Z

.field private mNativeCallback:J

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const-class v0, Lcom/waze/ifs/ui/EditTextDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/EditTextDialogActivity;->TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.title_ds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_TITLE_DS:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.subtitle_ds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_SUBTITLE_DS:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_TYPE:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.native"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_NATIVE:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.callback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_CALLBACK:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.context"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_CONTEXT:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.speech"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_SPEECH:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.hint_ds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_HINT_DS:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.initial"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_INITIAL:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.single_line"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_SINGLE_LINE:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.nin_lines"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_MIN_LINES:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.explain"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_EXPLAIN:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".ret.val"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/EditTextDialogActivity;->RET_VAL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/ifs/ui/EditTextDialogActivity;->mIsNative:Z

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/waze/ifs/ui/EditTextDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/waze/ifs/ui/EditTextDialogActivity;->doDone()V

    return-void
.end method

.method private doDone()V
    .locals 8

    .prologue
    .line 189
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/waze/ifs/ui/EditTextDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 190
    .local v6, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v0, p0, Lcom/waze/ifs/ui/EditTextDialogActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 191
    iget-boolean v0, p0, Lcom/waze/ifs/ui/EditTextDialogActivity;->mIsNative:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/ifs/ui/EditTextDialogActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    iget-wide v2, p0, Lcom/waze/ifs/ui/EditTextDialogActivity;->mNativeCallback:J

    iget-wide v4, p0, Lcom/waze/ifs/ui/EditTextDialogActivity;->mNativeContext:J

    .line 192
    invoke-virtual/range {v0 .. v5}, Lcom/waze/NativeManager;->editTextDialogCallback(Ljava/lang/String;JJ)V

    .line 199
    :goto_0
    return-void

    .line 195
    :cond_0
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 196
    .local v7, ret:Landroid/content/Intent;
    sget-object v0, Lcom/waze/ifs/ui/EditTextDialogActivity;->RET_VAL:Ljava/lang/String;

    iget-object v1, p0, Lcom/waze/ifs/ui/EditTextDialogActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v7}, Lcom/waze/ifs/ui/EditTextDialogActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, -0x1

    .line 170
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

    .line 171
    const-string v4, " Intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/16 v2, 0x4d2

    if-ne p1, v2, :cond_1

    .line 173
    if-ne p2, v5, :cond_0

    .line 174
    const-string v2, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 175
    .local v0, matches:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 176
    iget-object v3, p0, Lcom/waze/ifs/ui/EditTextDialogActivity;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 178
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/waze/ifs/ui/EditTextDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 179
    .local v1, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/waze/ifs/ui/EditTextDialogActivity;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 186
    .end local v0           #matches:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #mgr:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    if-ne p2, v5, :cond_0

    .line 183
    invoke-virtual {p0, v5}, Lcom/waze/ifs/ui/EditTextDialogActivity;->setResult(I)V

    .line 184
    invoke-virtual {p0}, Lcom/waze/ifs/ui/EditTextDialogActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super/range {p0 .. p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v13

    .line 54
    .local v13, nm:Lcom/waze/NativeManager;
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/EditTextDialogActivity;->requestWindowFeature(I)Z

    .line 55
    const v21, 0x7f03004a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/EditTextDialogActivity;->setContentView(I)V

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/EditTextDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 58
    .local v9, i:Landroid/content/Intent;
    sget-object v21, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_TITLE_DS:Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 59
    .local v20, titleTmp:I
    invoke-static {}, Lcom/waze/strings/DisplayStrings;->values()[Lcom/waze/strings/DisplayStrings;

    move-result-object v21

    aget-object v6, v21, v20

    .line 61
    .local v6, dsTitle:Lcom/waze/strings/DisplayStrings;
    sget-object v21, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_NATIVE:Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->mIsNative:Z

    .line 62
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/EditTextDialogActivity;->mIsNative:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 63
    sget-object v21, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_CALLBACK:Ljava/lang/String;

    const-wide/16 v22, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v9, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/waze/ifs/ui/EditTextDialogActivity;->mNativeCallback:J

    .line 64
    sget-object v21, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_CONTEXT:Ljava/lang/String;

    const-wide/16 v22, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v9, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/waze/ifs/ui/EditTextDialogActivity;->mNativeContext:J

    .line 67
    :cond_0
    sget-object v21, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_EXPLAIN:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 68
    .local v7, explanation:Ljava/lang/String;
    sget-object v21, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_TYPE:Ljava/lang/String;

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 69
    .local v11, inputType:I
    sget-object v21, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_SPEECH:Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 74
    .local v15, speech:Z
    invoke-virtual {v13, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v19

    .line 75
    .local v19, titleStr:Ljava/lang/String;
    const v21, 0x7f090058

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/EditTextDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/waze/view/title/TitleBarTextButton;

    .line 76
    .local v18, titleButtonBar:Lcom/waze/view/title/TitleBarTextButton;
    sget-object v21, Lcom/waze/strings/DisplayStrings;->DS_DONE:Lcom/waze/strings/DisplayStrings;

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/view/title/TitleBarTextButton;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v21, Lcom/waze/ifs/ui/EditTextDialogActivity$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/ifs/ui/EditTextDialogActivity$1;-><init>(Lcom/waze/ifs/ui/EditTextDialogActivity;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/waze/view/title/TitleBarTextButton;->setOnClickCloseListener(Landroid/view/View$OnClickListener;)V

    .line 87
    sget-object v21, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_SUBTITLE_DS:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 88
    sget-object v21, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_SUBTITLE_DS:Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 89
    .local v17, subtitleTmp:I
    invoke-static {}, Lcom/waze/strings/DisplayStrings;->values()[Lcom/waze/strings/DisplayStrings;

    move-result-object v21

    aget-object v5, v21, v17

    .line 90
    .local v5, dsSubtitle:Lcom/waze/strings/DisplayStrings;
    const v21, 0x7f09027f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/EditTextDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/waze/settings/SettingsTitleText;

    .line 91
    .local v16, subView:Lcom/waze/settings/SettingsTitleText;
    invoke-virtual {v13, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 92
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsTitleText;->setVisibility(I)V

    .line 98
    .end local v5           #dsSubtitle:Lcom/waze/strings/DisplayStrings;
    .end local v16           #subView:Lcom/waze/settings/SettingsTitleText;
    .end local v17           #subtitleTmp:I
    :cond_1
    const v21, 0x7f090281

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/EditTextDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/EditText;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->mEditText:Landroid/widget/EditText;

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/EditTextDialogActivity;->mEditText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    new-instance v22, Lcom/waze/ifs/ui/EditTextDialogActivity$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/ifs/ui/EditTextDialogActivity$2;-><init>(Lcom/waze/ifs/ui/EditTextDialogActivity;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/EditTextDialogActivity;->mEditText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    const/high16 v22, 0x2

    or-int v22, v22, v11

    invoke-virtual/range {v21 .. v22}, Landroid/widget/EditText;->setInputType(I)V

    .line 111
    sget-object v21, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_HINT_DS:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 112
    sget-object v21, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_HINT_DS:Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 113
    .local v8, hintTmp:I
    invoke-static {}, Lcom/waze/strings/DisplayStrings;->values()[Lcom/waze/strings/DisplayStrings;

    move-result-object v21

    aget-object v4, v21, v8

    .line 114
    .local v4, dsHint:Lcom/waze/strings/DisplayStrings;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/EditTextDialogActivity;->mEditText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual {v13, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 117
    .end local v4           #dsHint:Lcom/waze/strings/DisplayStrings;
    .end local v8           #hintTmp:I
    :cond_2
    sget-object v21, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_INITIAL:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 118
    sget-object v21, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_INITIAL:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 119
    .local v10, initial:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/EditTextDialogActivity;->mEditText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/EditTextDialogActivity;->mEditText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 123
    .end local v10           #initial:Ljava/lang/String;
    :cond_3
    sget-object v21, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_SINGLE_LINE:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 124
    sget-object v21, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_SINGLE_LINE:Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 125
    .local v14, singleLine:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/EditTextDialogActivity;->mEditText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 128
    .end local v14           #singleLine:Z
    :cond_4
    sget-object v21, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_MIN_LINES:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 129
    sget-object v21, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_MIN_LINES:Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 130
    .local v12, lines:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/EditTextDialogActivity;->mEditText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/widget/EditText;->setMinLines(I)V

    .line 133
    .end local v12           #lines:I
    :cond_5
    if-eqz v15, :cond_8

    .line 134
    const v21, 0x7f090062

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/EditTextDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    new-instance v22, Lcom/waze/ifs/ui/EditTextDialogActivity$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/ifs/ui/EditTextDialogActivity$3;-><init>(Lcom/waze/ifs/ui/EditTextDialogActivity;)V

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    :goto_0
    sget-object v21, Lcom/waze/strings/DisplayStrings;->DS_CHIT_CHAT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v21 .. v21}, Lcom/waze/strings/DisplayStrings;->ordinal()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 146
    sget-object v21, Lcom/waze/strings/DisplayStrings;->DS_CHIT_CHATS_ARE_PUBLIC:Lcom/waze/strings/DisplayStrings;

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    .line 150
    :cond_6
    :goto_1
    if-eqz v7, :cond_7

    .line 151
    const v21, 0x7f090282

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/EditTextDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_7
    return-void

    .line 141
    :cond_8
    const v21, 0x7f090062

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/EditTextDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 147
    :cond_9
    sget-object v21, Lcom/waze/strings/DisplayStrings;->DS_MESSAGE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v21 .. v21}, Lcom/waze/strings/DisplayStrings;->ordinal()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 148
    sget-object v21, Lcom/waze/strings/DisplayStrings;->DS_MESSAGES_ARE_PRIVATE:Lcom/waze/strings/DisplayStrings;

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onResume()V

    .line 158
    iget-object v0, p0, Lcom/waze/ifs/ui/EditTextDialogActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 159
    return-void
.end method

.method public speechRecognitionClicked(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    .line 164
    const-string v2, "free_form"

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const/16 v1, 0x4d2

    invoke-virtual {p0, v0, v1}, Lcom/waze/ifs/ui/EditTextDialogActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 166
    return-void
.end method
