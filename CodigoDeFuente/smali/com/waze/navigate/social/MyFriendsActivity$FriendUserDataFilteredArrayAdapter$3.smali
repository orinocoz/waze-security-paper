.class Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter$3;
.super Ljava/lang/Object;
.source "MyFriendsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;

.field private final synthetic val$pr:Lcom/waze/user/PersonBase;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;Lcom/waze/user/PersonBase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter$3;->this$1:Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;

    iput-object p2, p0, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter$3;->val$pr:Lcom/waze/user/PersonBase;

    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 749
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter$3;->this$1:Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;

    iget-object v0, v0, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;->ab:Lcom/waze/ifs/ui/ActivityBase;

    check-cast v0, Lcom/waze/navigate/social/MyFriendsActivity;

    iget-object v1, p0, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter$3;->val$pr:Lcom/waze/user/PersonBase;

    #calls: Lcom/waze/navigate/social/MyFriendsActivity;->userSelected(Lcom/waze/user/PersonBase;)V
    invoke-static {v0, v1}, Lcom/waze/navigate/social/MyFriendsActivity;->access$5(Lcom/waze/navigate/social/MyFriendsActivity;Lcom/waze/user/PersonBase;)V

    .line 750
    return-void
.end method
