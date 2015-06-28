.class Lcom/tokenautocomplete/TokenCompleteTextView$ViewSpan;
.super Landroid/text/style/ReplacementSpan;
.source "TokenCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewSpan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

.field protected view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "v"

    .prologue
    .line 778
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$ViewSpan;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 779
    iput-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$ViewSpan;->view:Landroid/view/View;

    .line 780
    return-void
.end method

.method private prepView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 783
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$ViewSpan;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #calls: Lcom/tokenautocomplete/TokenCompleteTextView;->maxTextWidth()F
    invoke-static {v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$0(Lcom/tokenautocomplete/TokenCompleteTextView;)F

    move-result v2

    float-to-int v2, v2

    const/high16 v3, -0x8000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 784
    .local v1, widthSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 786
    .local v0, heightSpec:I
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$ViewSpan;->view:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 787
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$ViewSpan;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$ViewSpan;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$ViewSpan;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 788
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 3
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    .line 791
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView$ViewSpan;->prepView()V

    .line 793
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 795
    sub-int v1, p8, p6

    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$ViewSpan;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 796
    .local v0, padding:I
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$ViewSpan;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v1, p8, v1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    invoke-virtual {p1, p5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 797
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$ViewSpan;->view:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 798
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 799
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 5
    .parameter "paint"
    .parameter "charSequence"
    .parameter "i"
    .parameter "i2"
    .parameter "fm"

    .prologue
    .line 802
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView$ViewSpan;->prepView()V

    .line 804
    if-eqz p5, :cond_0

    .line 806
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$ViewSpan;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 807
    .local v1, height:I
    iget v3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v4, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v3, v4

    sub-int v2, v1, v3

    .line 808
    .local v2, need:I
    if-lez v2, :cond_0

    .line 809
    div-int/lit8 v0, v2, 0x2

    .line 811
    .local v0, ascent:I
    iget v3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v4, v2, v0

    add-int/2addr v3, v4

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 812
    iget v3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v3, v0

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 813
    iget v3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int v4, v2, v0

    add-int/2addr v3, v4

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 814
    iget v3, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 818
    .end local v0           #ascent:I
    .end local v1           #height:I
    .end local v2           #need:I
    :cond_0
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$ViewSpan;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    return v3
.end method
