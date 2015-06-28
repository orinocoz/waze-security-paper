.class public Lcom/waze/phone/PhoneLoginFillInField;
.super Landroid/widget/LinearLayout;
.source "PhoneLoginFillInField.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFieldLinearLayout:Landroid/widget/LinearLayout;

.field private mInputText:Landroid/widget/EditText;

.field private mLabaleText:Lcom/waze/view/text/WazeTextView;

.field private mListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-direct {p0, p1}, Lcom/waze/phone/PhoneLoginFillInField;->Init(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/waze/phone/PhoneLoginFillInField;->Init(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method private Init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    const v0, 0x7f0300a4

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 74
    iput-object p1, p0, Lcom/waze/phone/PhoneLoginFillInField;->mContext:Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Lcom/waze/phone/PhoneLoginFillInField;->initMembers()V

    .line 76
    invoke-direct {p0}, Lcom/waze/phone/PhoneLoginFillInField;->initLayout()V

    .line 77
    invoke-direct {p0}, Lcom/waze/phone/PhoneLoginFillInField;->setFont()V

    .line 78
    return-void
.end method

.method private static convertDpToPixels(FLandroid/content/Context;)F
    .locals 2
    .parameter "dp"
    .parameter "context"

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 106
    .local v0, density:F
    mul-float v1, v0, p0

    return v1
.end method

.method private initLayout()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginFillInField;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 102
    return-void
.end method

.method private initMembers()V
    .locals 1

    .prologue
    .line 94
    const v0, 0x7f0904fa

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneLoginFillInField;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/text/WazeTextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneLoginFillInField;->mLabaleText:Lcom/waze/view/text/WazeTextView;

    .line 95
    const v0, 0x7f0904fb

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneLoginFillInField;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/waze/phone/PhoneLoginFillInField;->mInputText:Landroid/widget/EditText;

    .line 96
    const v0, 0x7f0904f9

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneLoginFillInField;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/waze/phone/PhoneLoginFillInField;->mFieldLinearLayout:Landroid/widget/LinearLayout;

    .line 98
    return-void
.end method

.method private setFont()V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/waze/phone/PhoneLoginFillInField;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginFillInField;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/waze/phone/PhoneLoginFillInField;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/waze/ResManager;->getRobotoLight(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginFillInField;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEditTextDpMarginBottom(F)V
    .locals 5
    .parameter "size"

    .prologue
    .line 50
    iget-object v4, p0, Lcom/waze/phone/PhoneLoginFillInField;->mContext:Landroid/content/Context;

    invoke-static {p1, v4}, Lcom/waze/phone/PhoneLoginFillInField;->convertDpToPixels(FLandroid/content/Context;)F

    move-result v4

    float-to-int v0, v4

    .line 52
    .local v0, bottom:I
    iget-object v4, p0, Lcom/waze/phone/PhoneLoginFillInField;->mFieldLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    .line 53
    .local v2, right:I
    iget-object v4, p0, Lcom/waze/phone/PhoneLoginFillInField;->mFieldLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    .line 54
    .local v1, left:I
    iget-object v4, p0, Lcom/waze/phone/PhoneLoginFillInField;->mFieldLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    .line 56
    .local v3, top:I
    iget-object v4, p0, Lcom/waze/phone/PhoneLoginFillInField;->mFieldLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 57
    return-void
.end method

.method public setEditTextDpMarginTop(F)V
    .locals 5
    .parameter "size"

    .prologue
    .line 39
    iget-object v4, p0, Lcom/waze/phone/PhoneLoginFillInField;->mContext:Landroid/content/Context;

    invoke-static {p1, v4}, Lcom/waze/phone/PhoneLoginFillInField;->convertDpToPixels(FLandroid/content/Context;)F

    move-result v4

    float-to-int v3, v4

    .line 41
    .local v3, top:I
    iget-object v4, p0, Lcom/waze/phone/PhoneLoginFillInField;->mFieldLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    .line 42
    .local v2, right:I
    iget-object v4, p0, Lcom/waze/phone/PhoneLoginFillInField;->mFieldLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    .line 43
    .local v1, left:I
    iget-object v4, p0, Lcom/waze/phone/PhoneLoginFillInField;->mFieldLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v0

    .line 45
    .local v0, bottom:I
    iget-object v4, p0, Lcom/waze/phone/PhoneLoginFillInField;->mFieldLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 46
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .parameter "imeOptions"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginFillInField;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 90
    return-void
.end method

.method public setInputHintText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginFillInField;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 30
    return-void
.end method

.method public setInputTextOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .parameter "onTouchListener"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginFillInField;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 118
    return-void
.end method

.method public setLabaleText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginFillInField;->mLabaleText:Lcom/waze/view/text/WazeTextView;

    invoke-virtual {v0, p1}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    return-void
.end method

.method public setPasswordTextType()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginFillInField;->mInputText:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 112
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginFillInField;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/waze/phone/PhoneLoginFillInField;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/waze/ResManager;->getRobotoLight(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 113
    return-void
.end method

.method public setTextGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginFillInField;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setGravity(I)V

    .line 122
    return-void
.end method
