.class Lcom/waze/navigate/DriveToNativeManager$11;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "DriveToNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->getRemovedFriendsData(Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private data:Lcom/waze/navigate/social/FriendsListData;

.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$listener:Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$11;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$11;->val$listener:Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;

    .line 533
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$11;->val$listener:Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$11;->data:Lcom/waze/navigate/social/FriendsListData;

    invoke-interface {v0, v1}, Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;->onComplete(Lcom/waze/navigate/social/FriendsListData;)V

    .line 548
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 539
    :try_start_0
    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$11;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->getRemovedFriendsDataNTV()Lcom/waze/navigate/social/FriendsListData;
    invoke-static {v1}, Lcom/waze/navigate/DriveToNativeManager;->access$10(Lcom/waze/navigate/DriveToNativeManager;)Lcom/waze/navigate/social/FriendsListData;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$11;->data:Lcom/waze/navigate/social/FriendsListData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :goto_0
    return-void

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$11;->data:Lcom/waze/navigate/social/FriendsListData;

    goto :goto_0
.end method
