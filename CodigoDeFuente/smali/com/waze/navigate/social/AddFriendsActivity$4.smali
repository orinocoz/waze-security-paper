.class Lcom/waze/navigate/social/AddFriendsActivity$4;
.super Ljava/lang/Object;
.source "AddFriendsActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$AddFriendsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/AddFriendsActivity;->readFriendSuggestions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/AddFriendsActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/AddFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/AddFriendsActivity$4;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/waze/navigate/social/AddFriendsData;)V
    .locals 6
    .parameter "aData"

    .prologue
    const v5, 0x7f09007a

    const/4 v3, 0x0

    const v2, 0x7f090079

    const/16 v4, 0x8

    .line 178
    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsActivity$4;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    iput-object p1, v1, Lcom/waze/navigate/social/AddFriendsActivity;->mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, bToPopulate:Z
    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsActivity$4;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    iget-object v1, v1, Lcom/waze/navigate/social/AddFriendsActivity;->mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsActivity$4;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    iget-object v1, v1, Lcom/waze/navigate/social/AddFriendsActivity;->mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;

    iget-object v1, v1, Lcom/waze/navigate/social/AddFriendsData;->SuggestionFriends:[Lcom/waze/user/FriendUserData;

    array-length v1, v1

    if-nez v1, :cond_2

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsActivity$4;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    invoke-virtual {v1, v2}, Lcom/waze/navigate/social/AddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsActivity$4;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    invoke-virtual {v1, v5}, Lcom/waze/navigate/social/AddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 196
    :goto_0
    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsActivity$4;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    const v2, 0x7f090076

    invoke-virtual {v1, v2}, Lcom/waze/navigate/social/AddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsActivity$4;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    const v2, 0x7f090077

    invoke-virtual {v1, v2}, Lcom/waze/navigate/social/AddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsActivity$4;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    const v2, 0x7f090078

    invoke-virtual {v1, v2}, Lcom/waze/navigate/social/AddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 220
    if-eqz v0, :cond_1

    .line 221
    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsActivity$4;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    #calls: Lcom/waze/navigate/social/AddFriendsActivity;->endDrivePopulateFriends()V
    invoke-static {v1}, Lcom/waze/navigate/social/AddFriendsActivity;->access$1(Lcom/waze/navigate/social/AddFriendsActivity;)V

    .line 223
    :cond_1
    return-void

    .line 186
    :cond_2
    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsActivity$4;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    invoke-virtual {v1, v2}, Lcom/waze/navigate/social/AddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsActivity$4;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    invoke-virtual {v1, v5}, Lcom/waze/navigate/social/AddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsActivity$4;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    invoke-virtual {v1, v2}, Lcom/waze/navigate/social/AddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/SettingsTitleText;

    iget-object v2, p0, Lcom/waze/navigate/social/AddFriendsActivity$4;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    #getter for: Lcom/waze/navigate/social/AddFriendsActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v2}, Lcom/waze/navigate/social/AddFriendsActivity;->access$0(Lcom/waze/navigate/social/AddFriendsActivity;)Lcom/waze/NativeManager;

    move-result-object v2

    .line 190
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_FRIENDS_SUGGESTIONS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x1

    goto :goto_0
.end method
