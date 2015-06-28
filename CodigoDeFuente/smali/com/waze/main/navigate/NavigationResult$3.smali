.class Lcom/waze/main/navigate/NavigationResult$3;
.super Ljava/lang/Object;
.source "NavigationResult.java"

# interfaces
.implements Lcom/waze/share/ShareUtility$IFriendSelected;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/main/navigate/NavigationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/main/navigate/NavigationResult;


# direct methods
.method constructor <init>(Lcom/waze/main/navigate/NavigationResult;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult$3;->this$0:Lcom/waze/main/navigate/NavigationResult;

    .line 1378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFriendSelected(Ljava/lang/Object;Z)Z
    .locals 2
    .parameter "friend"
    .parameter "isSelected"

    .prologue
    const/4 v0, 0x0

    .line 1382
    if-nez p1, :cond_0

    .line 1383
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult$3;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #setter for: Lcom/waze/main/navigate/NavigationResult;->mGoOnReturnFromAddMore:Z
    invoke-static {v1, v0}, Lcom/waze/main/navigate/NavigationResult;->access$5(Lcom/waze/main/navigate/NavigationResult;Z)V

    .line 1384
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult$3;->this$0:Lcom/waze/main/navigate/NavigationResult;

    invoke-virtual {v1}, Lcom/waze/main/navigate/NavigationResult;->openAddFromActivity()V

    .line 1394
    .end local p1
    :goto_0
    return v0

    .line 1388
    .restart local p1
    :cond_0
    if-eqz p2, :cond_1

    .line 1389
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$3;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mSelected:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/waze/main/navigate/NavigationResult;->access$6(Lcom/waze/main/navigate/NavigationResult;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast p1, Lcom/waze/user/PersonBase;

    .end local p1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1393
    :goto_1
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$3;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #calls: Lcom/waze/main/navigate/NavigationResult;->stopTimer()V
    invoke-static {v0}, Lcom/waze/main/navigate/NavigationResult;->access$7(Lcom/waze/main/navigate/NavigationResult;)V

    .line 1394
    const/4 v0, 0x1

    goto :goto_0

    .line 1391
    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$3;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mSelected:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/waze/main/navigate/NavigationResult;->access$6(Lcom/waze/main/navigate/NavigationResult;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast p1, Lcom/waze/user/PersonBase;

    .end local p1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method
