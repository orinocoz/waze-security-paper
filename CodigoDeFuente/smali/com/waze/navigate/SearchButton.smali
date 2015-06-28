.class public Lcom/waze/navigate/SearchButton;
.super Ljava/lang/Object;
.source "SearchButton.java"


# instance fields
.field private button:Landroid/widget/ImageButton;

.field private drawableIdle:Landroid/graphics/drawable/Drawable;

.field private drawableSelected:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/widget/ImageButton;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "b"
    .parameter "drSel"
    .parameter "drIdle"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/waze/navigate/SearchButton;->button:Landroid/widget/ImageButton;

    .line 15
    iput-object p2, p0, Lcom/waze/navigate/SearchButton;->drawableSelected:Landroid/graphics/drawable/Drawable;

    .line 16
    iput-object p3, p0, Lcom/waze/navigate/SearchButton;->drawableIdle:Landroid/graphics/drawable/Drawable;

    .line 17
    invoke-virtual {p0}, Lcom/waze/navigate/SearchButton;->idleButton()V

    .line 18
    return-void
.end method


# virtual methods
.method public getButtonXPosition()I
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/waze/navigate/SearchButton;->button:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/waze/navigate/SearchButton;->button:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getButtonYPosition()I
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/waze/navigate/SearchButton;->button:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/waze/navigate/SearchButton;->button:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public idleButton()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/waze/navigate/SearchButton;->button:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/waze/navigate/SearchButton;->drawableIdle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    return-void
.end method

.method public selectButton()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 20
    iget-object v3, p0, Lcom/waze/navigate/SearchButton;->button:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/waze/navigate/SearchButton;->drawableSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    iget-object v3, p0, Lcom/waze/navigate/SearchButton;->button:Landroid/widget/ImageButton;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/waze/navigate/SearchButton;->button:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/waze/navigate/SearchButton;->button:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    iget-object v3, p0, Lcom/waze/navigate/SearchButton;->button:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/HorizontalScrollView;

    if-eqz v3, :cond_2

    .line 27
    iget-object v3, p0, Lcom/waze/navigate/SearchButton;->button:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/HorizontalScrollView;

    .line 28
    .local v2, sv:Landroid/widget/HorizontalScrollView;
    invoke-virtual {p0}, Lcom/waze/navigate/SearchButton;->getButtonXPosition()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    .line 29
    .local v0, offsetX:I
    invoke-virtual {v2, v0, v5}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    .line 31
    .end local v0           #offsetX:I
    .end local v2           #sv:Landroid/widget/HorizontalScrollView;
    :cond_2
    iget-object v3, p0, Lcom/waze/navigate/SearchButton;->button:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    .line 32
    .local v2, sv:Landroid/widget/ScrollView;
    invoke-virtual {p0}, Lcom/waze/navigate/SearchButton;->getButtonYPosition()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v4

    .line 33
    .local v1, offsetY:I
    invoke-virtual {v2, v5, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0
.end method
