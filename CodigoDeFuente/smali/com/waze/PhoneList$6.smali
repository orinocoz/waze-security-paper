.class Lcom/waze/PhoneList$6;
.super Ljava/lang/Object;
.source "PhoneList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/PhoneList;->onFriendsListResult(Ljava/util/ArrayList;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/PhoneList;

.field private final synthetic val$adapter:Lcom/waze/share/ShareFbWithListAdapter;

.field private final synthetic val$friends:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/waze/PhoneList;Lcom/waze/share/ShareFbWithListAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/PhoneList$6;->this$0:Lcom/waze/PhoneList;

    iput-object p2, p0, Lcom/waze/PhoneList$6;->val$adapter:Lcom/waze/share/ShareFbWithListAdapter;

    iput-object p3, p0, Lcom/waze/PhoneList$6;->val$friends:Ljava/util/ArrayList;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/waze/PhoneList$6;->val$adapter:Lcom/waze/share/ShareFbWithListAdapter;

    iget-object v1, p0, Lcom/waze/PhoneList$6;->val$friends:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/waze/share/ShareFbWithListAdapter;->updateList(Ljava/util/ArrayList;)V

    .line 303
    iget-object v0, p0, Lcom/waze/PhoneList$6;->this$0:Lcom/waze/PhoneList;

    iget-object v1, p0, Lcom/waze/PhoneList$6;->this$0:Lcom/waze/PhoneList;

    #getter for: Lcom/waze/PhoneList;->mInitialCheckedFriendsList:[Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/PhoneList;->access$6(Lcom/waze/PhoneList;)[Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/waze/PhoneList;->initCheckedState([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/waze/PhoneList;->access$7(Lcom/waze/PhoneList;[Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/waze/PhoneList$6;->this$0:Lcom/waze/PhoneList;

    const/4 v1, 0x0

    #setter for: Lcom/waze/PhoneList;->mInitialCheckedFriendsList:[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/waze/PhoneList;->access$8(Lcom/waze/PhoneList;[Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/waze/PhoneList$6;->this$0:Lcom/waze/PhoneList;

    #getter for: Lcom/waze/PhoneList;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/waze/PhoneList;->access$9(Lcom/waze/PhoneList;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 307
    return-void
.end method
