.class public Lcom/waze/WzTypefaceSpan;
.super Landroid/text/style/TypefaceSpan;
.source "WzTypefaceSpan.java"


# instance fields
.field private final mNewType:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .locals 1
    .parameter "aType"

    .prologue
    .line 31
    const-string v0, "sans"

    invoke-direct {p0, v0}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/waze/WzTypefaceSpan;->mNewType:Landroid/graphics/Typeface;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 0
    .parameter "aFamily"
    .parameter "aType"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p2, p0, Lcom/waze/WzTypefaceSpan;->mNewType:Landroid/graphics/Typeface;

    .line 39
    return-void
.end method

.method private static applyTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V
    .locals 4
    .parameter "aPaint"
    .parameter "aType"

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 57
    .local v1, old:Landroid/graphics/Typeface;
    if-nez v1, :cond_2

    .line 58
    const/4 v2, 0x0

    .line 63
    .local v2, oldStyle:I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    xor-int/lit8 v3, v3, -0x1

    and-int v0, v2, v3

    .line 64
    .local v0, fake:I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    .line 66
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 69
    :cond_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 71
    const/high16 v3, -0x4180

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 74
    :cond_1
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 75
    return-void

    .line 60
    .end local v0           #fake:I
    .end local v2           #oldStyle:I
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    .restart local v2       #oldStyle:I
    goto :goto_0
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "aTextPaint"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/waze/WzTypefaceSpan;->mNewType:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Lcom/waze/WzTypefaceSpan;->applyTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 45
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "aTextPaint"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/waze/WzTypefaceSpan;->mNewType:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Lcom/waze/WzTypefaceSpan;->applyTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 51
    return-void
.end method
