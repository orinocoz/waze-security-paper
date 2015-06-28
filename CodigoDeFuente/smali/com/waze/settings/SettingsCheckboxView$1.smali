.class Lcom/waze/settings/SettingsCheckboxView$1;
.super Ljava/lang/Object;
.source "SettingsCheckboxView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsCheckboxView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/settings/SettingsCheckboxView;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsCheckboxView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsCheckboxView$1;->this$0:Lcom/waze/settings/SettingsCheckboxView;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/waze/settings/SettingsCheckboxView$1;->this$0:Lcom/waze/settings/SettingsCheckboxView;

    const v1, 0x7f090622

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsCheckboxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->performClick()Z

    .line 30
    return-void
.end method
