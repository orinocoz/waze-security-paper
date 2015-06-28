.class public Lcom/waze/view/button/AutoResizeTextButton;
.super Landroid/widget/RelativeLayout;
.source "AutoResizeTextButton.java"


# instance fields
.field private textView:Lcom/waze/view/text/AutoResizeTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const-string v9, "layout_inflater"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 22
    .local v2, inflater:Landroid/view/LayoutInflater;
    sget-object v9, Lcom/waze/R$styleable;->AutoResizeTextButton:[I

    invoke-virtual {p1, p2, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 23
    .local v0, attrArray:Landroid/content/res/TypedArray;
    const v9, 0x7f030021

    invoke-virtual {v2, v9, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 24
    const/high16 v9, 0x4140

    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 25
    .local v3, minSize:F
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 26
    .local v8, textStyle:Ljava/lang/String;
    const/4 v9, 0x3

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 27
    .local v6, textColor:I
    const/4 v9, 0x4

    const/high16 v10, 0x4160

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    .line 28
    .local v7, textSize:F
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 29
    .local v4, paddingLeft:F
    const v9, 0x7f0200b2

    invoke-virtual {v0, v12, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 30
    .local v1, buttonImage:I
    const v9, 0x7f0901b8

    invoke-virtual {p0, v9}, Lcom/waze/view/button/AutoResizeTextButton;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/waze/view/text/AutoResizeTextView;

    iput-object v9, p0, Lcom/waze/view/button/AutoResizeTextButton;->textView:Lcom/waze/view/text/AutoResizeTextView;

    .line 31
    if-eqz v8, :cond_0

    .line 32
    const-string v9, "bold"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 33
    iget-object v9, p0, Lcom/waze/view/button/AutoResizeTextButton;->textView:Lcom/waze/view/text/AutoResizeTextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v12}, Lcom/waze/view/text/AutoResizeTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 36
    :cond_0
    iget-object v9, p0, Lcom/waze/view/button/AutoResizeTextButton;->textView:Lcom/waze/view/text/AutoResizeTextView;

    invoke-virtual {v9, v6}, Lcom/waze/view/text/AutoResizeTextView;->setTextColor(I)V

    .line 37
    iget-object v9, p0, Lcom/waze/view/button/AutoResizeTextButton;->textView:Lcom/waze/view/text/AutoResizeTextView;

    invoke-virtual {v9, v11, v7}, Lcom/waze/view/text/AutoResizeTextView;->setTextSize(IF)V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v5, v9, Landroid/util/DisplayMetrics;->density:F

    .line 39
    .local v5, scale:F
    iget-object v9, p0, Lcom/waze/view/button/AutoResizeTextButton;->textView:Lcom/waze/view/text/AutoResizeTextView;

    mul-float v10, v4, v5

    float-to-int v10, v10

    invoke-virtual {v9, v10, v11, v11, v11}, Lcom/waze/view/text/AutoResizeTextView;->setPadding(IIII)V

    .line 40
    iget-object v9, p0, Lcom/waze/view/button/AutoResizeTextButton;->textView:Lcom/waze/view/text/AutoResizeTextView;

    invoke-virtual {v9, v3}, Lcom/waze/view/text/AutoResizeTextView;->setMinTextSize(F)V

    .line 41
    invoke-virtual {p0, v1}, Lcom/waze/view/button/AutoResizeTextButton;->setButtonImageResource(I)V

    .line 42
    const v9, 0x7f0901b7

    invoke-virtual {p0, v9}, Lcom/waze/view/button/AutoResizeTextButton;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcom/waze/view/button/AutoResizeTextButton$1;

    invoke-direct {v10, p0}, Lcom/waze/view/button/AutoResizeTextButton$1;-><init>(Lcom/waze/view/button/AutoResizeTextButton;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method


# virtual methods
.method public setButtonImageResource(I)V
    .locals 2
    .parameter "buttonImage"

    .prologue
    const v0, 0x7f0901b7

    .line 50
    if-nez p1, :cond_0

    .line 51
    invoke-virtual {p0, v0}, Lcom/waze/view/button/AutoResizeTextButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0, v0}, Lcom/waze/view/button/AutoResizeTextButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/waze/view/button/AutoResizeTextButton;->textView:Lcom/waze/view/text/AutoResizeTextView;

    invoke-virtual {v0, p1}, Lcom/waze/view/text/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/waze/view/button/AutoResizeTextButton;->setButtonImageResource(I)V

    .line 59
    return-void
.end method

.method public setTextColor(III)V
    .locals 2
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/waze/view/button/AutoResizeTextButton;->textView:Lcom/waze/view/text/AutoResizeTextView;

    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/waze/view/text/AutoResizeTextView;->setTextColor(I)V

    .line 63
    return-void
.end method
