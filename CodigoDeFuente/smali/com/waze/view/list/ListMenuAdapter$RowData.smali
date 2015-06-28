.class public Lcom/waze/view/list/ListMenuAdapter$RowData;
.super Ljava/lang/Object;
.source "ListMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/view/list/ListMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowData"
.end annotation


# instance fields
.field private mArrowImage:Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/String;

.field private mLabelFontSize:I

.field private mLeftImage:Landroid/graphics/drawable/Drawable;

.field private mRightImage:Landroid/graphics/drawable/Drawable;

.field private mRowHeight:I

.field private mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "label"
    .parameter "value"
    .parameter "leftImage"
    .parameter "rightImage"
    .parameter "arrowImage"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-virtual {p0, p1}, Lcom/waze/view/list/ListMenuAdapter$RowData;->setLabel(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0, p2}, Lcom/waze/view/list/ListMenuAdapter$RowData;->setValue(Ljava/lang/Object;)V

    .line 145
    invoke-virtual {p0, p3}, Lcom/waze/view/list/ListMenuAdapter$RowData;->setLeftImage(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0, p4}, Lcom/waze/view/list/ListMenuAdapter$RowData;->setRightImage(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0, p5}, Lcom/waze/view/list/ListMenuAdapter$RowData;->setArrowImage(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method static synthetic access$0(Lcom/waze/view/list/ListMenuAdapter$RowData;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/waze/view/list/ListMenuAdapter$RowData;->mLeftImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/view/list/ListMenuAdapter$RowData;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/waze/view/list/ListMenuAdapter$RowData;->mRightImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/view/list/ListMenuAdapter$RowData;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/waze/view/list/ListMenuAdapter$RowData;->mArrowImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/waze/view/list/ListMenuAdapter$RowData;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelFontSize()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/waze/view/list/ListMenuAdapter$RowData;->mLabelFontSize:I

    return v0
.end method

.method public getRowHeight()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/waze/view/list/ListMenuAdapter$RowData;->mRowHeight:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/waze/view/list/ListMenuAdapter$RowData;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public setArrowImage(Ljava/lang/String;)V
    .locals 1
    .parameter "arrowImage"

    .prologue
    .line 184
    invoke-static {p1}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/view/list/ListMenuAdapter$RowData;->mArrowImage:Landroid/graphics/drawable/Drawable;

    .line 185
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/waze/view/list/ListMenuAdapter$RowData;->mLabel:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setLabelFontSize(I)V
    .locals 0
    .parameter "labelFontSize"

    .prologue
    .line 174
    iput p1, p0, Lcom/waze/view/list/ListMenuAdapter$RowData;->mLabelFontSize:I

    .line 175
    return-void
.end method

.method public setLeftImage(Ljava/lang/String;)V
    .locals 1
    .parameter "leftImage"

    .prologue
    .line 178
    invoke-static {p1}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/view/list/ListMenuAdapter$RowData;->mLeftImage:Landroid/graphics/drawable/Drawable;

    .line 179
    return-void
.end method

.method public setRightImage(Ljava/lang/String;)V
    .locals 1
    .parameter "rightImage"

    .prologue
    .line 181
    invoke-static {p1}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/view/list/ListMenuAdapter$RowData;->mRightImage:Landroid/graphics/drawable/Drawable;

    .line 182
    return-void
.end method

.method public setRowHeight(I)V
    .locals 0
    .parameter "rowHeight"

    .prologue
    .line 167
    iput p1, p0, Lcom/waze/view/list/ListMenuAdapter$RowData;->mRowHeight:I

    .line 168
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/waze/view/list/ListMenuAdapter$RowData;->mValue:Ljava/lang/Object;

    .line 154
    return-void
.end method
