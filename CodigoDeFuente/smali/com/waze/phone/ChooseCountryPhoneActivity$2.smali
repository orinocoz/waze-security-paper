.class Lcom/waze/phone/ChooseCountryPhoneActivity$2;
.super Ljava/lang/Object;
.source "ChooseCountryPhoneActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/ChooseCountryPhoneActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/waze/phone/ChooseCountryPhoneActivity;


# direct methods
.method constructor <init>(Lcom/waze/phone/ChooseCountryPhoneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/phone/ChooseCountryPhoneActivity$2;->this$0:Lcom/waze/phone/ChooseCountryPhoneActivity;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 52
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/waze/phone/ChooseCountryPhoneActivity$2;->this$0:Lcom/waze/phone/ChooseCountryPhoneActivity;

    #getter for: Lcom/waze/phone/ChooseCountryPhoneActivity;->countries:[Lcom/waze/settings/SettingsValue;
    invoke-static {v1}, Lcom/waze/phone/ChooseCountryPhoneActivity;->access$0(Lcom/waze/phone/ChooseCountryPhoneActivity;)[Lcom/waze/settings/SettingsValue;

    move-result-object v1

    if-nez v1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/waze/phone/ChooseCountryPhoneActivity$2;->this$0:Lcom/waze/phone/ChooseCountryPhoneActivity;

    #getter for: Lcom/waze/phone/ChooseCountryPhoneActivity;->mAdapter:Lcom/waze/phone/ChooseCountryPhoneActivity$IndexedSettingValueAdapter;
    invoke-static {v1}, Lcom/waze/phone/ChooseCountryPhoneActivity;->access$1(Lcom/waze/phone/ChooseCountryPhoneActivity;)Lcom/waze/phone/ChooseCountryPhoneActivity$IndexedSettingValueAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/phone/ChooseCountryPhoneActivity$IndexedSettingValueAdapter;->GetSelectedItem()Lcom/waze/settings/SettingsValue;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/waze/phone/ChooseCountryPhoneActivity$2;->this$0:Lcom/waze/phone/ChooseCountryPhoneActivity;

    #getter for: Lcom/waze/phone/ChooseCountryPhoneActivity;->mAdapter:Lcom/waze/phone/ChooseCountryPhoneActivity$IndexedSettingValueAdapter;
    invoke-static {v1}, Lcom/waze/phone/ChooseCountryPhoneActivity;->access$1(Lcom/waze/phone/ChooseCountryPhoneActivity;)Lcom/waze/phone/ChooseCountryPhoneActivity$IndexedSettingValueAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/phone/ChooseCountryPhoneActivity$IndexedSettingValueAdapter;->GetSelectedItem()Lcom/waze/settings/SettingsValue;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/waze/settings/SettingsValue;->isSelected:Z

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/waze/phone/ChooseCountryPhoneActivity$2;->this$0:Lcom/waze/phone/ChooseCountryPhoneActivity;

    #getter for: Lcom/waze/phone/ChooseCountryPhoneActivity;->countries:[Lcom/waze/settings/SettingsValue;
    invoke-static {v1}, Lcom/waze/phone/ChooseCountryPhoneActivity;->access$0(Lcom/waze/phone/ChooseCountryPhoneActivity;)[Lcom/waze/settings/SettingsValue;

    move-result-object v1

    aget-object v1, v1, p3

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/waze/settings/SettingsValue;->isSelected:Z

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 62
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "index"

    iget-object v2, p0, Lcom/waze/phone/ChooseCountryPhoneActivity$2;->this$0:Lcom/waze/phone/ChooseCountryPhoneActivity;

    #getter for: Lcom/waze/phone/ChooseCountryPhoneActivity;->countries:[Lcom/waze/settings/SettingsValue;
    invoke-static {v2}, Lcom/waze/phone/ChooseCountryPhoneActivity;->access$0(Lcom/waze/phone/ChooseCountryPhoneActivity;)[Lcom/waze/settings/SettingsValue;

    move-result-object v2

    aget-object v2, v2, p3

    iget-object v2, v2, Lcom/waze/settings/SettingsValue;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Lcom/waze/phone/ChooseCountryPhoneActivity$2;->this$0:Lcom/waze/phone/ChooseCountryPhoneActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/waze/phone/ChooseCountryPhoneActivity;->setResult(ILandroid/content/Intent;)V

    .line 64
    iget-object v1, p0, Lcom/waze/phone/ChooseCountryPhoneActivity$2;->this$0:Lcom/waze/phone/ChooseCountryPhoneActivity;

    invoke-virtual {v1}, Lcom/waze/phone/ChooseCountryPhoneActivity;->finish()V

    goto :goto_0
.end method
