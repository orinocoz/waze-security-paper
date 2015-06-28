.class Lcom/waze/navigate/DriveToNativeManager$45;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->OpenFriendOnTheWayPopUp(Lcom/waze/user/FriendUserData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$friendLocation:Lcom/waze/user/FriendUserData;

.field private final synthetic val$iTimeOut:I

.field private final synthetic val$layoutMgr:Lcom/waze/LayoutManager;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/LayoutManager;Lcom/waze/user/FriendUserData;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$45;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$45;->val$layoutMgr:Lcom/waze/LayoutManager;

    iput-object p3, p0, Lcom/waze/navigate/DriveToNativeManager$45;->val$friendLocation:Lcom/waze/user/FriendUserData;

    iput p4, p0, Lcom/waze/navigate/DriveToNativeManager$45;->val$iTimeOut:I

    .line 1278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$45;->val$layoutMgr:Lcom/waze/LayoutManager;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$45;->val$friendLocation:Lcom/waze/user/FriendUserData;

    iget v2, p0, Lcom/waze/navigate/DriveToNativeManager$45;->val$iTimeOut:I

    invoke-virtual {v0, v1, v2}, Lcom/waze/LayoutManager;->showFriendOnTheWayPopup(Lcom/waze/user/FriendUserData;I)V

    .line 1281
    return-void
.end method
