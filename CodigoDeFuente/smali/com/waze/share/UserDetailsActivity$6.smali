.class Lcom/waze/share/UserDetailsActivity$6;
.super Ljava/lang/Object;
.source "UserDetailsActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/UserDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/UserDetailsActivity;


# direct methods
.method constructor <init>(Lcom/waze/share/UserDetailsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/UserDetailsActivity$6;->this$0:Lcom/waze/share/UserDetailsActivity;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddressItemArrayCallback([Lcom/waze/navigate/AddressItem;)V
    .locals 4
    .parameter "ai"

    .prologue
    const v3, 0x7f0902e4

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 325
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/waze/share/UserDetailsActivity$6;->this$0:Lcom/waze/share/UserDetailsActivity;

    #getter for: Lcom/waze/share/UserDetailsActivity;->mReceivedLocationsTitleText:Lcom/waze/settings/SettingsTitleText;
    invoke-static {v0}, Lcom/waze/share/UserDetailsActivity;->access$3(Lcom/waze/share/UserDetailsActivity;)Lcom/waze/settings/SettingsTitleText;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/waze/settings/SettingsTitleText;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/waze/share/UserDetailsActivity$6;->this$0:Lcom/waze/share/UserDetailsActivity;

    #getter for: Lcom/waze/share/UserDetailsActivity;->mReceivedLocation:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/waze/share/UserDetailsActivity;->access$4(Lcom/waze/share/UserDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/waze/share/UserDetailsActivity$6;->this$0:Lcom/waze/share/UserDetailsActivity;

    invoke-virtual {v0, v3}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/waze/share/UserDetailsActivity$6;->this$0:Lcom/waze/share/UserDetailsActivity;

    #getter for: Lcom/waze/share/UserDetailsActivity;->mReceivedLocationsTitleText:Lcom/waze/settings/SettingsTitleText;
    invoke-static {v0}, Lcom/waze/share/UserDetailsActivity;->access$3(Lcom/waze/share/UserDetailsActivity;)Lcom/waze/settings/SettingsTitleText;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsTitleText;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/waze/share/UserDetailsActivity$6;->this$0:Lcom/waze/share/UserDetailsActivity;

    #getter for: Lcom/waze/share/UserDetailsActivity;->mReceivedLocation:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/waze/share/UserDetailsActivity;->access$4(Lcom/waze/share/UserDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/waze/share/UserDetailsActivity$6;->this$0:Lcom/waze/share/UserDetailsActivity;

    invoke-virtual {v0, v3}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 333
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/waze/share/UserDetailsActivity$6;->this$0:Lcom/waze/share/UserDetailsActivity;

    invoke-virtual {v0, p1}, Lcom/waze/share/UserDetailsActivity;->populateReceivedLocations([Lcom/waze/navigate/AddressItem;)V

    goto :goto_0
.end method
