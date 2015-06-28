.class Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter$3;
.super Ljava/lang/Object;
.source "MyFriendsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;

.field private final synthetic val$fud:Lcom/waze/user/FriendUserData;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;Lcom/waze/user/FriendUserData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter$3;->this$1:Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;

    iput-object p2, p0, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter$3;->val$fud:Lcom/waze/user/FriendUserData;

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 584
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter$3;->this$1:Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;
    invoke-static {v0}, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;->access$0(Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter;)Lcom/waze/navigate/social/MyFriendsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/social/MyFriendsActivity$PersonArrayAdapter$3;->val$fud:Lcom/waze/user/FriendUserData;

    #calls: Lcom/waze/navigate/social/MyFriendsActivity;->userSelected(Lcom/waze/user/PersonBase;)V
    invoke-static {v0, v1}, Lcom/waze/navigate/social/MyFriendsActivity;->access$5(Lcom/waze/navigate/social/MyFriendsActivity;Lcom/waze/user/PersonBase;)V

    .line 585
    return-void
.end method
