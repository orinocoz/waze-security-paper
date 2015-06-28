.class Lcom/waze/navigate/DriveToNativeManager$9;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "DriveToNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->getUsersWithDriveSharing(ZZZLcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private data:Lcom/waze/navigate/social/FriendsListData;

.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$byMe:Z

.field private final synthetic val$listener:Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;

.field private final synthetic val$watchingMe:Z

.field private final synthetic val$withMe:Z


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;ZZZLcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$9;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-boolean p2, p0, Lcom/waze/navigate/DriveToNativeManager$9;->val$byMe:Z

    iput-boolean p3, p0, Lcom/waze/navigate/DriveToNativeManager$9;->val$withMe:Z

    iput-boolean p4, p0, Lcom/waze/navigate/DriveToNativeManager$9;->val$watchingMe:Z

    iput-object p5, p0, Lcom/waze/navigate/DriveToNativeManager$9;->val$listener:Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;

    .line 490
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$9;->val$listener:Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$9;->data:Lcom/waze/navigate/social/FriendsListData;

    invoke-interface {v0, v1}, Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;->onComplete(Lcom/waze/navigate/social/FriendsListData;)V

    .line 505
    return-void
.end method

.method public event()V
    .locals 5

    .prologue
    .line 496
    :try_start_0
    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$9;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget-boolean v2, p0, Lcom/waze/navigate/DriveToNativeManager$9;->val$byMe:Z

    iget-boolean v3, p0, Lcom/waze/navigate/DriveToNativeManager$9;->val$withMe:Z

    iget-boolean v4, p0, Lcom/waze/navigate/DriveToNativeManager$9;->val$watchingMe:Z

    #calls: Lcom/waze/navigate/DriveToNativeManager;->getUsersWithDriveSharingNTV(ZZZ)Lcom/waze/navigate/social/FriendsListData;
    invoke-static {v1, v2, v3, v4}, Lcom/waze/navigate/DriveToNativeManager;->access$8(Lcom/waze/navigate/DriveToNativeManager;ZZZ)Lcom/waze/navigate/social/FriendsListData;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$9;->data:Lcom/waze/navigate/social/FriendsListData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :goto_0
    return-void

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$9;->data:Lcom/waze/navigate/social/FriendsListData;

    goto :goto_0
.end method
