.class public Lcom/waze/view/button/ImageButtonLeft;
.super Landroid/widget/RelativeLayout;
.source "ImageButtonLeft.java"


# instance fields
.field private mBackground:Landroid/widget/RelativeLayout;

.field private mImageView:Landroid/widget/ImageView;

.field private mRoot:Landroid/widget/RelativeLayout;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/waze/view/button/ImageButtonLeft;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/waze/view/button/ImageButtonLeft;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/view/button/ImageButtonLeft;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v9, -0x1

    const/4 v11, 0x0

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 38
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f030066

    invoke-virtual {v3, v8, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    const v8, 0x7f09031d

    invoke-virtual {p0, v8}, Lcom/waze/view/button/ImageButtonLeft;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/waze/view/button/ImageButtonLeft;->mTextView:Landroid/widget/TextView;

    .line 41
    const v8, 0x7f09031c

    invoke-virtual {p0, v8}, Lcom/waze/view/button/ImageButtonLeft;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/waze/view/button/ImageButtonLeft;->mImageView:Landroid/widget/ImageView;

    .line 42
    const v8, 0x7f09031a

    invoke-virtual {p0, v8}, Lcom/waze/view/button/ImageButtonLeft;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/waze/view/button/ImageButtonLeft;->mRoot:Landroid/widget/RelativeLayout;

    .line 43
    const v8, 0x7f09031b

    invoke-virtual {p0, v8}, Lcom/waze/view/button/ImageButtonLeft;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/waze/view/button/ImageButtonLeft;->mBackground:Landroid/widget/RelativeLayout;

    .line 46
    sget-object v8, Lcom/waze/R$styleable;->ImageButtonLeft:[I

    invoke-virtual {p1, p2, v8, p3, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 49
    .local v4, ta:Landroid/content/res/TypedArray;
    const/4 v8, 0x3

    invoke-virtual {v4, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 50
    .local v1, btnImage:I
    const/4 v8, 0x4

    invoke-virtual {v4, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 51
    .local v0, btnBackground:I
    invoke-virtual {v4, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, text:Ljava/lang/String;
    const/4 v8, 0x1

    const/high16 v9, -0x100

    invoke-virtual {v4, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 53
    .local v6, textColor:I
    const/4 v8, 0x2

    const/16 v9, 0xe

    invoke-virtual {v4, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    int-to-float v7, v8

    .line 54
    .local v7, textSize:F
    const/4 v8, 0x5

    const/16 v9, 0x9

    invoke-virtual {v4, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 56
    .local v2, btnImagePadding:I
    const-string v8, "WAZE DEBUG"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Font size: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". Image Padding: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". Text: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v8, p0, Lcom/waze/view/button/ImageButtonLeft;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    iget-object v8, p0, Lcom/waze/view/button/ImageButtonLeft;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 62
    iget-object v8, p0, Lcom/waze/view/button/ImageButtonLeft;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v8, p0, Lcom/waze/view/button/ImageButtonLeft;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    iget-object v8, p0, Lcom/waze/view/button/ImageButtonLeft;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v11, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 66
    iget-object v8, p0, Lcom/waze/view/button/ImageButtonLeft;->mBackground:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 68
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void
.end method


# virtual methods
.method public setBackgroundResource(I)V
    .locals 1
    .parameter "res"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/waze/view/button/ImageButtonLeft;->mBackground:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 74
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .parameter "res"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/waze/view/button/ImageButtonLeft;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/waze/view/button/ImageButtonLeft;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method
