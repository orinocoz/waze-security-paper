.class Lcom/waze/settings/SettingsNavigationGuidanceActivity$1;
.super Ljava/lang/Object;
.source "SettingsNavigationGuidanceActivity.java"

# interfaces
.implements Lcom/waze/settings/SettingsNativeManager$SettingsVoiceDataValuesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsNavigationGuidanceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/settings/SettingsNavigationGuidanceActivity;

.field private final synthetic val$adapter:Lcom/waze/settings/SettingValueAdapterTwoLines;

.field private final synthetic val$list:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsNavigationGuidanceActivity;Lcom/waze/settings/SettingValueAdapterTwoLines;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsNavigationGuidanceActivity$1;->this$0:Lcom/waze/settings/SettingsNavigationGuidanceActivity;

    iput-object p2, p0, Lcom/waze/settings/SettingsNavigationGuidanceActivity$1;->val$adapter:Lcom/waze/settings/SettingValueAdapterTwoLines;

    iput-object p3, p0, Lcom/waze/settings/SettingsNavigationGuidanceActivity$1;->val$list:Landroid/widget/ListView;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([Lcom/waze/voice/VoiceData;)V
    .locals 1
    .parameter "languages"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/waze/settings/SettingsNavigationGuidanceActivity$1;->this$0:Lcom/waze/settings/SettingsNavigationGuidanceActivity;

    #setter for: Lcom/waze/settings/SettingsNavigationGuidanceActivity;->languages:[Lcom/waze/voice/VoiceData;
    invoke-static {v0, p1}, Lcom/waze/settings/SettingsNavigationGuidanceActivity;->access$0(Lcom/waze/settings/SettingsNavigationGuidanceActivity;[Lcom/waze/voice/VoiceData;)V

    .line 29
    iget-object v0, p0, Lcom/waze/settings/SettingsNavigationGuidanceActivity$1;->val$adapter:Lcom/waze/settings/SettingValueAdapterTwoLines;

    invoke-virtual {v0, p1}, Lcom/waze/settings/SettingValueAdapterTwoLines;->setValues([Lcom/waze/voice/VoiceData;)V

    .line 30
    iget-object v0, p0, Lcom/waze/settings/SettingsNavigationGuidanceActivity$1;->val$list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 31
    return-void
.end method
