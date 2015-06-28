.class public Lcom/waze/navigate/MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/navigate/MenuAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/MenuAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 19
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 29
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 34
    if-nez p2, :cond_0

    .line 35
    iget-object v1, p0, Lcom/waze/navigate/MenuAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030083

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 36
    new-instance v0, Lcom/waze/navigate/MenuAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/waze/navigate/MenuAdapter$ViewHolder;-><init>()V

    .line 37
    .local v0, holder:Lcom/waze/navigate/MenuAdapter$ViewHolder;
    const v1, 0x7f0903f8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/waze/navigate/MenuAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 39
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 43
    :goto_0
    iget-object v1, v0, Lcom/waze/navigate/MenuAdapter$ViewHolder;->text:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Hey "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-object p2

    .line 41
    .end local v0           #holder:Lcom/waze/navigate/MenuAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/MenuAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/waze/navigate/MenuAdapter$ViewHolder;
    goto :goto_0
.end method
