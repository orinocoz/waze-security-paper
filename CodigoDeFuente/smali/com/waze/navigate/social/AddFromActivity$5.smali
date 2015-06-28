.class Lcom/waze/navigate/social/AddFromActivity$5;
.super Ljava/lang/Object;
.source "AddFromActivity.java"

# interfaces
.implements Lcom/waze/navigate/social/AddFromActivity$IOnReadDone;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/AddFromActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/waze/navigate/social/AddFromActivity$5;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    .line 248
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
    .line 252
    .local p2, setSelected:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/user/PersonBase;>;"
    iget-object v1, p0, Lcom/waze/navigate/social/AddFromActivity$5;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    #setter for: Lcom/waze/navigate/social/AddFromActivity;->mNumSuggestions:I
    invoke-static {v1, p1}, Lcom/waze/navigate/social/AddFromActivity;->access$6(Lcom/waze/navigate/social/AddFromActivity;I)V

    .line 254
    iget-object v1, p0, Lcom/waze/navigate/social/AddFromActivity$5;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    #calls: Lcom/waze/navigate/social/AddFromActivity;->readDone()V
    invoke-static {v1}, Lcom/waze/navigate/social/AddFromActivity;->access$7(Lcom/waze/navigate/social/AddFromActivity;)V

    .line 256
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 259
    return-void

    .line 256
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/user/PersonBase;

    .line 257
    .local v0, p:Lcom/waze/user/PersonBase;
    iget-object v2, p0, Lcom/waze/navigate/social/AddFromActivity$5;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    #getter for: Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;
    invoke-static {v2}, Lcom/waze/navigate/social/AddFromActivity;->access$2(Lcom/waze/navigate/social/AddFromActivity;)Lcom/waze/autocomplete/ContactsCompletionView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/waze/autocomplete/ContactsCompletionView;->addObject(Ljava/lang/Object;)V

    goto :goto_0
.end method
