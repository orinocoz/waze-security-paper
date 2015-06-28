.class public Lcom/waze/view/title/TitleBarTextButton;
.super Landroid/widget/RelativeLayout;
.source "TitleBarTextButton.java"


# static fields
.field public static final TITLE_BAR_BUTTON_TYPE_DEFAULT:I = 0x0

.field public static final TITLE_BAR_BUTTON_TYPE_TEXT:I = 0x1


# instance fields
.field private activeColor:Landroid/content/res/ColorStateList;

.field private activity:Landroid/app/Activity;

.field private closeButtonText:Lcom/waze/view/text/WazeTextView;

.field private closeButtonType:I

.field private closeDivider:Landroid/view/View;

.field private closeEnabled:Z

.field private closeListener:Landroid/view/View$OnClickListener;

.field private closedResultCode:I

.field private mActivity:Lcom/waze/ifs/ui/ActivityBase;

.field private textPlaceholder:Ljava/lang/String;

.field private textView:Landroid/widget/TextView;

.field private upButton:Lcom/waze/view/button/AutoResizeTextButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/waze/view/title/TitleBarTextButton;->closeListener:Landroid/view/View$OnClickListener;

    .line 36
    const/4 v2, 0x3

    iput v2, p0, Lcom/waze/view/title/TitleBarTextButton;->closedResultCode:I

    .line 37
    iput-boolean v4, p0, Lcom/waze/view/title/TitleBarTextButton;->closeEnabled:Z

    .line 38
    iput v3, p0, Lcom/waze/view/title/TitleBarTextButton;->closeButtonType:I

    .line 45
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 46
    .local v1, inflater:Landroid/view/LayoutInflater;
    sget-object v2, Lcom/waze/R$styleable;->TitleBar:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, attrArray:Landroid/content/res/TypedArray;
    const v2, 0x7f030120

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    instance-of v2, p1, Lcom/waze/ifs/ui/ActivityBase;

    if-eqz v2, :cond_0

    .line 49
    check-cast p1, Lcom/waze/ifs/ui/ActivityBase;

    .end local p1
    iput-object p1, p0, Lcom/waze/view/title/TitleBarTextButton;->mActivity:Lcom/waze/ifs/ui/ActivityBase;

    .line 51
    :cond_0
    const v2, 0x7f090740

    invoke-virtual {p0, v2}, Lcom/waze/view/title/TitleBarTextButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/waze/view/title/TitleBarTextButton;->textView:Landroid/widget/TextView;

    .line 52
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/view/title/TitleBarTextButton;->textPlaceholder:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 53
    iput v2, p0, Lcom/waze/view/title/TitleBarTextButton;->closeButtonType:I

    .line 55
    iget-object v2, p0, Lcom/waze/view/title/TitleBarTextButton;->textPlaceholder:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 56
    iget-object v2, p0, Lcom/waze/view/title/TitleBarTextButton;->textView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/waze/view/title/TitleBarTextButton;->textPlaceholder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_1
    const v2, 0x7f09073c

    invoke-virtual {p0, v2}, Lcom/waze/view/title/TitleBarTextButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/text/WazeTextView;

    iput-object v2, p0, Lcom/waze/view/title/TitleBarTextButton;->closeButtonText:Lcom/waze/view/text/WazeTextView;

    .line 59
    const v2, 0x7f09073e

    invoke-virtual {p0, v2}, Lcom/waze/view/title/TitleBarTextButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/button/AutoResizeTextButton;

    iput-object v2, p0, Lcom/waze/view/title/TitleBarTextButton;->upButton:Lcom/waze/view/button/AutoResizeTextButton;

    .line 60
    const v2, 0x7f09073d

    invoke-virtual {p0, v2}, Lcom/waze/view/title/TitleBarTextButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/view/title/TitleBarTextButton;->closeDivider:Landroid/view/View;

    .line 61
    iget-object v2, p0, Lcom/waze/view/title/TitleBarTextButton;->upButton:Lcom/waze/view/button/AutoResizeTextButton;

    const v3, 0x7f020429

    invoke-virtual {v2, v3}, Lcom/waze/view/button/AutoResizeTextButton;->setButtonImageResource(I)V

    .line 63
    iget-object v2, p0, Lcom/waze/view/title/TitleBarTextButton;->closeButtonText:Lcom/waze/view/text/WazeTextView;

    new-instance v3, Lcom/waze/view/title/TitleBarTextButton$1;

    invoke-direct {v3, p0}, Lcom/waze/view/title/TitleBarTextButton$1;-><init>(Lcom/waze/view/title/TitleBarTextButton;)V

    invoke-virtual {v2, v3}, Lcom/waze/view/text/WazeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v2, p0, Lcom/waze/view/title/TitleBarTextButton;->upButton:Lcom/waze/view/button/AutoResizeTextButton;

    new-instance v3, Lcom/waze/view/title/TitleBarTextButton$2;

    invoke-direct {v3, p0}, Lcom/waze/view/title/TitleBarTextButton$2;-><init>(Lcom/waze/view/title/TitleBarTextButton;)V

    invoke-virtual {v2, v3}, Lcom/waze/view/button/AutoResizeTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-direct {p0}, Lcom/waze/view/title/TitleBarTextButton;->applyCloseButtonType()V

    .line 84
    return-void
.end method

.method static synthetic access$0(Lcom/waze/view/title/TitleBarTextButton;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/waze/view/title/TitleBarTextButton;->closeListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/view/title/TitleBarTextButton;)Lcom/waze/ifs/ui/ActivityBase;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/waze/view/title/TitleBarTextButton;->mActivity:Lcom/waze/ifs/ui/ActivityBase;

    return-object v0
.end method

.method private applyCloseButtonType()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 196
    iget v0, p0, Lcom/waze/view/title/TitleBarTextButton;->closeButtonType:I

    packed-switch v0, :pswitch_data_0

    .line 204
    const-string v0, "WAZE"

    const-string v1, "Undefined TitleBar type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/waze/view/title/TitleBarTextButton;->setPadding(IIII)V

    .line 209
    return-void

    .line 198
    :pswitch_0
    iget-object v0, p0, Lcom/waze/view/title/TitleBarTextButton;->closeButtonText:Lcom/waze/view/text/WazeTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->setVisibility(I)V

    goto :goto_0

    .line 201
    :pswitch_1
    iget-object v0, p0, Lcom/waze/view/title/TitleBarTextButton;->closeButtonText:Lcom/waze/view/text/WazeTextView;

    invoke-virtual {v0, v2}, Lcom/waze/view/text/WazeTextView;->setVisibility(I)V

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V
    .locals 2
    .parameter "activity"
    .parameter "title"

    .prologue
    .line 109
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 110
    .local v0, nativeManager:Lcom/waze/NativeManager;
    invoke-virtual {v0, p2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/waze/view/title/TitleBarTextButton;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;Lcom/waze/strings/DisplayStrings;)V
    .locals 3
    .parameter "activity"
    .parameter "title"
    .parameter "closeButtonText"

    .prologue
    .line 114
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 115
    .local v0, nativeManager:Lcom/waze/NativeManager;
    invoke-virtual {v0, p2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-virtual {v0, p3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {p0, p1, v1, v2}, Lcom/waze/view/title/TitleBarTextButton;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;Z)V
    .locals 2
    .parameter "activity"
    .parameter "title"
    .parameter "showClose"

    .prologue
    .line 104
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 105
    .local v0, nativeManager:Lcom/waze/NativeManager;
    invoke-virtual {v0, p2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/waze/view/title/TitleBarTextButton;->init(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 106
    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "title"

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/waze/view/title/TitleBarTextButton;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1
    .parameter "activity"
    .parameter "title"
    .parameter "closeTextResId"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/waze/view/title/TitleBarTextButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/waze/view/title/TitleBarTextButton;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "title"
    .parameter "closeButtonText"

    .prologue
    .line 94
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 95
    .local v0, nativeManager:Lcom/waze/NativeManager;
    iput-object p1, p0, Lcom/waze/view/title/TitleBarTextButton;->activity:Landroid/app/Activity;

    .line 97
    iget-object v1, p0, Lcom/waze/view/title/TitleBarTextButton;->textView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/waze/view/title/TitleBarTextButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 100
    invoke-virtual {v0, p3}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/waze/view/title/TitleBarTextButton;->setCloseText(Ljava/lang/String;)V

    .line 101
    :cond_1
    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 0
    .parameter "activity"
    .parameter "title"
    .parameter "showClose"

    .prologue
    .line 124
    invoke-virtual {p0, p3}, Lcom/waze/view/title/TitleBarTextButton;->setCloseVisibility(Z)V

    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/waze/view/title/TitleBarTextButton;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public onCloseClicked()V
    .locals 2

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/waze/view/title/TitleBarTextButton;->closeEnabled:Z

    if-nez v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/waze/view/title/TitleBarTextButton;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/waze/view/title/TitleBarTextButton;->activity:Landroid/app/Activity;

    iget v1, p0, Lcom/waze/view/title/TitleBarTextButton;->closedResultCode:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 176
    iget-object v0, p0, Lcom/waze/view/title/TitleBarTextButton;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public setCloseButtonDisabled(Z)V
    .locals 3
    .parameter "isDisabled"

    .prologue
    const/16 v2, 0x77

    .line 186
    iget-object v1, p0, Lcom/waze/view/title/TitleBarTextButton;->closeButtonText:Lcom/waze/view/text/WazeTextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/waze/view/text/WazeTextView;->setEnabled(Z)V

    .line 187
    if-eqz p1, :cond_2

    .line 188
    iget-object v0, p0, Lcom/waze/view/title/TitleBarTextButton;->closeButtonText:Lcom/waze/view/text/WazeTextView;

    invoke-virtual {v0}, Lcom/waze/view/text/WazeTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/view/title/TitleBarTextButton;->activeColor:Landroid/content/res/ColorStateList;

    .line 189
    iget-object v0, p0, Lcom/waze/view/title/TitleBarTextButton;->closeButtonText:Lcom/waze/view/text/WazeTextView;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->setTextColor(I)V

    .line 193
    :cond_0
    :goto_1
    return-void

    .line 186
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/waze/view/title/TitleBarTextButton;->activeColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/waze/view/title/TitleBarTextButton;->closeButtonText:Lcom/waze/view/text/WazeTextView;

    iget-object v1, p0, Lcom/waze/view/title/TitleBarTextButton;->activeColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method

.method public setCloseEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/waze/view/title/TitleBarTextButton;->closeEnabled:Z

    .line 168
    return-void
.end method

.method public setCloseResultCode(I)V
    .locals 0
    .parameter "resultCode"

    .prologue
    .line 159
    iput p1, p0, Lcom/waze/view/title/TitleBarTextButton;->closedResultCode:I

    .line 160
    return-void
.end method

.method public setCloseText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    const/4 v0, 0x1

    iput v0, p0, Lcom/waze/view/title/TitleBarTextButton;->closeButtonType:I

    .line 146
    invoke-direct {p0}, Lcom/waze/view/title/TitleBarTextButton;->applyCloseButtonType()V

    .line 147
    iget-object v0, p0, Lcom/waze/view/title/TitleBarTextButton;->closeButtonText:Lcom/waze/view/text/WazeTextView;

    invoke-virtual {v0, p1}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :goto_0
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/view/title/TitleBarTextButton;->closeButtonType:I

    .line 150
    invoke-direct {p0}, Lcom/waze/view/title/TitleBarTextButton;->applyCloseButtonType()V

    goto :goto_0
.end method

.method public setCloseTextColor(III)V
    .locals 2
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/waze/view/title/TitleBarTextButton;->closeButtonText:Lcom/waze/view/text/WazeTextView;

    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->setTextColor(I)V

    .line 156
    return-void
.end method

.method public setCloseVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 129
    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/waze/view/title/TitleBarTextButton;->closeButtonText:Lcom/waze/view/text/WazeTextView;

    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/waze/view/title/TitleBarTextButton;->closeDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/waze/view/title/TitleBarTextButton;->closeButtonText:Lcom/waze/view/text/WazeTextView;

    invoke-virtual {v0, v2}, Lcom/waze/view/text/WazeTextView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/waze/view/title/TitleBarTextButton;->closeDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnClickCloseListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/waze/view/title/TitleBarTextButton;->closeListener:Landroid/view/View$OnClickListener;

    .line 164
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/waze/view/title/TitleBarTextButton;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/view/title/TitleBarTextButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_0
    return-void
.end method

.method public setUpButtonDisabled()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/waze/view/title/TitleBarTextButton;->upButton:Lcom/waze/view/button/AutoResizeTextButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/waze/view/button/AutoResizeTextButton;->setVisibility(I)V

    .line 182
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/waze/view/title/TitleBarTextButton;->setPadding(IIII)V

    .line 183
    return-void
.end method
