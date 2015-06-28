.class public Lcom/waze/settings/DrillDownSettingView;
.super Landroid/widget/RelativeLayout;
.source "DrillDownSettingView.java"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v4, 0x7f09062c

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    sget-object v2, Lcom/waze/R$styleable;->SettingsDrillDown:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 22
    .local v0, attrArray:Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 23
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/settings/DrillDownSettingView;->inflater:Landroid/view/LayoutInflater;

    .line 24
    iget-object v2, p0, Lcom/waze/settings/DrillDownSettingView;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300e7

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {p0, v4}, Lcom/waze/settings/DrillDownSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-virtual {p0, v4}, Lcom/waze/settings/DrillDownSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public displayMore(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 49
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/waze/settings/DrillDownSettingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 54
    .local v0, color:I
    const v1, 0x7f09062d

    invoke-virtual {p0, v1}, Lcom/waze/settings/DrillDownSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "iconId"

    .prologue
    .line 40
    const v0, 0x7f09062c

    invoke-virtual {p0, v0}, Lcom/waze/settings/DrillDownSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 44
    const v0, 0x7f09062c

    invoke-virtual {p0, v0}, Lcom/waze/settings/DrillDownSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 32
    const v0, 0x7f09062d

    invoke-virtual {p0, v0}, Lcom/waze/settings/DrillDownSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 36
    const v0, 0x7f09062d

    invoke-virtual {p0, v0}, Lcom/waze/settings/DrillDownSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    return-void
.end method
