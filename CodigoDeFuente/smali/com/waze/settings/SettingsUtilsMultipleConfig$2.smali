.class Lcom/waze/settings/SettingsUtilsMultipleConfig$2;
.super Ljava/lang/Object;
.source "SettingsUtilsMultipleConfig.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsUtilsMultipleConfig;->showSubmenu(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/waze/settings/SettingsDialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$listener:Lcom/waze/settings/SettingsDialogListener;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsDialogListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$2;->val$listener:Lcom/waze/settings/SettingsDialogListener;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/waze/settings/SettingsUtilsMultipleConfig$2;->val$listener:Lcom/waze/settings/SettingsDialogListener;

    invoke-interface {v0, p2}, Lcom/waze/settings/SettingsDialogListener;->onComplete(I)V

    .line 63
    return-void
.end method
