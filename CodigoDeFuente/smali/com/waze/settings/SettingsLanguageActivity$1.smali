.class Lcom/waze/settings/SettingsLanguageActivity$1;
.super Ljava/lang/Object;
.source "SettingsLanguageActivity.java"

# interfaces
.implements Lcom/waze/settings/SettingsNativeManager$SettingsValuesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsLanguageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/settings/SettingsLanguageActivity;

.field private final synthetic val$adapter:Lcom/waze/settings/SettingValueAdapter;

.field private final synthetic val$list:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsLanguageActivity;Lcom/waze/settings/SettingValueAdapter;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsLanguageActivity$1;->this$0:Lcom/waze/settings/SettingsLanguageActivity;

    iput-object p2, p0, Lcom/waze/settings/SettingsLanguageActivity$1;->val$adapter:Lcom/waze/settings/SettingValueAdapter;

    iput-object p3, p0, Lcom/waze/settings/SettingsLanguageActivity$1;->val$list:Landroid/widget/ListView;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([Lcom/waze/settings/SettingsValue;)V
    .locals 1
    .parameter "languages"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/waze/settings/SettingsLanguageActivity$1;->this$0:Lcom/waze/settings/SettingsLanguageActivity;

    #setter for: Lcom/waze/settings/SettingsLanguageActivity;->languages:[Lcom/waze/settings/SettingsValue;
    invoke-static {v0, p1}, Lcom/waze/settings/SettingsLanguageActivity;->access$0(Lcom/waze/settings/SettingsLanguageActivity;[Lcom/waze/settings/SettingsValue;)V

    .line 28
    iget-object v0, p0, Lcom/waze/settings/SettingsLanguageActivity$1;->val$adapter:Lcom/waze/settings/SettingValueAdapter;

    invoke-virtual {v0, p1}, Lcom/waze/settings/SettingValueAdapter;->setValues([Lcom/waze/settings/SettingsValue;)V

    .line 29
    iget-object v0, p0, Lcom/waze/settings/SettingsLanguageActivity$1;->val$list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 30
    return-void
.end method
