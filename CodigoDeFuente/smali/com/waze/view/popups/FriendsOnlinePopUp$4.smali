.class Lcom/waze/view/popups/FriendsOnlinePopUp$4;
.super Ljava/lang/Object;
.source "FriendsOnlinePopUp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/FriendsOnlinePopUp;->friendsListAddFriend(Lcom/waze/user/FriendUserData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/FriendsOnlinePopUp;

.field private final synthetic val$friend:Lcom/waze/user/FriendUserData;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/FriendsOnlinePopUp;Lcom/waze/user/FriendUserData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/FriendsOnlinePopUp$4;->this$0:Lcom/waze/view/popups/FriendsOnlinePopUp;

    iput-object p2, p0, Lcom/waze/view/popups/FriendsOnlinePopUp$4;->val$friend:Lcom/waze/user/FriendUserData;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 439
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/view/popups/FriendsOnlinePopUp$4;->val$friend:Lcom/waze/user/FriendUserData;

    invoke-static {v0, v1}, Lcom/waze/messages/UserMessage;->startPrivate(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/user/UserData;)V

    .line 440
    return-void
.end method
