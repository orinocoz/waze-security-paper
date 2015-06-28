.class public Lcom/waze/view/list/ListMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/view/list/ListMenuAdapter$RowData;,
        Lcom/waze/view/list/ListMenuAdapter$RowHolder;
    }
.end annotation


# static fields
.field public static final LIST_MENU_ADAPTER_LABEL_FONT_SIZE_DEFAULT:I

.field public static final LIST_MENU_ADAPTER_ROW_HEIGHT_DEFAULT:I


# instance fields
.field private final mContext:Landroid/app/Activity;

.field private mCount:I

.field private mRowData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/waze/view/list/ListMenuAdapter$RowData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/waze/view/list/ListMenuAdapter$RowData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 39
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/waze/view/list/ListMenuAdapter$RowData;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/view/list/ListMenuAdapter;->mRowData:Ljava/util/List;

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ListMenuAdapter cannot be created without context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/waze/view/list/ListMenuAdapter;->mCount:I

    .line 46
    iput-object p2, p0, Lcom/waze/view/list/ListMenuAdapter;->mRowData:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lcom/waze/view/list/ListMenuAdapter;->mContext:Landroid/app/Activity;

    .line 48
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/waze/view/list/ListMenuAdapter;->mCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/waze/view/list/ListMenuAdapter;->mRowData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 65
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 71
    iget-object v3, p0, Lcom/waze/view/list/ListMenuAdapter;->mRowData:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/waze/view/list/ListMenuAdapter$RowData;

    .line 72
    .local v2, rowData:Lcom/waze/view/list/ListMenuAdapter$RowData;
    if-nez p2, :cond_1

    .line 74
    iget-object v3, p0, Lcom/waze/view/list/ListMenuAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 75
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030078

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 79
    new-instance v0, Lcom/waze/view/list/ListMenuAdapter$RowHolder;

    invoke-direct {v0}, Lcom/waze/view/list/ListMenuAdapter$RowHolder;-><init>()V

    .line 80
    .local v0, holder:Lcom/waze/view/list/ListMenuAdapter$RowHolder;
    const v3, 0x7f090378

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/waze/view/list/ListMenuAdapter$RowHolder;->leftImage:Landroid/widget/ImageView;

    .line 81
    const v3, 0x7f090379

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/waze/view/list/ListMenuAdapter$RowHolder;->label:Landroid/widget/TextView;

    .line 82
    const v3, 0x7f09037a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/waze/view/list/ListMenuAdapter$RowHolder;->rightImage:Landroid/widget/ImageView;

    .line 83
    const v3, 0x7f09037b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/waze/view/list/ListMenuAdapter$RowHolder;->arrow:Landroid/widget/ImageView;

    .line 85
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, v0, Lcom/waze/view/list/ListMenuAdapter$RowHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/waze/view/list/ListMenuAdapter$RowData;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    #getter for: Lcom/waze/view/list/ListMenuAdapter$RowData;->mLeftImage:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/waze/view/list/ListMenuAdapter$RowData;->access$0(Lcom/waze/view/list/ListMenuAdapter$RowData;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 98
    iget-object v3, v0, Lcom/waze/view/list/ListMenuAdapter$RowHolder;->leftImage:Landroid/widget/ImageView;

    #getter for: Lcom/waze/view/list/ListMenuAdapter$RowData;->mLeftImage:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/waze/view/list/ListMenuAdapter$RowData;->access$0(Lcom/waze/view/list/ListMenuAdapter$RowData;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v3, v0, Lcom/waze/view/list/ListMenuAdapter$RowHolder;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    :goto_1
    #getter for: Lcom/waze/view/list/ListMenuAdapter$RowData;->mRightImage:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/waze/view/list/ListMenuAdapter$RowData;->access$1(Lcom/waze/view/list/ListMenuAdapter$RowData;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 105
    iget-object v3, v0, Lcom/waze/view/list/ListMenuAdapter$RowHolder;->rightImage:Landroid/widget/ImageView;

    #getter for: Lcom/waze/view/list/ListMenuAdapter$RowData;->mRightImage:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/waze/view/list/ListMenuAdapter$RowData;->access$1(Lcom/waze/view/list/ListMenuAdapter$RowData;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object v3, v0, Lcom/waze/view/list/ListMenuAdapter$RowHolder;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    :goto_2
    #getter for: Lcom/waze/view/list/ListMenuAdapter$RowData;->mArrowImage:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/waze/view/list/ListMenuAdapter$RowData;->access$2(Lcom/waze/view/list/ListMenuAdapter$RowData;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 112
    iget-object v3, v0, Lcom/waze/view/list/ListMenuAdapter$RowHolder;->arrow:Landroid/widget/ImageView;

    #getter for: Lcom/waze/view/list/ListMenuAdapter$RowData;->mArrowImage:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/waze/view/list/ListMenuAdapter$RowData;->access$2(Lcom/waze/view/list/ListMenuAdapter$RowData;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v3, v0, Lcom/waze/view/list/ListMenuAdapter$RowHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    :goto_3
    invoke-virtual {v2}, Lcom/waze/view/list/ListMenuAdapter$RowData;->getRowHeight()I

    .line 123
    invoke-virtual {v2}, Lcom/waze/view/list/ListMenuAdapter$RowData;->getLabelFontSize()I

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    iget-object v3, v0, Lcom/waze/view/list/ListMenuAdapter$RowHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/waze/view/list/ListMenuAdapter$RowData;->getLabelFontSize()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 126
    :cond_0
    return-object p2

    .line 89
    .end local v0           #holder:Lcom/waze/view/list/ListMenuAdapter$RowHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/view/list/ListMenuAdapter$RowHolder;

    .restart local v0       #holder:Lcom/waze/view/list/ListMenuAdapter$RowHolder;
    goto :goto_0

    .line 101
    :cond_2
    iget-object v3, v0, Lcom/waze/view/list/ListMenuAdapter$RowHolder;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 108
    :cond_3
    iget-object v3, v0, Lcom/waze/view/list/ListMenuAdapter$RowHolder;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 115
    :cond_4
    iget-object v3, v0, Lcom/waze/view/list/ListMenuAdapter$RowHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method public updateRowData(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/waze/view/list/ListMenuAdapter$RowData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/waze/view/list/ListMenuAdapter$RowData;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/waze/view/list/ListMenuAdapter;->mCount:I

    .line 53
    iput-object p1, p0, Lcom/waze/view/list/ListMenuAdapter;->mRowData:Ljava/util/List;

    .line 54
    return-void
.end method
