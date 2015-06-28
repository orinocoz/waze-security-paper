.class public Lcom/waze/profile/CarListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CarListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private nativeManager:Lcom/waze/NativeManager;

.field private selection:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "objects"
    .parameter "selection"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 24
    iput-object p4, p0, Lcom/waze/profile/CarListAdapter;->selection:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/profile/CarListAdapter;->nativeManager:Lcom/waze/NativeManager;

    .line 26
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 29
    move-object v5, p2

    .line 30
    .local v5, row:Landroid/view/View;
    if-nez v5, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/waze/profile/CarListAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 33
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f03002a

    invoke-virtual {v3, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 36
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    const v7, 0x7f0901f9

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, bg:Landroid/view/View;
    const v7, 0x7f0901f8

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 38
    .local v6, top:Landroid/view/View;
    const v7, 0x7f0901fc

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 39
    .local v1, bottom:Landroid/view/View;
    invoke-virtual {p0}, Lcom/waze/profile/CarListAdapter;->getCount()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 40
    const v7, 0x7f020225

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 41
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 42
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :goto_0
    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 58
    const v7, 0x7f0901fa

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 59
    .local v4, iv:Landroid/widget/ImageView;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v7, "cars/"

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/waze/profile/CarListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".bin"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    const v7, 0x7f0901fb

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    .line 62
    .local v2, ctv:Landroid/widget/CheckedTextView;
    iget-object v8, p0, Lcom/waze/profile/CarListAdapter;->nativeManager:Lcom/waze/NativeManager;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/waze/profile/CarListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".png"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v7, p0, Lcom/waze/profile/CarListAdapter;->selection:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/waze/profile/CarListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 65
    return-object v5

    .line 43
    .end local v2           #ctv:Landroid/widget/CheckedTextView;
    .end local v4           #iv:Landroid/widget/ImageView;
    :cond_1
    if-nez p1, :cond_2

    .line 44
    const v7, 0x7f020226

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 45
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 46
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/waze/profile/CarListAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne p1, v7, :cond_3

    .line 48
    const v7, 0x7f020223

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 49
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 50
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 52
    :cond_3
    const v7, 0x7f020224

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 53
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 54
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 0
    .parameter "selection"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/waze/profile/CarListAdapter;->selection:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/waze/profile/CarListAdapter;->notifyDataSetChanged()V

    .line 71
    return-void
.end method
