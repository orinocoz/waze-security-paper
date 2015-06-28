.class Lcom/waze/navigate/social/AddFromActivity$9;
.super Ljava/lang/Object;
.source "AddFromActivity.java"

# interfaces
.implements Lcom/waze/navigate/social/OnCompleteTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/AddFromActivity;->getFriendsDataFromAddressBook()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/AddFromActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/AddFromActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/AddFromActivity$9;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/waze/navigate/social/AddFromActivity$9;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/waze/navigate/social/AddFromActivity;->mHasReadUidMap:Z

    .line 465
    iget-object v0, p0, Lcom/waze/navigate/social/AddFromActivity$9;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    iget-boolean v0, v0, Lcom/waze/navigate/social/AddFromActivity;->mHasReadAddressBook:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/navigate/social/AddFromActivity$9;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    iget-boolean v0, v0, Lcom/waze/navigate/social/AddFromActivity;->mHasReadCurFriends:Z

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/waze/navigate/social/AddFromActivity$9;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    invoke-virtual {v0}, Lcom/waze/navigate/social/AddFromActivity;->readAddressBook()V

    .line 468
    :cond_0
    return-void
.end method
