.class Lcom/waze/settings/SettingsGeneralActivity$1$1;
.super Ljava/lang/Object;
.source "SettingsGeneralActivity.java"

# interfaces
.implements Lcom/waze/settings/SettingsDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsGeneralActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/settings/SettingsGeneralActivity$1;

.field private final synthetic val$displayOptions:[Ljava/lang/String;

.field private final synthetic val$radiuses:[I


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsGeneralActivity$1;[Ljava/lang/String;[I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsGeneralActivity$1$1;->this$1:Lcom/waze/settings/SettingsGeneralActivity$1;

    iput-object p2, p0, Lcom/waze/settings/SettingsGeneralActivity$1$1;->val$displayOptions:[Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/settings/SettingsGeneralActivity$1$1;->val$radiuses:[I

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/waze/settings/SettingsGeneralActivity$1$1;->this$1:Lcom/waze/settings/SettingsGeneralActivity$1;

    #getter for: Lcom/waze/settings/SettingsGeneralActivity$1;->this$0:Lcom/waze/settings/SettingsGeneralActivity;
    invoke-static {v1}, Lcom/waze/settings/SettingsGeneralActivity$1;->access$0(Lcom/waze/settings/SettingsGeneralActivity$1;)Lcom/waze/settings/SettingsGeneralActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/settings/SettingsGeneralActivity;->mConfigItems:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/ConfigItem;

    .line 111
    .local v0, configItem:Lcom/waze/ConfigItem;
    iget-object v1, p0, Lcom/waze/settings/SettingsGeneralActivity$1$1;->this$1:Lcom/waze/settings/SettingsGeneralActivity$1;

    #getter for: Lcom/waze/settings/SettingsGeneralActivity$1;->this$0:Lcom/waze/settings/SettingsGeneralActivity;
    invoke-static {v1}, Lcom/waze/settings/SettingsGeneralActivity$1;->access$0(Lcom/waze/settings/SettingsGeneralActivity$1;)Lcom/waze/settings/SettingsGeneralActivity;

    move-result-object v1

    #getter for: Lcom/waze/settings/SettingsGeneralActivity;->radiusView:Lcom/waze/settings/SettingsSelectionView;
    invoke-static {v1}, Lcom/waze/settings/SettingsGeneralActivity;->access$1(Lcom/waze/settings/SettingsGeneralActivity;)Lcom/waze/settings/SettingsSelectionView;

    move-result-object v1

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/settings/SettingsGeneralActivity$1$1;->val$displayOptions:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSelectionView;->setValueText(Ljava/lang/String;)V

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/waze/settings/SettingsGeneralActivity$1$1;->val$radiuses:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/ConfigItem;->setValue(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v1

    const-string v2, "SettingsGeneral"

    invoke-virtual {v1, v0, v2}, Lcom/waze/ConfigManager;->setConfig(Lcom/waze/ConfigItem;Ljava/lang/String;)V

    .line 114
    return-void
.end method
