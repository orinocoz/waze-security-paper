.class public Lcom/waze/view/title/TitleBar;
.super Landroid/widget/RelativeLayout;
.source "TitleBar.java"


# static fields
.field public static final TITLE_BAR_BUTTON_TYPE_DEFAULT:I = 0x0

.field public static final TITLE_BAR_BUTTON_TYPE_TEXT:I = 0x1


# instance fields
.field private activity:Landroid/app/Activity;

.field private closeButton:Lcom/waze/view/button/AutoResizeTextButton;

.field private closeButtonText:Lcom/waze/view/button/AutoResizeTextButton;

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

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/waze/view/title/TitleBar;->closeListener:Landroid/view/View$OnClickListener;

    .line 34
    const/4 v2, -0x1

    iput v2, p0, Lcom/waze/view/title/TitleBar;->closedResultCode:I

    .line 35
    iput-boolean v4, p0, Lcom/waze/view/title/TitleBar;->closeEnabled:Z

    .line 36
    iput v3, p0, Lcom/waze/view/title/TitleBar;->closeButtonType:I

    .line 41
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 42
    .local v1, inflater:Landroid/view/LayoutInflater;
    sget-object v2, Lcom/waze/R$styleable;->TitleBar:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    .local v0, attrArray:Landroid/content/res/TypedArray;
    const v2, 0x7f03011f

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    instance-of v2, p1, Lcom/waze/ifs/ui/ActivityBase;

    if-eqz v2, :cond_0

    .line 46
    check-cast p1, Lcom/waze/ifs/ui/ActivityBase;

    .end local p1
    iput-object p1, p0, Lcom/waze/view/title/TitleBar;->mActivity:Lcom/waze/ifs/ui/ActivityBase;

    .line 48
    :cond_0
    const v2, 0x7f090740

    invoke-virtual {p0, v2}, Lcom/waze/view/title/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/waze/view/title/TitleBar;->textView:Landroid/widget/TextView;

    .line 49
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/view/title/TitleBar;->textPlaceholder:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/waze/view/title/TitleBar;->closeButtonType:I

    .line 51
    iget-object v2, p0, Lcom/waze/view/title/TitleBar;->textPlaceholder:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 52
    iget-object v2, p0, Lcom/waze/view/title/TitleBar;->textView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/waze/view/title/TitleBar;->textPlaceholder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_1
    const v2, 0x7f09073b

    invoke-virtual {p0, v2}, Lcom/waze/view/title/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/button/AutoResizeTextButton;

    iput-object v2, p0, Lcom/waze/view/title/TitleBar;->closeButton:Lcom/waze/view/button/AutoResizeTextButton;

    .line 55
    const v2, 0x7f09073c

    invoke-virtual {p0, v2}, Lcom/waze/view/title/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/button/AutoResizeTextButton;

    iput-object v2, p0, Lcom/waze/view/title/TitleBar;->closeButtonText:Lcom/waze/view/button/AutoResizeTextButton;

    .line 56
    const v2, 0x7f09073e

    invoke-virtual {p0, v2}, Lcom/waze/view/title/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/button/AutoResizeTextButton;

    iput-object v2, p0, Lcom/waze/view/title/TitleBar;->upButton:Lcom/waze/view/button/AutoResizeTextButton;

    .line 57
    const v2, 0x7f09073d

    invoke-virtual {p0, v2}, Lcom/waze/view/title/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/view/title/TitleBar;->closeDivider:Landroid/view/View;

    .line 58
    iget-object v2, p0, Lcom/waze/view/title/TitleBar;->upButton:Lcom/waze/view/button/AutoResizeTextButton;

    const v3, 0x7f020429

    invoke-virtual {v2, v3}, Lcom/waze/view/button/AutoResizeTextButton;->setButtonImageResource(I)V

    .line 59
    iget-object v2, p0, Lcom/waze/view/title/TitleBar;->closeButton:Lcom/waze/view/button/AutoResizeTextButton;

    new-instance v3, Lcom/waze/view/title/TitleBar$1;

    invoke-direct {v3, p0}, Lcom/waze/view/title/TitleBar$1;-><init>(Lcom/waze/view/title/TitleBar;)V

    invoke-virtual {v2, v3}, Lcom/waze/view/button/AutoResizeTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v2, p0, Lcom/waze/view/title/TitleBar;->closeButtonText:Lcom/waze/view/button/AutoResizeTextButton;

    new-instance v3, Lcom/waze/view/title/TitleBar$2;

    invoke-direct {v3, p0}, Lcom/waze/view/title/TitleBar$2;-><init>(Lcom/waze/view/title/TitleBar;)V

    invoke-virtual {v2, v3}, Lcom/waze/view/button/AutoResizeTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v2, p0, Lcom/waze/view/title/TitleBar;->upButton:Lcom/waze/view/button/AutoResizeTextButton;

    new-instance v3, Lcom/waze/view/title/TitleBar$3;

    invoke-direct {v3, p0}, Lcom/waze/view/title/TitleBar$3;-><init>(Lcom/waze/view/title/TitleBar;)V

    invoke-virtual {v2, v3}, Lcom/waze/view/button/AutoResizeTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-direct {p0}, Lcom/waze/view/title/TitleBar;->applyCloseButtonType()V

    .line 92
    return-void
.end method

.method static synthetic access$0(Lcom/waze/view/title/TitleBar;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->closeListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/view/title/TitleBar;)Lcom/waze/ifs/ui/ActivityBase;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->mActivity:Lcom/waze/ifs/ui/ActivityBase;

    return-object v0
.end method

.method private applyCloseButtonType()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 207
    iget v0, p0, Lcom/waze/view/title/TitleBar;->closeButtonType:I

    packed-switch v0, :pswitch_data_0

    .line 222
    const-string v0, "WAZE"

    const-string v1, "Undefined TitleBar type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    :goto_0
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/waze/view/title/TitleBar;->setPadding(IIII)V

    .line 227
    return-void

    .line 209
    :pswitch_0
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->closeButton:Lcom/waze/view/button/AutoResizeTextButton;

    invoke-virtual {v0, v2}, Lcom/waze/view/button/AutoResizeTextButton;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->closeButtonText:Lcom/waze/view/button/AutoResizeTextButton;

    invoke-virtual {v0, v1}, Lcom/waze/view/button/AutoResizeTextButton;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->closeButton:Lcom/waze/view/button/AutoResizeTextButton;

    invoke-virtual {v0}, Lcom/waze/view/button/AutoResizeTextButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->closeButton:Lcom/waze/view/button/AutoResizeTextButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/view/button/AutoResizeTextButton;->setText(Ljava/lang/String;)V

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->closeButton:Lcom/waze/view/button/AutoResizeTextButton;

    const v1, 0x7f02024b

    invoke-virtual {v0, v1}, Lcom/waze/view/button/AutoResizeTextButton;->setButtonImageResource(I)V

    goto :goto_0

    .line 216
    :pswitch_1
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->closeButton:Lcom/waze/view/button/AutoResizeTextButton;

    invoke-virtual {v0, v1}, Lcom/waze/view/button/AutoResizeTextButton;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->closeButtonText:Lcom/waze/view/button/AutoResizeTextButton;

    invoke-virtual {v0, v2}, Lcom/waze/view/button/AutoResizeTextButton;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->closeButtonText:Lcom/waze/view/button/AutoResizeTextButton;

    invoke-virtual {v0}, Lcom/waze/view/button/AutoResizeTextButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->closeButton:Lcom/waze/view/button/AutoResizeTextButton;

    invoke-virtual {v0, v2}, Lcom/waze/view/button/AutoResizeTextButton;->setButtonImageResource(I)V

    goto :goto_0

    .line 207
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
    .line 117
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 118
    .local v0, nativeManager:Lcom/waze/NativeManager;
    invoke-virtual {v0, p2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;Lcom/waze/strings/DisplayStrings;)V
    .locals 3
    .parameter "activity"
    .parameter "title"
    .parameter "closeButtonText"

    .prologue
    .line 121
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 122
    .local v0, nativeManager:Lcom/waze/NativeManager;
    invoke-virtual {v0, p2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;Z)V
    .locals 2
    .parameter "activity"
    .parameter "title"
    .parameter "showClose"

    .prologue
    .line 113
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 114
    .local v0, nativeManager:Lcom/waze/NativeManager;
    invoke-virtual {v0, p2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 115
    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "title"

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1
    .parameter "activity"
    .parameter "title"
    .parameter "closeTextResId"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/waze/view/title/TitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "title"
    .parameter "closeButtonText"

    .prologue
    .line 102
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 103
    .local v0, nativeManager:Lcom/waze/NativeManager;
    iput-object p1, p0, Lcom/waze/view/title/TitleBar;->activity:Landroid/app/Activity;

    .line 105
    iget-object v1, p0, Lcom/waze/view/title/TitleBar;->textView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/waze/view/title/TitleBar;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/waze/view/title/TitleBar;->closeButton:Lcom/waze/view/button/AutoResizeTextButton;

    invoke-virtual {v1}, Lcom/waze/view/button/AutoResizeTextButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 109
    invoke-virtual {v0, p3}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/waze/view/title/TitleBar;->setCloseText(Ljava/lang/String;)V

    .line 110
    :cond_1
    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 0
    .parameter "activity"
    .parameter "title"
    .parameter "showClose"

    .prologue
    .line 129
    invoke-virtual {p0, p3}, Lcom/waze/view/title/TitleBar;->setCloseVisibility(Z)V

    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public onCloseClicked()V
    .locals 2

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/waze/view/title/TitleBar;->closeEnabled:Z

    if-nez v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->activity:Landroid/app/Activity;

    iget v1, p0, Lcom/waze/view/title/TitleBar;->closedResultCode:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 195
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public setCloseEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/waze/view/title/TitleBar;->closeEnabled:Z

    .line 188
    return-void
.end method

.method public setCloseImageResource(I)V
    .locals 2
    .parameter "resource"

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->closeButton:Lcom/waze/view/button/AutoResizeTextButton;

    invoke-virtual {v0, v1}, Lcom/waze/view/button/AutoResizeTextButton;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->closeDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->closeButtonText:Lcom/waze/view/button/AutoResizeTextButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/waze/view/button/AutoResizeTextButton;->setVisibility(I)V

    .line 160
    if-nez p1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->closeButton:Lcom/waze/view/button/AutoResizeTextButton;

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Lcom/waze/view/button/AutoResizeTextButton;->setButtonImageResource(I)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->closeButton:Lcom/waze/view/button/AutoResizeTextButton;

    invoke-virtual {v0, p1}, Lcom/waze/view/button/AutoResizeTextButton;->setButtonImageResource(I)V

    goto :goto_0
.end method

.method public setCloseResultCode(I)V
    .locals 0
    .parameter "resultCode"

    .prologue
    .line 181
    iput p1, p0, Lcom/waze/view/title/TitleBar;->closedResultCode:I

    .line 182
    return-void
.end method

.method public setCloseText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    const/4 v0, 0x1

    iput v0, p0, Lcom/waze/view/title/TitleBar;->closeButtonType:I

    .line 169
    invoke-direct {p0}, Lcom/waze/view/title/TitleBar;->applyCloseButtonType()V

    .line 170
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->closeButtonText:Lcom/waze/view/button/AutoResizeTextButton;

    invoke-virtual {v0, p1}, Lcom/waze/view/button/AutoResizeTextButton;->setText(Ljava/lang/String;)V

    .line 175
    :goto_0
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/view/title/TitleBar;->closeButtonType:I

    .line 173
    invoke-direct {p0}, Lcom/waze/view/title/TitleBar;->applyCloseButtonType()V

    goto :goto_0
.end method

.method public setCloseTextColor(III)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->closeButtonText:Lcom/waze/view/button/AutoResizeTextButton;

    invoke-virtual {v0, p1, p2, p3}, Lcom/waze/view/button/AutoResizeTextButton;->setTextColor(III)V

    .line 178
    return-void
.end method

.method public setCloseVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 135
    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->closeButton:Lcom/waze/view/button/AutoResizeTextButton;

    invoke-virtual {v0, v1}, Lcom/waze/view/button/AutoResizeTextButton;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->closeButtonText:Lcom/waze/view/button/AutoResizeTextButton;

    invoke-virtual {v0, v1}, Lcom/waze/view/button/AutoResizeTextButton;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->closeDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->closeButton:Lcom/waze/view/button/AutoResizeTextButton;

    invoke-virtual {v0, v2}, Lcom/waze/view/button/AutoResizeTextButton;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->closeButtonText:Lcom/waze/view/button/AutoResizeTextButton;

    invoke-virtual {v0, v2}, Lcom/waze/view/button/AutoResizeTextButton;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->closeDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnClickCloseListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/waze/view/title/TitleBar;->closeListener:Landroid/view/View$OnClickListener;

    .line 185
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :cond_0
    return-void
.end method

.method public setUpButtonDisabled()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 201
    iget-object v0, p0, Lcom/waze/view/title/TitleBar;->upButton:Lcom/waze/view/button/AutoResizeTextButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/waze/view/button/AutoResizeTextButton;->setVisibility(I)V

    .line 202
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/waze/view/title/TitleBar;->setPadding(IIII)V

    .line 203
    return-void
.end method
