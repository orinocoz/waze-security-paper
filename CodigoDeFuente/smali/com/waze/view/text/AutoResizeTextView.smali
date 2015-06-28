.class public Lcom/waze/view/text/AutoResizeTextView;
.super Lcom/waze/view/text/WazeTextView;
.source "AutoResizeTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/view/text/AutoResizeTextView$OnTextResizeListener;
    }
.end annotation


# static fields
.field public static final MIN_TEXT_SIZE:F = 15.0f

.field private static final mEllipsis:Ljava/lang/String; = "..."

.field private static final sTextResizeCanvas:Landroid/graphics/Canvas;


# instance fields
.field private mAddEllipsis:Z

.field private mMaxTextSize:F

.field private mMinTextSize:F

.field private mNeedsResize:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mTextResizeListener:Lcom/waze/view/text/AutoResizeTextView$OnTextResizeListener;

.field private mTextSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/waze/view/text/AutoResizeTextView;->sTextResizeCanvas:Landroid/graphics/Canvas;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/waze/view/text/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x4170

    const/4 v3, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/waze/view/text/WazeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-boolean v5, p0, Lcom/waze/view/text/AutoResizeTextView;->mNeedsResize:Z

    .line 41
    iput v3, p0, Lcom/waze/view/text/AutoResizeTextView;->mMaxTextSize:F

    .line 44
    iput v4, p0, Lcom/waze/view/text/AutoResizeTextView;->mMinTextSize:F

    .line 47
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/waze/view/text/AutoResizeTextView;->mSpacingMult:F

    .line 50
    iput v3, p0, Lcom/waze/view/text/AutoResizeTextView;->mSpacingAdd:F

    .line 53
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/waze/view/text/AutoResizeTextView;->mAddEllipsis:Z

    .line 63
    invoke-virtual {p0}, Lcom/waze/view/text/AutoResizeTextView;->getTextSize()F

    move-result v2

    iput v2, p0, Lcom/waze/view/text/AutoResizeTextView;->mTextSize:F

    .line 64
    sget-object v2, Lcom/waze/R$styleable;->AutoResizeTextView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, attrArray:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 66
    .local v1, minSize:F
    invoke-virtual {p0, v1}, Lcom/waze/view/text/AutoResizeTextView;->setMinTextSize(F)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/view/text/WazeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/view/text/AutoResizeTextView;->mNeedsResize:Z

    .line 41
    iput v1, p0, Lcom/waze/view/text/AutoResizeTextView;->mMaxTextSize:F

    .line 44
    const/high16 v0, 0x4170

    iput v0, p0, Lcom/waze/view/text/AutoResizeTextView;->mMinTextSize:F

    .line 47
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/waze/view/text/AutoResizeTextView;->mSpacingMult:F

    .line 50
    iput v1, p0, Lcom/waze/view/text/AutoResizeTextView;->mSpacingAdd:F

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/view/text/AutoResizeTextView;->mAddEllipsis:Z

    .line 72
    invoke-virtual {p0}, Lcom/waze/view/text/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/waze/view/text/AutoResizeTextView;->mTextSize:F

    .line 73
    return-void
.end method

.method private getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I
    .locals 10
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "textSize"

    .prologue
    const/4 v7, 0x1

    const/4 v9, -0x1

    .line 287
    invoke-virtual {p0}, Lcom/waze/view/text/AutoResizeTextView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v9

    .line 298
    :goto_0
    return v1

    .line 290
    :cond_0
    invoke-virtual {p2, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 292
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/waze/view/text/AutoResizeTextView;->mSpacingMult:F

    iget v6, p0, Lcom/waze/view/text/AutoResizeTextView;->mSpacingAdd:F

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 293
    .local v0, layout:Landroid/text/StaticLayout;
    sget-object v1, Lcom/waze/view/text/AutoResizeTextView;->sTextResizeCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 294
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v8

    .line 295
    .local v8, lines:I
    if-le v8, v7, :cond_1

    move v1, v9

    .line 296
    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getAddEllipsis()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/waze/view/text/AutoResizeTextView;->mAddEllipsis:Z

    return v0
.end method

.method public getMaxTextSize()F
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/waze/view/text/AutoResizeTextView;->mMaxTextSize:F

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/waze/view/text/AutoResizeTextView;->mMinTextSize:F

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 196
    invoke-super/range {p0 .. p5}, Lcom/waze/view/text/WazeTextView;->onLayout(ZIIII)V

    .line 198
    if-nez p1, :cond_0

    iget-boolean v2, p0, Lcom/waze/view/text/AutoResizeTextView;->mNeedsResize:Z

    if-eqz v2, :cond_1

    .line 199
    :cond_0
    sub-int v2, p4, p2

    invoke-virtual {p0}, Lcom/waze/view/text/AutoResizeTextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/waze/view/text/AutoResizeTextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 200
    .local v1, widthLimit:I
    sub-int v2, p5, p3

    invoke-virtual {p0}, Lcom/waze/view/text/AutoResizeTextView;->getCompoundPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/waze/view/text/AutoResizeTextView;->getCompoundPaddingTop()I

    move-result v3

    sub-int v0, v2, v3

    .line 201
    .local v0, heightLimit:I
    invoke-virtual {p0, v1, v0}, Lcom/waze/view/text/AutoResizeTextView;->resizeText(II)V

    .line 203
    .end local v0           #heightLimit:I
    .end local v1           #widthLimit:I
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 89
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/waze/view/text/AutoResizeTextView;->resetTextSize()V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/view/text/AutoResizeTextView;->mNeedsResize:Z

    .line 93
    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/view/text/AutoResizeTextView;->mNeedsResize:Z

    .line 81
    invoke-virtual {p0}, Lcom/waze/view/text/AutoResizeTextView;->requestLayout()V

    .line 82
    return-void
.end method

.method public resetTextSize()V
    .locals 2

    .prologue
    .line 187
    const/4 v0, 0x0

    iget v1, p0, Lcom/waze/view/text/AutoResizeTextView;->mTextSize:F

    invoke-super {p0, v0, v1}, Lcom/waze/view/text/WazeTextView;->setTextSize(IF)V

    .line 188
    iget v0, p0, Lcom/waze/view/text/AutoResizeTextView;->mTextSize:F

    iput v0, p0, Lcom/waze/view/text/AutoResizeTextView;->mMaxTextSize:F

    .line 189
    return-void
.end method

.method public resizeText()V
    .locals 4

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/waze/view/text/AutoResizeTextView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/waze/view/text/AutoResizeTextView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/waze/view/text/AutoResizeTextView;->getPaddingTop()I

    move-result v3

    sub-int v0, v2, v3

    .line 211
    .local v0, heightLimit:I
    invoke-virtual {p0}, Lcom/waze/view/text/AutoResizeTextView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/waze/view/text/AutoResizeTextView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/waze/view/text/AutoResizeTextView;->getPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 212
    .local v1, widthLimit:I
    invoke-virtual {p0, v1, v0}, Lcom/waze/view/text/AutoResizeTextView;->resizeText(II)V

    .line 213
    return-void
.end method

.method public resizeText(II)V
    .locals 19
    .parameter "width"
    .parameter "height"

    .prologue
    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/waze/view/text/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 223
    .local v4, text:Ljava/lang/CharSequence;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eqz v6, :cond_0

    if-lez p2, :cond_0

    if-lez p1, :cond_0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/waze/view/text/AutoResizeTextView;->mTextSize:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/waze/view/text/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 231
    .local v5, textPaint:Landroid/text/TextPaint;
    invoke-virtual {v5}, Landroid/text/TextPaint;->getTextSize()F

    move-result v15

    .line 233
    .local v15, oldTextSize:F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/waze/view/text/AutoResizeTextView;->mMaxTextSize:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/waze/view/text/AutoResizeTextView;->mTextSize:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/waze/view/text/AutoResizeTextView;->mMaxTextSize:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 236
    .local v17, targetTextSize:F
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/waze/view/text/AutoResizeTextView;->getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I

    move-result v18

    .line 239
    .local v18, textHeight:I
    :goto_2
    const/4 v6, -0x1

    move/from16 v0, v18

    if-eq v0, v6, :cond_2

    move/from16 v0, v18

    move/from16 v1, p2

    if-le v0, v1, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget v6, v0, Lcom/waze/view/text/AutoResizeTextView;->mMinTextSize:F

    cmpl-float v6, v17, v6

    if-gtz v6, :cond_a

    .line 245
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/waze/view/text/AutoResizeTextView;->isInEditMode()Z

    move-result v6

    if-nez v6, :cond_7

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/waze/view/text/AutoResizeTextView;->mAddEllipsis:Z

    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/waze/view/text/AutoResizeTextView;->mMinTextSize:F

    cmpl-float v6, v17, v6

    if-nez v6, :cond_7

    move/from16 v0, v18

    move/from16 v1, p2

    if-gt v0, v1, :cond_4

    const/4 v6, -0x1

    move/from16 v0, v18

    if-ne v0, v6, :cond_7

    .line 247
    :cond_4
    new-instance v3, Landroid/text/StaticLayout;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/waze/view/text/AutoResizeTextView;->mSpacingMult:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/waze/view/text/AutoResizeTextView;->mSpacingAdd:F

    const/4 v10, 0x0

    move/from16 v6, p1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 248
    .local v3, layout:Landroid/text/StaticLayout;
    sget-object v6, Lcom/waze/view/text/AutoResizeTextView;->sTextResizeCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v6}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 249
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v6

    add-int/lit8 v13, v6, -0x1

    .line 250
    .local v13, lastLine:I
    const/4 v6, -0x1

    if-eq v13, v6, :cond_7

    .line 251
    invoke-virtual {v3, v13}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v16

    .line 252
    .local v16, start:I
    invoke-virtual {v3, v13}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v12

    .line 253
    .local v12, end:I
    invoke-virtual {v3, v13}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v14

    .line 254
    .local v14, lineWidth:F
    const-string v6, "..."

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    .line 257
    .local v11, ellipseWidth:F
    :goto_3
    move/from16 v0, p1

    int-to-float v6, v0

    add-float v7, v14, v11

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_b

    .line 263
    :cond_5
    if-gez v12, :cond_6

    .line 264
    const/4 v12, 0x0

    .line 266
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-interface {v4, v7, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 272
    .end local v3           #layout:Landroid/text/StaticLayout;
    .end local v11           #ellipseWidth:F
    .end local v12           #end:I
    .end local v13           #lastLine:I
    .end local v14           #lineWidth:F
    .end local v16           #start:I
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/waze/view/text/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 274
    move-object/from16 v0, p0

    iget v6, v0, Lcom/waze/view/text/AutoResizeTextView;->mSpacingAdd:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/waze/view/text/AutoResizeTextView;->mSpacingMult:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/waze/view/text/AutoResizeTextView;->setLineSpacing(FF)V

    .line 277
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/waze/view/text/AutoResizeTextView;->mTextResizeListener:Lcom/waze/view/text/AutoResizeTextView$OnTextResizeListener;

    if-eqz v6, :cond_8

    .line 278
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/waze/view/text/AutoResizeTextView;->mTextResizeListener:Lcom/waze/view/text/AutoResizeTextView$OnTextResizeListener;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v6, v0, v15, v1}, Lcom/waze/view/text/AutoResizeTextView$OnTextResizeListener;->onTextResize(Landroid/widget/TextView;FF)V

    .line 282
    :cond_8
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/waze/view/text/AutoResizeTextView;->mNeedsResize:Z

    goto/16 :goto_0

    .line 233
    .end local v17           #targetTextSize:F
    .end local v18           #textHeight:I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/view/text/AutoResizeTextView;->mTextSize:F

    move/from16 v17, v0

    goto/16 :goto_1

    .line 240
    .restart local v17       #targetTextSize:F
    .restart local v18       #textHeight:I
    :cond_a
    const/high16 v6, 0x3f80

    sub-float v6, v17, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/waze/view/text/AutoResizeTextView;->mMinTextSize:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 241
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/waze/view/text/AutoResizeTextView;->getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I

    move-result v18

    goto/16 :goto_2

    .line 258
    .restart local v3       #layout:Landroid/text/StaticLayout;
    .restart local v11       #ellipseWidth:F
    .restart local v12       #end:I
    .restart local v13       #lastLine:I
    .restart local v14       #lineWidth:F
    .restart local v16       #start:I
    :cond_b
    move/from16 v0, v16

    if-gt v0, v12, :cond_5

    .line 261
    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v6, v12, 0x1

    move/from16 v0, v16

    invoke-interface {v4, v0, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v14

    goto/16 :goto_3
.end method

.method public setAddEllipsis(Z)V
    .locals 0
    .parameter "addEllipsis"

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/waze/view/text/AutoResizeTextView;->mAddEllipsis:Z

    .line 173
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0
    .parameter "add"
    .parameter "mult"

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Lcom/waze/view/text/WazeTextView;->setLineSpacing(FF)V

    .line 127
    iput p2, p0, Lcom/waze/view/text/AutoResizeTextView;->mSpacingMult:F

    .line 128
    iput p1, p0, Lcom/waze/view/text/AutoResizeTextView;->mSpacingAdd:F

    .line 129
    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 0
    .parameter "maxTextSize"

    .prologue
    .line 136
    iput p1, p0, Lcom/waze/view/text/AutoResizeTextView;->mMaxTextSize:F

    .line 137
    invoke-virtual {p0}, Lcom/waze/view/text/AutoResizeTextView;->requestLayout()V

    .line 138
    invoke-virtual {p0}, Lcom/waze/view/text/AutoResizeTextView;->invalidate()V

    .line 139
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0
    .parameter "minTextSize"

    .prologue
    .line 154
    iput p1, p0, Lcom/waze/view/text/AutoResizeTextView;->mMinTextSize:F

    .line 155
    invoke-virtual {p0}, Lcom/waze/view/text/AutoResizeTextView;->requestLayout()V

    .line 156
    invoke-virtual {p0}, Lcom/waze/view/text/AutoResizeTextView;->invalidate()V

    .line 157
    return-void
.end method

.method public setOnResizeListener(Lcom/waze/view/text/AutoResizeTextView$OnTextResizeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/waze/view/text/AutoResizeTextView;->mTextResizeListener:Lcom/waze/view/text/AutoResizeTextView$OnTextResizeListener;

    .line 101
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .parameter "size"

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/waze/view/text/WazeTextView;->setTextSize(F)V

    .line 109
    invoke-virtual {p0}, Lcom/waze/view/text/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/waze/view/text/AutoResizeTextView;->mTextSize:F

    .line 110
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1
    .parameter "unit"
    .parameter "size"

    .prologue
    .line 117
    invoke-super {p0, p1, p2}, Lcom/waze/view/text/WazeTextView;->setTextSize(IF)V

    .line 118
    invoke-virtual {p0}, Lcom/waze/view/text/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/waze/view/text/AutoResizeTextView;->mTextSize:F

    .line 119
    return-void
.end method
