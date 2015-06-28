.class Lcom/waze/settings/SettingsNotificationActivity$2;
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
    iput-object p1, p0, Lcom/waze/settings/SettingsNotificationActivity$2;->this$0:Lcom/waze/settings/SettingsNotificationActivity;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 88
    if-eqz p2, :cond_0

    .line 90
    const-string v0, "PUSH_PLACES"

    const-string v1, "VAUE"

    const-string v2, "ON"

    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    const-string v0, "PUSH_PLACES"

    const-string v1, "VAUE"

    const-string v2, "OFF"

    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
