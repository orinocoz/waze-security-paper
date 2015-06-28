.class public Lcom/waze/settings/GeneralListAdapter;
.super Landroid/widget/BaseAdapter;
.source "GeneralListAdapter.java"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private values:[Lcom/waze/settings/SettingsValue;


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

    iput-object v0, p0, Lcom/waze/settings/GeneralListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 19
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/waze/settings/GeneralListAdapter;->values:[Lcom/waze/settings/SettingsValue;

    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/waze/settings/GeneralListAdapter;->values:[Lcom/waze/settings/SettingsValue;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 37
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 42
    if-nez p2, :cond_0

    .line 43
    iget-object v4, p0, Lcom/waze/settings/GeneralListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0300ed

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 45
    :cond_0
    iget-object v4, p0, Lcom/waze/settings/GeneralListAdapter;->values:[Lcom/waze/settings/SettingsValue;

    aget-object v2, v4, p1

    .line 46
    .local v2, item:Lcom/waze/settings/SettingsValue;
    const v4, 0x7f0903f3

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    .line 47
    .local v3, name:Landroid/widget/CheckedTextView;
    const v4, 0x7f09063e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 48
    .local v1, iconView:Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/waze/settings/SettingsValue;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 49
    iget-object v4, v2, Lcom/waze/settings/SettingsValue;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    :goto_0
    iget-object v4, v2, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-boolean v4, v2, Lcom/waze/settings/SettingsValue;->isSelected:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 56
    const v4, 0x7f0902c8

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, container:Landroid/view/View;
    if-nez p1, :cond_3

    .line 58
    iget-object v4, p0, Lcom/waze/settings/GeneralListAdapter;->values:[Lcom/waze/settings/SettingsValue;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_2

    .line 59
    const v4, 0x7f020220

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 70
    :goto_1
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 71
    return-object p2

    .line 52
    .end local v0           #container:Landroid/view/View;
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 61
    .restart local v0       #container:Landroid/view/View;
    :cond_2
    const v4, 0x7f020221

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 64
    :cond_3
    iget-object v4, p0, Lcom/waze/settings/GeneralListAdapter;->values:[Lcom/waze/settings/SettingsValue;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_4

    .line 65
    const v4, 0x7f02021e

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 67
    :cond_4
    const v4, 0x7f02021f

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public setValues([Lcom/waze/settings/SettingsValue;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/waze/settings/GeneralListAdapter;->values:[Lcom/waze/settings/SettingsValue;

    .line 75
    invoke-virtual {p0}, Lcom/waze/settings/GeneralListAdapter;->notifyDataSetChanged()V

    .line 76
    return-void
.end method
