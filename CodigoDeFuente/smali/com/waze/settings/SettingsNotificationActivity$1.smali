.class Lcom/waze/settings/SettingsNotificationActivity$1;
.super Ljava/lang/Object;
.source "SettingsNotificationActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/settings/SettingsNotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/settings/SettingsNotificationActivity;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsNotificationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsNotificationActivity$1;->this$0:Lcom/waze/settings/SettingsNotificationActivity;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 75
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Notifications checked: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    if-eqz p2, :cond_0

    .line 77
    invoke-static {}, Lcom/waze/push/Registrar;->instance()Lcom/waze/push/Registrar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/push/Registrar;->register()V

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-static {}, Lcom/waze/push/Registrar;->instance()Lcom/waze/push/Registrar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/push/Registrar;->unregister()V

    goto :goto_0
.end method
