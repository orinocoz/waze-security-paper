.class public Lcom/waze/settings/SettingsSeekbarView;
.super Landroid/widget/LinearLayout;
.source "SettingsSeekbarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/settings/SettingsSeekbarView$OnSeekBarChangeListenerBasic;
    }
.end annotation


# static fields
.field public static final MAX_VALUE:I = 0x64


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/settings/SettingsSeekbarView;->mInflater:Landroid/view/LayoutInflater;

    .line 17
    iget-object v0, p0, Lcom/waze/settings/SettingsSeekbarView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300f4

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    const v0, 0x7f09065f

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsSeekbarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/settings/SettingsSeekbarView;->mTextView:Landroid/widget/TextView;

    .line 19
    const v0, 0x7f090660

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsSeekbarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/waze/settings/SettingsSeekbarView;->mSeekBar:Landroid/widget/SeekBar;

    .line 20
    iget-object v0, p0, Lcom/waze/settings/SettingsSeekbarView;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 21
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/waze/settings/SettingsSeekbarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/waze/settings/SettingsSeekbarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 50
    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/waze/settings/SettingsSeekbarView$OnSeekBarChangeListenerBasic;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/waze/settings/SettingsSeekbarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 54
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/waze/settings/SettingsSeekbarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 27
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/waze/settings/SettingsSeekbarView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    return-void
.end method
