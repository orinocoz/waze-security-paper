.class public abstract Lcom/waze/settings/SettingsSeekbarView$OnSeekBarChangeListenerBasic;
.super Ljava/lang/Object;
.source "SettingsSeekbarView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/settings/SettingsSeekbarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnSeekBarChangeListenerBasic"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onProgressChanged(Landroid/widget/SeekBar;I)V
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/waze/settings/SettingsSeekbarView$OnSeekBarChangeListenerBasic;->onProgressChanged(Landroid/widget/SeekBar;I)V

    .line 41
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 43
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 45
    return-void
.end method
