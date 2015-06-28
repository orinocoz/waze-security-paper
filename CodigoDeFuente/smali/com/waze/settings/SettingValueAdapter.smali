.class public Lcom/waze/settings/SettingValueAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingValueAdapter.java"


# instance fields
.field private ItemSelected:Lcom/waze/settings/SettingsValue;

.field private inflater:Landroid/view/LayoutInflater;

.field protected values:[Lcom/waze/settings/SettingsValue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/settings/SettingValueAdapter;->ItemSelected:Lcom/waze/settings/SettingsValue;

    .line 19
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/settings/SettingValueAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 20
    return-void
.end method


# virtual methods
.method public GetSelectedItem()Lcom/waze/settings/SettingsValue;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/waze/settings/SettingValueAdapter;->ItemSelected:Lcom/waze/settings/SettingsValue;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/waze/settings/SettingValueAdapter;->values:[Lcom/waze/settings/SettingsValue;

    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/waze/settings/SettingValueAdapter;->values:[Lcom/waze/settings/SettingsValue;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/waze/settings/SettingValueAdapter;->values:[Lcom/waze/settings/SettingsValue;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/waze/settings/SettingValueAdapter;->values:[Lcom/waze/settings/SettingsValue;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 47
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getValues()[Lcom/waze/settings/SettingsValue;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/waze/settings/SettingValueAdapter;->values:[Lcom/waze/settings/SettingsValue;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 52
    if-nez p2, :cond_0

    .line 53
    iget-object v4, p0, Lcom/waze/settings/SettingValueAdapter;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0300ed

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    :cond_0
    iget-object v4, p0, Lcom/waze/settings/SettingValueAdapter;->values:[Lcom/waze/settings/SettingsValue;

    aget-object v2, v4, p1

    .line 56
    .local v2, item:Lcom/waze/settings/SettingsValue;
    const v4, 0x7f0903f3

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    .line 57
    .local v3, name:Landroid/widget/CheckedTextView;
    const v4, 0x7f09063e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 58
    .local v1, iconView:Landroid/widget/ImageView;
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/waze/settings/SettingsValue;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 59
    iget-object v4, v2, Lcom/waze/settings/SettingsValue;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    :goto_0
    iget-object v4, v2, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-boolean v4, v2, Lcom/waze/settings/SettingsValue;->isSelected:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 67
    iget-boolean v4, v2, Lcom/waze/settings/SettingsValue;->isSelected:Z

    if-eqz v4, :cond_1

    .line 69
    iput-object v2, p0, Lcom/waze/settings/SettingValueAdapter;->ItemSelected:Lcom/waze/settings/SettingsValue;

    .line 71
    :cond_1
    const v4, 0x7f0902c8

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, container:Landroid/view/View;
    if-nez p1, :cond_4

    .line 73
    iget-object v4, p0, Lcom/waze/settings/SettingValueAdapter;->values:[Lcom/waze/settings/SettingsValue;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_3

    .line 74
    const v4, 0x7f020225

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 85
    :goto_1
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 86
    return-object p2

    .line 62
    .end local v0           #container:Landroid/view/View;
    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 76
    .restart local v0       #container:Landroid/view/View;
    :cond_3
    const v4, 0x7f020226

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 79
    :cond_4
    iget-object v4, p0, Lcom/waze/settings/SettingValueAdapter;->values:[Lcom/waze/settings/SettingsValue;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_5

    .line 80
    const v4, 0x7f020223

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 82
    :cond_5
    const v4, 0x7f020224

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public setValues([Lcom/waze/settings/SettingsValue;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/waze/settings/SettingValueAdapter;->values:[Lcom/waze/settings/SettingsValue;

    .line 93
    invoke-virtual {p0}, Lcom/waze/settings/SettingValueAdapter;->notifyDataSetChanged()V

    .line 94
    return-void
.end method
