.class public Lcom/waze/settings/SettingsSelectionView;
.super Landroid/widget/RelativeLayout;
.source "SettingsSelectionView.java"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/settings/SettingsSelectionView;->inflater:Landroid/view/LayoutInflater;

    .line 18
    iget-object v0, p0, Lcom/waze/settings/SettingsSelectionView;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300f5

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    return-void
.end method


# virtual methods
.method public setKeyText(Ljava/lang/String;)V
    .locals 1
    .parameter "keyText"

    .prologue
    .line 21
    const v0, 0x7f09062d

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsSelectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    return-void
.end method

.method public setValueText(Ljava/lang/String;)V
    .locals 1
    .parameter "valueText"

    .prologue
    .line 24
    const v0, 0x7f09062e

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsSelectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    return-void
.end method
