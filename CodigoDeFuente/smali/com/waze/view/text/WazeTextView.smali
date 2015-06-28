.class public Lcom/waze/view/text/WazeTextView;
.super Landroid/widget/TextView;
.source "WazeTextView.java"


# instance fields
.field nType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/view/text/WazeTextView;->nType:I

    .line 26
    invoke-direct {p0, p1}, Lcom/waze/view/text/WazeTextView;->setFont(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .parameter "context"
    .parameter "fontType"
    .parameter "style"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v1, 0x0

    iput v1, p0, Lcom/waze/view/text/WazeTextView;->nType:I

    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, font:Landroid/graphics/Typeface;
    invoke-virtual {p0}, Lcom/waze/view/text/WazeTextView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    iget v1, p0, Lcom/waze/view/text/WazeTextView;->nType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 43
    invoke-static {p1}, Lcom/waze/ResManager;->getRobotoReg(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 56
    :cond_0
    :goto_0
    invoke-virtual {p0, v0, p3}, Lcom/waze/view/text/WazeTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 57
    return-void

    .line 44
    :cond_1
    iget v1, p0, Lcom/waze/view/text/WazeTextView;->nType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 45
    invoke-static {p1}, Lcom/waze/ResManager;->getRobotoLight(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 46
    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/waze/view/text/WazeTextView;->nType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 47
    invoke-static {p1}, Lcom/waze/ResManager;->getRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 48
    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/waze/view/text/WazeTextView;->nType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 49
    invoke-static {p1}, Lcom/waze/ResManager;->getRobotoBlack(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 50
    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/waze/view/text/WazeTextView;->nType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    .line 51
    invoke-static {p1}, Lcom/waze/ResManager;->getRobotoSlab(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 52
    goto :goto_0

    .line 53
    :cond_5
    invoke-static {p1}, Lcom/waze/ResManager;->getRobotoReg(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    iput v2, p0, Lcom/waze/view/text/WazeTextView;->nType:I

    .line 32
    sget-object v1, Lcom/waze/R$styleable;->WazeTextView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 33
    .local v0, attrArray:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/waze/view/text/WazeTextView;->nType:I

    .line 34
    invoke-direct {p0, p1}, Lcom/waze/view/text/WazeTextView;->setFont(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    iput v2, p0, Lcom/waze/view/text/WazeTextView;->nType:I

    .line 18
    sget-object v1, Lcom/waze/R$styleable;->WazeTextView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 19
    .local v0, attrArray:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/waze/view/text/WazeTextView;->nType:I

    .line 20
    invoke-direct {p0, p1}, Lcom/waze/view/text/WazeTextView;->setFont(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method private setFont(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x2

    .line 60
    const/4 v2, 0x0

    .line 61
    .local v2, style:I
    const/4 v1, 0x0

    .line 62
    .local v1, isLight:Z
    invoke-virtual {p0}, Lcom/waze/view/text/WazeTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/waze/view/text/WazeTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Typeface;->isBold()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    const/4 v2, 0x1

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/waze/view/text/WazeTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    const/4 v1, 0x1

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/waze/view/text/WazeTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 73
    .local v0, font:Landroid/graphics/Typeface;
    invoke-virtual {p0}, Lcom/waze/view/text/WazeTextView;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 74
    iget v3, p0, Lcom/waze/view/text/WazeTextView;->nType:I

    if-eq v3, v5, :cond_2

    if-eqz v1, :cond_3

    .line 75
    :cond_2
    const-string v3, "sans-serif-light"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/waze/view/text/WazeTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 99
    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/waze/view/text/WazeTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 100
    return-void

    .line 77
    :cond_3
    const-string v3, "sans-serif"

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/waze/view/text/WazeTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 80
    :cond_4
    iget v3, p0, Lcom/waze/view/text/WazeTextView;->nType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 81
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 83
    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/waze/view/text/WazeTextView;->nType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_6

    .line 84
    invoke-static {p1}, Lcom/waze/ResManager;->getRobotoBlack(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 85
    goto :goto_0

    :cond_6
    iget v3, p0, Lcom/waze/view/text/WazeTextView;->nType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 86
    invoke-static {p1}, Lcom/waze/ResManager;->getRobotoReg(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 87
    goto :goto_0

    :cond_7
    iget v3, p0, Lcom/waze/view/text/WazeTextView;->nType:I

    if-ne v3, v5, :cond_8

    .line 88
    invoke-static {p1}, Lcom/waze/ResManager;->getRobotoLight(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 89
    goto :goto_0

    :cond_8
    iget v3, p0, Lcom/waze/view/text/WazeTextView;->nType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    .line 90
    invoke-static {p1}, Lcom/waze/ResManager;->getRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 91
    goto :goto_0

    :cond_9
    iget v3, p0, Lcom/waze/view/text/WazeTextView;->nType:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_a

    .line 92
    invoke-static {p1}, Lcom/waze/ResManager;->getRobotoSlab(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 93
    goto :goto_0

    :cond_a
    if-eqz v1, :cond_b

    .line 94
    invoke-static {p1}, Lcom/waze/ResManager;->getRobotoLight(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 95
    goto :goto_0

    .line 96
    :cond_b
    invoke-static {p1}, Lcom/waze/ResManager;->getRobotoReg(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method
