.class Lcom/waze/view/popups/FriendsOnlinePopUp$3;
.super Ljava/lang/Object;
.source "FriendsOnlinePopUp.java"

# interfaces
.implements Lcom/waze/utils/ImageRepository$ImageRepositoryListener;


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

.field private final synthetic val$friendImageInLayout:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/FriendsOnlinePopUp;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/FriendsOnlinePopUp$3;->this$0:Lcom/waze/view/popups/FriendsOnlinePopUp;

    iput-object p2, p0, Lcom/waze/view/popups/FriendsOnlinePopUp$3;->val$friendImageInLayout:Landroid/widget/ImageView;

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageRetrieved(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 427
    new-instance v0, Lcom/waze/view/popups/FriendsOnlinePopUp$3$1;

    iget-object v1, p0, Lcom/waze/view/popups/FriendsOnlinePopUp$3;->val$friendImageInLayout:Landroid/widget/ImageView;

    invoke-direct {v0, p0, v1, p1}, Lcom/waze/view/popups/FriendsOnlinePopUp$3$1;-><init>(Lcom/waze/view/popups/FriendsOnlinePopUp$3;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 433
    return-void
.end method
