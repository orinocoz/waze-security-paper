.class Lcom/waze/settings/SettingsMapColorsActivity$1;
.super Ljava/lang/Object;
.source "SettingsMapColorsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsMapColorsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/settings/SettingsMapColorsActivity;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsMapColorsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsMapColorsActivity$1;->this$0:Lcom/waze/settings/SettingsMapColorsActivity;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v0

    new-instance v1, Lcom/waze/ConfigItem;

    const-string v2, "Display"

    const-string v3, "Map scheme V3"

    sget-object v4, Lcom/waze/settings/SettingsMapActivity;->MAP_COLORS_VALUES:[Ljava/lang/String;

    aget-object v4, v4, p3

    invoke-direct {v1, v2, v3, v4}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v2, "SettingsMap"

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/waze/ConfigManager;->setConfig(Lcom/waze/ConfigItem;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/waze/settings/SettingsMapColorsActivity$1;->this$0:Lcom/waze/settings/SettingsMapColorsActivity;

    invoke-virtual {v0}, Lcom/waze/settings/SettingsMapColorsActivity;->finish()V

    .line 40
    return-void
.end method
