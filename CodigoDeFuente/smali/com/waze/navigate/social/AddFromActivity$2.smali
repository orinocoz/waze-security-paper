.class Lcom/waze/navigate/social/AddFromActivity$2;
.super Ljava/lang/Object;
.source "AddFromActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    iput-object p1, p0, Lcom/waze/navigate/social/AddFromActivity$2;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 187
    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity$2;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    #getter for: Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;
    invoke-static {v3}, Lcom/waze/navigate/social/AddFromActivity;->access$2(Lcom/waze/navigate/social/AddFromActivity;)Lcom/waze/autocomplete/ContactsCompletionView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/autocomplete/ContactsCompletionView;->enoughToFilter()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity$2;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    #getter for: Lcom/waze/navigate/social/AddFromActivity;->mPersonFilteredArrayAdapter:Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;
    invoke-static {v3}, Lcom/waze/navigate/social/AddFromActivity;->access$3(Lcom/waze/navigate/social/AddFromActivity;)Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 188
    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity$2;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    #getter for: Lcom/waze/navigate/social/AddFromActivity;->mPersonFilteredArrayAdapter:Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;
    invoke-static {v3}, Lcom/waze/navigate/social/AddFromActivity;->access$3(Lcom/waze/navigate/social/AddFromActivity;)Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 189
    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity$2;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    #getter for: Lcom/waze/navigate/social/AddFromActivity;->mPersonFilteredArrayAdapter:Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;
    invoke-static {v3}, Lcom/waze/navigate/social/AddFromActivity;->access$3(Lcom/waze/navigate/social/AddFromActivity;)Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;->getItem(I)Lcom/waze/user/PersonBase;

    move-result-object v1

    .line 190
    .local v1, p:Lcom/waze/user/PersonBase;
    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity$2;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    #getter for: Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;
    invoke-static {v3}, Lcom/waze/navigate/social/AddFromActivity;->access$2(Lcom/waze/navigate/social/AddFromActivity;)Lcom/waze/autocomplete/ContactsCompletionView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/autocomplete/ContactsCompletionView;->getObjects()Ljava/util/List;

    move-result-object v2

    .line 191
    .local v2, selected:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 192
    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity$2;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    #getter for: Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;
    invoke-static {v3}, Lcom/waze/navigate/social/AddFromActivity;->access$2(Lcom/waze/navigate/social/AddFromActivity;)Lcom/waze/autocomplete/ContactsCompletionView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/autocomplete/ContactsCompletionView;->performCompletion()V

    .line 193
    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity$2;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    #getter for: Lcom/waze/navigate/social/AddFromActivity;->mPersonArrayAdapter:Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;
    invoke-static {v3}, Lcom/waze/navigate/social/AddFromActivity;->access$4(Lcom/waze/navigate/social/AddFromActivity;)Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->notifyDataSetChanged()V

    .line 200
    .end local v1           #p:Lcom/waze/user/PersonBase;
    .end local v2           #selected:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 197
    :cond_1
    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity$2;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/waze/navigate/social/AddFromActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 198
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity$2;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    #getter for: Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;
    invoke-static {v3}, Lcom/waze/navigate/social/AddFromActivity;->access$2(Lcom/waze/navigate/social/AddFromActivity;)Lcom/waze/autocomplete/ContactsCompletionView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/autocomplete/ContactsCompletionView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
