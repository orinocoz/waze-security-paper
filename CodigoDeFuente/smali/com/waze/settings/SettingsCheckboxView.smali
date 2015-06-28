.class public Lcom/waze/settings/SettingsCheckboxView;
.super Landroid/widget/RelativeLayout;
.source "SettingsCheckboxView.java"


# instance fields
.field private checkBox:Landroid/widget/CheckBox;

.field private inflater:Landroid/view/LayoutInflater;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/settings/SettingsCheckboxView;->inflater:Landroid/view/LayoutInflater;

    .line 23
    iget-object v0, p0, Lcom/waze/settings/SettingsCheckboxView;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300e5

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 24
    const v0, 0x7f090623

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsCheckboxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/settings/SettingsCheckboxView;->textView:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f090622

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsCheckboxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/waze/settings/SettingsCheckboxView;->checkBox:Landroid/widget/CheckBox;

    .line 26
    const v0, 0x7f090621

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsCheckboxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/settings/SettingsCheckboxView$1;

    invoke-direct {v1, p0}, Lcom/waze/settings/SettingsCheckboxView$1;-><init>(Lcom/waze/settings/SettingsCheckboxView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/waze/settings/SettingsCheckboxView;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/waze/settings/SettingsCheckboxView;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 44
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/waze/settings/SettingsCheckboxView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    return-void
.end method

.method public setValue(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/waze/settings/SettingsCheckboxView;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 38
    return-void
.end method
