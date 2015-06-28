.class Lcom/waze/navigate/social/ShareDriveActivity$16;
.super Ljava/lang/Object;
.source "ShareDriveActivity.java"

# interfaces
.implements Lcom/waze/navigate/social/AddFromActivity$IOnReadDone;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/ShareDriveActivity;->loadPersonArray()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/ShareDriveActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/ShareDriveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDriveActivity$16;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadDone(ILjava/util/ArrayList;)V
    .locals 3
    .parameter "numSuggested"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/user/PersonBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 491
    .local p2, setSelected:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/user/PersonBase;>;"
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDriveActivity$16;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #setter for: Lcom/waze/navigate/social/ShareDriveActivity;->mNumSuggestions:I
    invoke-static {v1, p1}, Lcom/waze/navigate/social/ShareDriveActivity;->access$24(Lcom/waze/navigate/social/ShareDriveActivity;I)V

    .line 493
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDriveActivity$16;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #calls: Lcom/waze/navigate/social/ShareDriveActivity;->friendsListPopulateFriends()V
    invoke-static {v1}, Lcom/waze/navigate/social/ShareDriveActivity;->access$25(Lcom/waze/navigate/social/ShareDriveActivity;)V

    .line 495
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 498
    return-void

    .line 495
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/user/PersonBase;

    .line 496
    .local v0, p:Lcom/waze/user/PersonBase;
    iget-object v2, p0, Lcom/waze/navigate/social/ShareDriveActivity$16;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;
    invoke-static {v2}, Lcom/waze/navigate/social/ShareDriveActivity;->access$6(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/autocomplete/ContactsCompletionView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/waze/autocomplete/ContactsCompletionView;->addObject(Ljava/lang/Object;)V

    goto :goto_0
.end method
