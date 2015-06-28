.class Lcom/waze/navigate/AddHomeWorkActivity$3;
.super Ljava/lang/Object;
.source "AddHomeWorkActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddHomeWorkActivity;->getHomeAndWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddHomeWorkActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddHomeWorkActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddHomeWorkActivity$3;->this$0:Lcom/waze/navigate/AddHomeWorkActivity;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddressItemArrayCallback([Lcom/waze/navigate/AddressItem;)V
    .locals 3
    .parameter "ai"

    .prologue
    const/4 v2, 0x0

    .line 79
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    aget-object v0, p1, v2

    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    aget-object v0, p1, v2

    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/AddHomeWorkActivity$3;->this$0:Lcom/waze/navigate/AddHomeWorkActivity;

    #getter for: Lcom/waze/navigate/AddHomeWorkActivity;->mHome:Lcom/waze/settings/DrillDownSettingView;
    invoke-static {v0}, Lcom/waze/navigate/AddHomeWorkActivity;->access$0(Lcom/waze/navigate/AddHomeWorkActivity;)Lcom/waze/settings/DrillDownSettingView;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/AddHomeWorkActivity$3;->this$0:Lcom/waze/navigate/AddHomeWorkActivity;

    #getter for: Lcom/waze/navigate/AddHomeWorkActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/navigate/AddHomeWorkActivity;->access$1(Lcom/waze/navigate/AddHomeWorkActivity;)Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_HOME_WORK_WIZ_ADD_HOME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/waze/navigate/AddHomeWorkActivity$3;->this$0:Lcom/waze/navigate/AddHomeWorkActivity;

    #getter for: Lcom/waze/navigate/AddHomeWorkActivity;->mHome:Lcom/waze/settings/DrillDownSettingView;
    invoke-static {v0}, Lcom/waze/navigate/AddHomeWorkActivity;->access$0(Lcom/waze/navigate/AddHomeWorkActivity;)Lcom/waze/settings/DrillDownSettingView;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/AddHomeWorkActivity$3;->this$0:Lcom/waze/navigate/AddHomeWorkActivity;

    invoke-virtual {v1}, Lcom/waze/navigate/AddHomeWorkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setTextColor(I)V

    .line 91
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/waze/navigate/AddHomeWorkActivity$3;->this$0:Lcom/waze/navigate/AddHomeWorkActivity;

    #getter for: Lcom/waze/navigate/AddHomeWorkActivity;->mHome:Lcom/waze/settings/DrillDownSettingView;
    invoke-static {v0}, Lcom/waze/navigate/AddHomeWorkActivity;->access$0(Lcom/waze/navigate/AddHomeWorkActivity;)Lcom/waze/settings/DrillDownSettingView;

    move-result-object v0

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setTextColor(I)V

    .line 86
    aget-object v0, p1, v2

    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/waze/navigate/AddHomeWorkActivity$3;->this$0:Lcom/waze/navigate/AddHomeWorkActivity;

    #getter for: Lcom/waze/navigate/AddHomeWorkActivity;->mHome:Lcom/waze/settings/DrillDownSettingView;
    invoke-static {v0}, Lcom/waze/navigate/AddHomeWorkActivity;->access$0(Lcom/waze/navigate/AddHomeWorkActivity;)Lcom/waze/settings/DrillDownSettingView;

    move-result-object v0

    aget-object v1, p1, v2

    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/waze/navigate/AddHomeWorkActivity$3;->this$0:Lcom/waze/navigate/AddHomeWorkActivity;

    #getter for: Lcom/waze/navigate/AddHomeWorkActivity;->mHome:Lcom/waze/settings/DrillDownSettingView;
    invoke-static {v0}, Lcom/waze/navigate/AddHomeWorkActivity;->access$0(Lcom/waze/navigate/AddHomeWorkActivity;)Lcom/waze/settings/DrillDownSettingView;

    move-result-object v0

    aget-object v1, p1, v2

    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method
