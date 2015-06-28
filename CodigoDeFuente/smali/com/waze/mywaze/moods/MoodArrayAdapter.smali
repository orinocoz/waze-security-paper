.class public Lcom/waze/mywaze/moods/MoodArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MoodArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/waze/mywaze/moods/MoodItem;",
        ">;"
    }
.end annotation


# instance fields
.field private moodManager:Lcom/waze/MoodManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Lcom/waze/mywaze/moods/MoodItem;)V
    .locals 1
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "objects"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 21
    invoke-static {}, Lcom/waze/MoodManager;->getInstance()Lcom/waze/MoodManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/mywaze/moods/MoodArrayAdapter;->moodManager:Lcom/waze/MoodManager;

    .line 22
    return-void
.end method

.method private getItemView(Lcom/waze/mywaze/moods/MoodItem;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "item"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 57
    move-object v5, p2

    .line 58
    .local v5, row:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 59
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f090400

    if-eq v6, v7, :cond_1

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/waze/mywaze/moods/MoodArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 62
    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 61
    check-cast v3, Landroid/view/LayoutInflater;

    .line 63
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030087

    invoke-virtual {v3, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 66
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    const v6, 0x7f090402

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 67
    .local v2, icon:Landroid/widget/ImageView;
    iget-object v6, p1, Lcom/waze/mywaze/moods/MoodItem;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    const v6, 0x7f090403

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckedTextView;

    .line 70
    .local v4, name:Landroid/widget/CheckedTextView;
    iget-object v6, p1, Lcom/waze/mywaze/moods/MoodItem;->caption:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v6, p1, Lcom/waze/mywaze/moods/MoodItem;->mood:Ljava/lang/String;

    iget-object v7, p0, Lcom/waze/mywaze/moods/MoodArrayAdapter;->moodManager:Lcom/waze/MoodManager;

    invoke-virtual {v7}, Lcom/waze/MoodManager;->getWazerMood()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/waze/mywaze/moods/MoodArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 73
    iget-boolean v6, p1, Lcom/waze/mywaze/moods/MoodItem;->enabled:Z

    if-eqz v6, :cond_2

    const v6, 0x7f080023

    .line 72
    :goto_0
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 74
    .local v0, color:I
    invoke-virtual {v4, v0}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    .line 76
    const v6, 0x7f090401

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, container:Landroid/view/View;
    iget-boolean v6, p1, Lcom/waze/mywaze/moods/MoodItem;->last:Z

    if-eqz v6, :cond_4

    .line 78
    iget-boolean v6, p1, Lcom/waze/mywaze/moods/MoodItem;->first:Z

    if-eqz v6, :cond_3

    .line 79
    const v6, 0x7f020225

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 92
    :goto_1
    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 94
    return-object v5

    .line 73
    .end local v0           #color:I
    .end local v1           #container:Landroid/view/View;
    :cond_2
    const v6, 0x7f080029

    goto :goto_0

    .line 81
    .restart local v0       #color:I
    .restart local v1       #container:Landroid/view/View;
    :cond_3
    const v6, 0x7f020223

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 85
    :cond_4
    iget-boolean v6, p1, Lcom/waze/mywaze/moods/MoodItem;->first:Z

    if-eqz v6, :cond_5

    .line 86
    const v6, 0x7f020226

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 88
    :cond_5
    const v6, 0x7f020224

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private getTitleView(Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "title"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 41
    move-object v2, p2

    .line 42
    .local v2, row:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f090404

    if-eq v3, v4, :cond_1

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/waze/mywaze/moods/MoodArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 46
    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 45
    check-cast v1, Landroid/view/LayoutInflater;

    .line 47
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030088

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 50
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    const v3, 0x7f090405

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    .local v0, caption:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-object v2
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 32
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Getting mood view for item no."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {p0, p1}, Lcom/waze/mywaze/moods/MoodArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/mywaze/moods/MoodItem;

    .line 34
    .local v0, item:Lcom/waze/mywaze/moods/MoodItem;
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Item is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/waze/mywaze/moods/MoodItem;->caption:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-boolean v1, v0, Lcom/waze/mywaze/moods/MoodItem;->title:Z

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, v0, Lcom/waze/mywaze/moods/MoodItem;->caption:Ljava/lang/String;

    invoke-direct {p0, v1, p2, p3}, Lcom/waze/mywaze/moods/MoodArrayAdapter;->getTitleView(Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 35
    :goto_0
    return-object v1

    .line 37
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lcom/waze/mywaze/moods/MoodArrayAdapter;->getItemView(Lcom/waze/mywaze/moods/MoodItem;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/waze/mywaze/moods/MoodArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/mywaze/moods/MoodItem;

    iget-boolean v0, v0, Lcom/waze/mywaze/moods/MoodItem;->enabled:Z

    return v0
.end method
