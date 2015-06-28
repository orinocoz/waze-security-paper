.class public Lcom/waze/view/title/TitleButtonBar;
.super Landroid/widget/RelativeLayout;
.source "TitleButtonBar.java"


# static fields
.field public static final TITLE_BAR_BUTTON_TYPE_DEFAULT:I = 0x0

.field public static final TITLE_BAR_BUTTON_TYPE_TEXT:I = 0x1


# instance fields
.field private activity:Landroid/app/Activity;

.field private closeButton:Lcom/waze/view/button/AutoResizeTextButton;

.field private closeButton2:Lcom/waze/view/button/AutoResizeTextButton;

.field private closeButtonType:I

.field private closeDivider:Landroid/view/View;

.field private closeEnabled:Z

.field private closeListener:Landroid/view/View$OnClickListener;

.field private closeListener2:Landroid/view/View$OnClickListener;

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
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-object v2, p0, Lcom/waze/view/title/TitleButtonBar;->closeListener:Landroid/view/View$OnClickListener;

    .line 31
    iput-object v2, p0, Lcom/waze/view/title/TitleButtonBar;->closeListener2:Landroid/view/View$OnClickListener;

    .line 32
    const/4 v2, 0x3

    iput v2, p0, Lcom/waze/view/title/TitleButtonBar;->closedResultCode:I

    .line 33
    iput-boolean v4, p0, Lcom/waze/view/title/TitleButtonBar;->closeEnabled:Z

    .line 34
    iput v3, p0, Lcom/waze/view/title/TitleButtonBar;->closeButtonType:I

    .line 39
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 40
    .local v1, inflater:Landroid/view/LayoutInflater;
    sget-object v2, Lcom/waze/R$styleable;->TitleBar:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    .local v0, attrArray:Landroid/content/res/TypedArray;
    const v2, 0x7f030121

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    instance-of v2, p1, Lcom/waze/ifs/ui/ActivityBase;

    if-eqz v2, :cond_0

    .line 44
    check-cast p1, Lcom/waze/ifs/ui/ActivityBase;

    .end local p1
    iput-object p1, p0, Lcom/waze/view/title/TitleButtonBar;->mActivity:Lcom/waze/ifs/ui/ActivityBase;

    .line 46
    :cond_0
    const v2, 0x7f090740

    invoke-virtual {p0, v2}, Lcom/waze/view/title/TitleButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/waze/view/title/TitleButtonBar;->textView:Landroid/widget/TextView;

    .line 47
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/view/title/TitleButtonBar;->textPlaceholder:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/waze/view/title/TitleButtonBar;->closeButtonType:I

    .line 49
    iget-object v2, p0, Lcom/waze/view/title/TitleButtonBar;->textPlaceholder:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 50
    iget-object v2, p0, Lcom/waze/view/title/TitleButtonBar;->textView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/waze/view/title/TitleButtonBar;->textPlaceholder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_1
    const v2, 0x7f09073b

    invoke-virtual {p0, v2}, Lcom/waze/view/title/TitleButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/button/AutoResizeTextButton;

    iput-object v2, p0, Lcom/waze/view/title/TitleButtonBar;->closeButton:Lcom/waze/view/button/AutoResizeTextButton;

    .line 53
    const v2, 0x7f090741

    invoke-virtual {p0, v2}, Lcom/waze/view/title/TitleButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/button/AutoResizeTextButton;

    iput-object v2, p0, Lcom/waze/view/title/TitleButtonBar;->closeButton2:Lcom/waze/view/button/AutoResizeTextButton;

    .line 54
    const v2, 0x7f09073e

    invoke-virtual {p0, v2}, Lcom/waze/view/title/TitleButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/button/AutoResizeTextButton;

    iput-object v2, p0, Lcom/waze/view/title/TitleButtonBar;->upButton:Lcom/waze/view/button/AutoResizeTextButton;

    .line 55
    const v2, 0x7f09073d

    invoke-virtual {p0, v2}, Lcom/waze/view/title/TitleButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/view/title/TitleButtonBar;->closeDivider:Landroid/view/View;

    .line 56
    iget-object v2, p0, Lcom/waze/view/title/TitleButtonBar;->upButton:Lcom/waze/view/button/AutoResizeTextButton;

    const v3, 0x7f020429

    invoke-virtual {v2, v3}, Lcom/waze/view/button/AutoResizeTextButton;->setButtonImageResource(I)V

    .line 57
    iget-object v2, p0, Lcom/waze/view/title/TitleButtonBar;->closeButton:Lcom/waze/view/button/AutoResizeTextButton;

    new-instance v3, Lcom/waze/view/title/TitleButtonBar$1;

    invoke-direct {v3, p0}, Lcom/waze/view/title/TitleButtonBar$1;-><init>(Lcom/waze/view/title/TitleButtonBar;)V

    invoke-virtual {v2, v3}, Lcom/waze/view/button/AutoResizeTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v2, p0, Lcom/waze/view/title/TitleButtonBar;->closeButton2:Lcom/waze/view/button/AutoResizeTextButton;

    new-instance v3, Lcom/waze/view/title/TitleButtonBar$2;

    invoke-direct {v3, p0}, Lcom/waze/view/title/TitleButtonBar$2;-><init>(Lcom/waze/view/title/TitleButtonBar;)V

    invoke-virtual {v2, v3}, Lcom/waze/view/button/AutoResizeTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v2, p0, Lcom/waze/view/title/TitleButtonBar;->upButton:Lcom/waze/view/button/AutoResizeTextButton;

    new-instance v3, Lcom/waze/view/title/TitleButtonBar$3;

    invoke-direct {v3, p0}, Lcom/waze/view/title/TitleButtonBar$3;-><init>(Lcom/waze/view/title/TitleButtonBar;)V

    invoke-virtual {v2, v3}, Lcom/waze/view/button/AutoResizeTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method

.method static synthetic access$0(Lcom/waze/view/title/TitleButtonBar;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/waze/view/title/TitleButtonBar;->closeListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/view/title/TitleButtonBar;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/waze/view/title/TitleButtonBar;->closeListener2:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/view/title/TitleButtonBar;)Lcom/waze/ifs/ui/ActivityBase;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/waze/view/title/TitleButtonBar;->mActivity:Lcom/waze/ifs/ui/ActivityBase;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/app/Activity;Ljava/lang/String;II)V
    .locals 1
    .parameter "activity"
    .parameter "title"
    .parameter "ButtonResource"
    .parameter "ButtonResource2"

    .prologue
    .line 92
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 93
    .local v0, nativeManager:Lcom/waze/NativeManager;
    iput-object p1, p0, Lcom/waze/view/title/TitleButtonBar;->activity:Landroid/app/Activity;

    .line 95
    invoke-virtual {p0, p3, p4}, Lcom/waze/view/title/TitleButtonBar;->setCloseImageResource(II)V

    .line 96
    invoke-virtual {p0, p2}, Lcom/waze/view/title/TitleButtonBar;->setTitle(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public onCloseClicked()V
    .locals 2

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/waze/view/title/TitleButtonBar;->closeEnabled:Z

    if-nez v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/waze/view/title/TitleButtonBar;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/waze/view/title/TitleButtonBar;->activity:Landroid/app/Activity;

    iget v1, p0, Lcom/waze/view/title/TitleButtonBar;->closedResultCode:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 171
    iget-object v0, p0, Lcom/waze/view/title/TitleButtonBar;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public setButtonOneListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/waze/view/title/TitleButtonBar;->closeListener:Landroid/view/View$OnClickListener;

    .line 158
    return-void
.end method

.method public setButtonTwoListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/waze/view/title/TitleButtonBar;->closeListener2:Landroid/view/View$OnClickListener;

    .line 161
    return-void
.end method

.method public setCloseEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/waze/view/title/TitleButtonBar;->closeEnabled:Z

    .line 164
    return-void
.end method

.method public setCloseImageResource(II)V
    .locals 2
    .parameter "resource"
    .parameter "resource2"

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/waze/view/title/TitleButtonBar;->closeButton2:Lcom/waze/view/button/AutoResizeTextButton;

    invoke-virtual {v0, v1}, Lcom/waze/view/button/AutoResizeTextButton;->setVisibility(I)V

    .line 138
    if-nez p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/waze/view/title/TitleButtonBar;->closeButton:Lcom/waze/view/button/AutoResizeTextButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/waze/view/button/AutoResizeTextButton;->setVisibility(I)V

    .line 145
    :goto_0
    if-nez p2, :cond_1

    .line 146
    iget-object v0, p0, Lcom/waze/view/title/TitleButtonBar;->closeButton2:Lcom/waze/view/button/AutoResizeTextButton;

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Lcom/waze/view/button/AutoResizeTextButton;->setButtonImageResource(I)V

    .line 150
    :goto_1
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/waze/view/title/TitleButtonBar;->closeButton:Lcom/waze/view/button/AutoResizeTextButton;

    invoke-virtual {v0, v1}, Lcom/waze/view/button/AutoResizeTextButton;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/waze/view/title/TitleButtonBar;->closeButton:Lcom/waze/view/button/AutoResizeTextButton;

    invoke-virtual {v0, p1}, Lcom/waze/view/button/AutoResizeTextButton;->setButtonImageResource(I)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/waze/view/title/TitleButtonBar;->closeButton2:Lcom/waze/view/button/AutoResizeTextButton;

    invoke-virtual {v0, p2}, Lcom/waze/view/button/AutoResizeTextButton;->setButtonImageResource(I)V

    goto :goto_1
.end method

.method public setCloseResultCode(I)V
    .locals 0
    .parameter "resultCode"

    .prologue
    .line 154
    iput p1, p0, Lcom/waze/view/title/TitleButtonBar;->closedResultCode:I

    .line 155
    return-void
.end method

.method public setCloseVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 102
    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/waze/view/title/TitleButtonBar;->closeButton:Lcom/waze/view/button/AutoResizeTextButton;

    invoke-virtual {v0, v1}, Lcom/waze/view/button/AutoResizeTextButton;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/waze/view/title/TitleButtonBar;->closeButton2:Lcom/waze/view/button/AutoResizeTextButton;

    invoke-virtual {v0, v1}, Lcom/waze/view/button/AutoResizeTextButton;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/waze/view/title/TitleButtonBar;->closeDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/waze/view/title/TitleButtonBar;->closeButton:Lcom/waze/view/button/AutoResizeTextButton;

    invoke-virtual {v0, v2}, Lcom/waze/view/button/AutoResizeTextButton;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/waze/view/title/TitleButtonBar;->closeButton2:Lcom/waze/view/button/AutoResizeTextButton;

    invoke-virtual {v0, v2}, Lcom/waze/view/button/AutoResizeTextButton;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/waze/view/title/TitleButtonBar;->closeDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setNumberVisible(ZLjava/lang/String;)V
    .locals 2
    .parameter "isVisible"
    .parameter "Number"

    .prologue
    const v0, 0x7f090715

    .line 125
    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p0, v0}, Lcom/waze/view/title/TitleButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    const v0, 0x7f090716

    invoke-virtual {p0, v0}, Lcom/waze/view/title/TitleButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0, v0}, Lcom/waze/view/title/TitleButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/waze/view/title/TitleButtonBar;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/waze/view/title/TitleButtonBar;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_0
    return-void
.end method

.method public setUpButtonDisabled()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/waze/view/title/TitleButtonBar;->upButton:Lcom/waze/view/button/AutoResizeTextButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/waze/view/button/AutoResizeTextButton;->setVisibility(I)V

    .line 178
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/waze/view/title/TitleButtonBar;->setPadding(IIII)V

    .line 179
    return-void
.end method
