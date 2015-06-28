.class Lcom/waze/settings/SettingsAdvancedActivity$1;
.super Ljava/lang/Object;
.source "SettingsAdvancedActivity.java"

# interfaces
.implements Lcom/waze/settings/SwitchCheckedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsAdvancedActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/settings/SettingsAdvancedActivity;

.field private final synthetic val$nm:Lcom/waze/NativeManager;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsAdvancedActivity;Lcom/waze/NativeManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsAdvancedActivity$1;->this$0:Lcom/waze/settings/SettingsAdvancedActivity;

    iput-object p2, p0, Lcom/waze/settings/SettingsAdvancedActivity$1;->val$nm:Lcom/waze/NativeManager;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCallback(Z)V
    .locals 2
    .parameter "bIsChecked"

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/waze/settings/SettingsAdvancedActivity$1;->val$nm:Lcom/waze/NativeManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->setNorthUp(I)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/waze/settings/SettingsAdvancedActivity$1;->val$nm:Lcom/waze/NativeManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->setNorthUp(I)V

    goto :goto_0
.end method
