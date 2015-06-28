.class Lcom/waze/share/ShareFbWithActivity$4;
.super Ljava/lang/Object;
.source "ShareFbWithActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareFbWithActivity;->onFriendsListResult(Ljava/util/ArrayList;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/ShareFbWithActivity;

.field private final synthetic val$adapter:Lcom/waze/share/ShareFbWithListAdapter;

.field private final synthetic val$friends:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareFbWithActivity;Lcom/waze/share/ShareFbWithListAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareFbWithActivity$4;->this$0:Lcom/waze/share/ShareFbWithActivity;

    iput-object p2, p0, Lcom/waze/share/ShareFbWithActivity$4;->val$adapter:Lcom/waze/share/ShareFbWithListAdapter;

    iput-object p3, p0, Lcom/waze/share/ShareFbWithActivity$4;->val$friends:Ljava/util/ArrayList;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/waze/share/ShareFbWithActivity$4;->val$adapter:Lcom/waze/share/ShareFbWithListAdapter;

    iget-object v1, p0, Lcom/waze/share/ShareFbWithActivity$4;->val$friends:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/waze/share/ShareFbWithListAdapter;->updateList(Ljava/util/ArrayList;)V

    .line 124
    iget-object v0, p0, Lcom/waze/share/ShareFbWithActivity$4;->this$0:Lcom/waze/share/ShareFbWithActivity;

    iget-object v1, p0, Lcom/waze/share/ShareFbWithActivity$4;->this$0:Lcom/waze/share/ShareFbWithActivity;

    #getter for: Lcom/waze/share/ShareFbWithActivity;->mInitialCheckedFriendsList:[Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/share/ShareFbWithActivity;->access$1(Lcom/waze/share/ShareFbWithActivity;)[Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/waze/share/ShareFbWithActivity;->initCheckedState([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/waze/share/ShareFbWithActivity;->access$2(Lcom/waze/share/ShareFbWithActivity;[Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/waze/share/ShareFbWithActivity$4;->this$0:Lcom/waze/share/ShareFbWithActivity;

    const/4 v1, 0x0

    #setter for: Lcom/waze/share/ShareFbWithActivity;->mInitialCheckedFriendsList:[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/waze/share/ShareFbWithActivity;->access$3(Lcom/waze/share/ShareFbWithActivity;[Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/waze/share/ShareFbWithActivity$4;->this$0:Lcom/waze/share/ShareFbWithActivity;

    #getter for: Lcom/waze/share/ShareFbWithActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/waze/share/ShareFbWithActivity;->access$4(Lcom/waze/share/ShareFbWithActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 128
    return-void
.end method
