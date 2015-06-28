.class public Lcom/waze/mywaze/social/FoursquareListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FoursquareListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/waze/mywaze/social/FoursquareVenue;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Lcom/waze/mywaze/social/FoursquareVenue;)V
    .locals 0
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "objects"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 19
    move-object v3, p2

    .line 20
    .local v3, row:Landroid/view/View;
    if-nez v3, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/waze/mywaze/social/FoursquareListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 23
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030058

    invoke-virtual {v2, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 26
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    const v5, 0x7f0902c8

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 27
    .local v0, bg:Landroid/view/View;
    const v5, 0x7f0901f8

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 28
    .local v4, top:Landroid/view/View;
    const v5, 0x7f0901fc

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 29
    .local v1, bottom:Landroid/view/View;
    invoke-virtual {p0}, Lcom/waze/mywaze/social/FoursquareListAdapter;->getCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 30
    const v5, 0x7f020225

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 31
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 32
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 46
    :goto_0
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 48
    const v5, 0x7f0902c9

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/waze/mywaze/social/FoursquareListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/waze/mywaze/social/FoursquareVenue;

    iget-object v6, v6, Lcom/waze/mywaze/social/FoursquareVenue;->description:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const v5, 0x7f0902c5

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/waze/mywaze/social/FoursquareListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/waze/mywaze/social/FoursquareVenue;

    iget-object v6, v6, Lcom/waze/mywaze/social/FoursquareVenue;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const v5, 0x7f0902ca

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/waze/mywaze/social/FoursquareListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/waze/mywaze/social/FoursquareVenue;

    iget-object v6, v6, Lcom/waze/mywaze/social/FoursquareVenue;->distance:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-object v3

    .line 33
    :cond_1
    if-nez p1, :cond_2

    .line 34
    const v5, 0x7f020226

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 35
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 36
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p0}, Lcom/waze/mywaze/social/FoursquareListAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_3

    .line 38
    const v5, 0x7f020223

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 39
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 40
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 42
    :cond_3
    const v5, 0x7f020224

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 43
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 44
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
