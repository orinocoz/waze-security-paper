.class public Lcom/waze/main/navigate/NavigationListItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "NavigationListItemAdapter.java"


# instance fields
.field private driveOnLeft:Z

.field private inflater:Landroid/view/LayoutInflater;

.field private items:[Lcom/waze/main/navigate/NavigationItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "driveOnLeft"

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/waze/main/navigate/NavigationListItemAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 24
    iput-boolean p2, p0, Lcom/waze/main/navigate/NavigationListItemAdapter;->driveOnLeft:Z

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationListItemAdapter;->items:[Lcom/waze/main/navigate/NavigationItem;

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationListItemAdapter;->items:[Lcom/waze/main/navigate/NavigationItem;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 42
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v11, 0x7f02006c

    const/4 v10, 0x0

    .line 46
    iget-object v8, p0, Lcom/waze/main/navigate/NavigationListItemAdapter;->items:[Lcom/waze/main/navigate/NavigationItem;

    if-nez v8, :cond_0

    .line 47
    const/4 v7, 0x0

    .line 91
    :goto_0
    return-object v7

    .line 49
    :cond_0
    iget-object v8, p0, Lcom/waze/main/navigate/NavigationListItemAdapter;->items:[Lcom/waze/main/navigate/NavigationItem;

    aget-object v5, v8, p1

    .line 50
    .local v5, item:Lcom/waze/main/navigate/NavigationItem;
    move-object v7, p2

    .line 51
    .local v7, row:Landroid/view/View;
    if-nez v7, :cond_1

    .line 52
    iget-object v8, p0, Lcom/waze/main/navigate/NavigationListItemAdapter;->inflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030097

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 54
    :cond_1
    const v8, 0x7f090479

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 55
    .local v2, image:Landroid/widget/ImageView;
    iget-boolean v8, p0, Lcom/waze/main/navigate/NavigationListItemAdapter;->driveOnLeft:Z

    if-eqz v8, :cond_2

    sget-object v8, Lcom/waze/navbar/NavBar;->instImagesLeft:[I

    iget v9, v5, Lcom/waze/main/navigate/NavigationItem;->instruction:I

    aget v8, v8, v9

    :goto_1
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    const v8, 0x7f09047b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/waze/view/text/AutoResizeTextView;

    .line 58
    .local v6, name:Lcom/waze/view/text/AutoResizeTextView;
    invoke-virtual {v6}, Lcom/waze/view/text/AutoResizeTextView;->resetTextSize()V

    .line 59
    iget-object v8, v5, Lcom/waze/main/navigate/NavigationItem;->address:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/waze/view/text/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v8, 0x7f09047a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/view/text/AutoResizeTextView;

    .line 61
    .local v4, instruction:Lcom/waze/view/text/AutoResizeTextView;
    invoke-virtual {v4}, Lcom/waze/view/text/AutoResizeTextView;->resetTextSize()V

    .line 62
    iget-object v8, v5, Lcom/waze/main/navigate/NavigationItem;->label:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/waze/view/text/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const v8, 0x7f09047c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/text/AutoResizeTextView;

    .line 64
    .local v1, distance:Lcom/waze/view/text/AutoResizeTextView;
    invoke-virtual {v1}, Lcom/waze/view/text/AutoResizeTextView;->resetTextSize()V

    .line 65
    iget-object v8, v5, Lcom/waze/main/navigate/NavigationItem;->distance:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/waze/view/text/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const v8, 0x7f09047d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 67
    .local v3, index:Landroid/widget/TextView;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/waze/main/navigate/NavigationListItemAdapter;->items:[Lcom/waze/main/navigate/NavigationItem;

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const v8, 0x7f090478

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, container:Landroid/view/View;
    iget-object v8, p0, Lcom/waze/main/navigate/NavigationListItemAdapter;->items:[Lcom/waze/main/navigate/NavigationItem;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-ne p1, v8, :cond_4

    .line 71
    if-nez p1, :cond_3

    .line 72
    const v8, 0x7f02006d

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 89
    :goto_2
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 55
    .end local v0           #container:Landroid/view/View;
    .end local v1           #distance:Lcom/waze/view/text/AutoResizeTextView;
    .end local v3           #index:Landroid/widget/TextView;
    .end local v4           #instruction:Lcom/waze/view/text/AutoResizeTextView;
    .end local v6           #name:Lcom/waze/view/text/AutoResizeTextView;
    :cond_2
    sget-object v8, Lcom/waze/navbar/NavBar;->instImagesRight:[I

    iget v9, v5, Lcom/waze/main/navigate/NavigationItem;->instruction:I

    aget v8, v8, v9

    goto :goto_1

    .line 75
    .restart local v0       #container:Landroid/view/View;
    .restart local v1       #distance:Lcom/waze/view/text/AutoResizeTextView;
    .restart local v3       #index:Landroid/widget/TextView;
    .restart local v4       #instruction:Lcom/waze/view/text/AutoResizeTextView;
    .restart local v6       #name:Lcom/waze/view/text/AutoResizeTextView;
    :cond_3
    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 80
    :cond_4
    if-nez p1, :cond_5

    .line 81
    const v8, 0x7f02006e

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 84
    :cond_5
    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method public setItems([Lcom/waze/main/navigate/NavigationItem;)V
    .locals 0
    .parameter "items"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationListItemAdapter;->items:[Lcom/waze/main/navigate/NavigationItem;

    .line 95
    return-void
.end method
