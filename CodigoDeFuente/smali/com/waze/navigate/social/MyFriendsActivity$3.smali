.class Lcom/waze/navigate/social/MyFriendsActivity$3;
.super Ljava/lang/Object;
.source "MyFriendsActivity.java"

# interfaces
.implements Lcom/waze/autocomplete/ContactsCompletionView$IGetViewForObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/MyFriendsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/MyFriendsActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/MyFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/MyFriendsActivity$3;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getViewForObject(Ljava/lang/Object;)Landroid/view/View;
    .locals 9
    .parameter "object"

    .prologue
    const/4 v8, 0x0

    .line 154
    move-object v6, p1

    check-cast v6, Lcom/waze/user/FriendUserData;

    .line 157
    .local v6, fud:Lcom/waze/user/FriendUserData;
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity$3;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->inflater:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/waze/navigate/social/MyFriendsActivity;->access$8(Lcom/waze/navigate/social/MyFriendsActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030043

    .line 158
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity$3;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->searchBox:Lcom/waze/autocomplete/ContactsCompletionView;
    invoke-static {v0}, Lcom/waze/navigate/social/MyFriendsActivity;->access$6(Lcom/waze/navigate/social/MyFriendsActivity;)Lcom/waze/autocomplete/ContactsCompletionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/autocomplete/ContactsCompletionView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 157
    invoke-virtual {v1, v2, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 159
    .local v7, view:Landroid/widget/LinearLayout;
    const v0, 0x7f090236

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v6, Lcom/waze/user/FriendUserData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    const v0, 0x7f090235

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 162
    .local v3, friendImageInLayout:Landroid/widget/ImageView;
    const v0, 0x7f02011b

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    sget-object v0, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    iget-object v1, v6, Lcom/waze/user/FriendUserData;->pictureUrl:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 164
    iget-object v5, p0, Lcom/waze/navigate/social/MyFriendsActivity$3;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    .line 163
    invoke-virtual/range {v0 .. v5}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;ZLandroid/widget/ImageView;Landroid/view/View;Lcom/waze/ifs/ui/ActivityBase;)V

    .line 166
    const v0, 0x7f090234

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 168
    return-object v7
.end method
