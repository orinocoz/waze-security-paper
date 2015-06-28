.class public Lcom/waze/view/tabs/TabBar;
.super Landroid/widget/RelativeLayout;
.source "TabBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/view/tabs/TabBar$IOnTabClickListener;
    }
.end annotation


# static fields
.field public static final TAB_CONTROLLER_TYPE_2_TABS:I = 0x0

.field public static final TAB_CONTROLLER_TYPE_3_TABS:I = 0x1

.field public static final TAB_ID_0:I = 0x0

.field public static final TAB_ID_1:I = 0x1

.field public static final TAB_ID_2:I = 0x2


# instance fields
.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field mOnTabClickListener:Lcom/waze/view/tabs/TabBar$IOnTabClickListener;

.field private mSelectedTab:Landroid/view/View;

.field private mTabCenter:Landroid/view/View;

.field private mTabLeft:Landroid/view/View;

.field private mTabRight:Landroid/view/View;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 163
    new-instance v0, Lcom/waze/view/tabs/TabBar$1;

    invoke-direct {v0, p0}, Lcom/waze/view/tabs/TabBar$1;-><init>(Lcom/waze/view/tabs/TabBar;)V

    iput-object v0, p0, Lcom/waze/view/tabs/TabBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 188
    iput-object v1, p0, Lcom/waze/view/tabs/TabBar;->mSelectedTab:Landroid/view/View;

    .line 200
    iput-object v1, p0, Lcom/waze/view/tabs/TabBar;->mOnTabClickListener:Lcom/waze/view/tabs/TabBar$IOnTabClickListener;

    .line 203
    iput-object v1, p0, Lcom/waze/view/tabs/TabBar;->mTabLeft:Landroid/view/View;

    .line 204
    iput-object v1, p0, Lcom/waze/view/tabs/TabBar;->mTabCenter:Landroid/view/View;

    .line 205
    iput-object v1, p0, Lcom/waze/view/tabs/TabBar;->mTabRight:Landroid/view/View;

    .line 29
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/waze/view/tabs/TabBar;->init(Landroid/content/Context;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 163
    new-instance v2, Lcom/waze/view/tabs/TabBar$1;

    invoke-direct {v2, p0}, Lcom/waze/view/tabs/TabBar$1;-><init>(Lcom/waze/view/tabs/TabBar;)V

    iput-object v2, p0, Lcom/waze/view/tabs/TabBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 188
    iput-object v3, p0, Lcom/waze/view/tabs/TabBar;->mSelectedTab:Landroid/view/View;

    .line 200
    iput-object v3, p0, Lcom/waze/view/tabs/TabBar;->mOnTabClickListener:Lcom/waze/view/tabs/TabBar$IOnTabClickListener;

    .line 203
    iput-object v3, p0, Lcom/waze/view/tabs/TabBar;->mTabLeft:Landroid/view/View;

    .line 204
    iput-object v3, p0, Lcom/waze/view/tabs/TabBar;->mTabCenter:Landroid/view/View;

    .line 205
    iput-object v3, p0, Lcom/waze/view/tabs/TabBar;->mTabRight:Landroid/view/View;

    .line 35
    sget-object v2, Lcom/waze/R$styleable;->TabController:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    .local v0, attrArray:Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 37
    .local v1, type:I
    invoke-direct {p0, p1, v1}, Lcom/waze/view/tabs/TabBar;->init(Landroid/content/Context;I)V

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/waze/view/tabs/TabBar;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/waze/view/tabs/TabBar;->setSelected(Landroid/view/View;)V

    return-void
.end method

.method private getTab(I)Landroid/view/View;
    .locals 1
    .parameter "tabId"

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/waze/view/tabs/TabBar;->mTabLeft:Landroid/view/View;

    .line 160
    :goto_0
    return-object v0

    .line 155
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/waze/view/tabs/TabBar;->mTabCenter:Landroid/view/View;

    goto :goto_0

    .line 157
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/waze/view/tabs/TabBar;->mTabRight:Landroid/view/View;

    goto :goto_0

    .line 160
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 127
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 128
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030114

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 130
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/waze/view/tabs/TabBar;->setPadding(IIII)V

    .line 132
    iput p2, p0, Lcom/waze/view/tabs/TabBar;->mType:I

    .line 135
    const v1, 0x7f090712

    invoke-virtual {p0, v1}, Lcom/waze/view/tabs/TabBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/view/tabs/TabBar;->mTabLeft:Landroid/view/View;

    .line 136
    const v1, 0x7f090717

    invoke-virtual {p0, v1}, Lcom/waze/view/tabs/TabBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/view/tabs/TabBar;->mTabCenter:Landroid/view/View;

    .line 137
    const v1, 0x7f090718

    invoke-virtual {p0, v1}, Lcom/waze/view/tabs/TabBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/view/tabs/TabBar;->mTabRight:Landroid/view/View;

    .line 140
    iget-object v1, p0, Lcom/waze/view/tabs/TabBar;->mTabLeft:Landroid/view/View;

    iget-object v2, p0, Lcom/waze/view/tabs/TabBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v1, p0, Lcom/waze/view/tabs/TabBar;->mTabCenter:Landroid/view/View;

    iget-object v2, p0, Lcom/waze/view/tabs/TabBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v1, p0, Lcom/waze/view/tabs/TabBar;->mTabRight:Landroid/view/View;

    iget-object v2, p0, Lcom/waze/view/tabs/TabBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget v1, p0, Lcom/waze/view/tabs/TabBar;->mType:I

    if-nez v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/waze/view/tabs/TabBar;->mTabRight:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 148
    :cond_0
    return-void
.end method

.method private setSelected(Landroid/view/View;)V
    .locals 3
    .parameter "tab"

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lcom/waze/view/tabs/TabBar;->mSelectedTab:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/waze/view/tabs/TabBar;->mSelectedTab:Landroid/view/View;

    const v1, 0x7f0203d9

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 114
    iget-object v0, p0, Lcom/waze/view/tabs/TabBar;->mSelectedTab:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 118
    :cond_0
    const v0, 0x7f0203db

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 119
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 121
    iput-object p1, p0, Lcom/waze/view/tabs/TabBar;->mSelectedTab:Landroid/view/View;

    .line 122
    return-void
.end method


# virtual methods
.method public setAltRoutesTabs()V
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 67
    return-void

    .line 65
    :cond_0
    invoke-direct {p0, v0}, Lcom/waze/view/tabs/TabBar;->getTab(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090714

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setEnabled(IZ)V
    .locals 5
    .parameter "tabId"
    .parameter "enabled"

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/waze/view/tabs/TabBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 93
    .local v0, colorDisabled:I
    invoke-direct {p0, p1}, Lcom/waze/view/tabs/TabBar;->getTab(I)Landroid/view/View;

    move-result-object v1

    .line 95
    .local v1, tab:Landroid/view/View;
    invoke-virtual {v1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 97
    const v3, 0x7f090713

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 98
    .local v2, text:Landroid/widget/TextView;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    return-void
.end method

.method public setListener(Lcom/waze/view/tabs/TabBar$IOnTabClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/waze/view/tabs/TabBar;->mOnTabClickListener:Lcom/waze/view/tabs/TabBar$IOnTabClickListener;

    .line 44
    return-void
.end method

.method public setNumber(II)V
    .locals 3
    .parameter "tabId"
    .parameter "number"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/waze/view/tabs/TabBar;->getTab(I)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, tab:Landroid/view/View;
    const v2, 0x7f090716

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 85
    .local v1, textView:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method

.method public setSelected(I)V
    .locals 1
    .parameter "tabId"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/waze/view/tabs/TabBar;->getTab(I)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, tab:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/waze/view/tabs/TabBar;->setSelected(Landroid/view/View;)V

    .line 51
    return-void
.end method

.method public setText(ILjava/lang/String;)V
    .locals 3
    .parameter "tabId"
    .parameter "text"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/waze/view/tabs/TabBar;->getTab(I)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, tab:Landroid/view/View;
    const v2, 0x7f090713

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 58
    .local v1, textView:Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method public showNumber(IZ)V
    .locals 3
    .parameter "tabId"
    .parameter "value"

    .prologue
    const v1, 0x7f090715

    .line 72
    invoke-direct {p0, p1}, Lcom/waze/view/tabs/TabBar;->getTab(I)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, tab:Landroid/view/View;
    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
