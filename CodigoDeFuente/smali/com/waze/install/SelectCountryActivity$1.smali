.class Lcom/waze/install/SelectCountryActivity$1;
.super Ljava/lang/Object;
.source "SelectCountryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/install/SelectCountryActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/waze/install/SelectCountryActivity;


# direct methods
.method constructor <init>(Lcom/waze/install/SelectCountryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/install/SelectCountryActivity$1;->this$0:Lcom/waze/install/SelectCountryActivity;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 55
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Lcom/waze/install/InstallNativeManager;

    invoke-direct {v0}, Lcom/waze/install/InstallNativeManager;-><init>()V

    .line 56
    .local v0, nativeManager:Lcom/waze/install/InstallNativeManager;
    iget-object v1, p0, Lcom/waze/install/SelectCountryActivity$1;->this$0:Lcom/waze/install/SelectCountryActivity;

    #getter for: Lcom/waze/install/SelectCountryActivity;->countries:[Lcom/waze/settings/SettingsValue;
    invoke-static {v1}, Lcom/waze/install/SelectCountryActivity;->access$0(Lcom/waze/install/SelectCountryActivity;)[Lcom/waze/settings/SettingsValue;

    move-result-object v1

    aget-object v1, v1, p3

    iget-object v1, v1, Lcom/waze/settings/SettingsValue;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waze/install/InstallNativeManager;->setCountry(Ljava/lang/String;)V

    .line 57
    return-void
.end method
