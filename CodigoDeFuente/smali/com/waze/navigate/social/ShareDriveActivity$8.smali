.class Lcom/waze/navigate/social/ShareDriveActivity$8;
.super Ljava/lang/Object;
.source "ShareDriveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/ShareDriveActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDriveActivity$8;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$8;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDriveActivity;->access$6(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/autocomplete/ContactsCompletionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/autocomplete/ContactsCompletionView;->performClick()Z

    .line 307
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$8;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDriveActivity;->access$6(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/autocomplete/ContactsCompletionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/autocomplete/ContactsCompletionView;->requestFocus()Z

    .line 308
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$8;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDriveActivity;->access$6(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/autocomplete/ContactsCompletionView;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/social/ShareDriveActivity$8;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;
    invoke-static {v1}, Lcom/waze/navigate/social/ShareDriveActivity;->access$6(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/autocomplete/ContactsCompletionView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/autocomplete/ContactsCompletionView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/waze/autocomplete/ContactsCompletionView;->setSelection(I)V

    .line 309
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$8;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mSearchScroll:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDriveActivity;->access$13(Lcom/waze/navigate/social/ShareDriveActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/social/ShareDriveActivity$8;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;
    invoke-static {v1}, Lcom/waze/navigate/social/ShareDriveActivity;->access$6(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/autocomplete/ContactsCompletionView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/autocomplete/ContactsCompletionView;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 310
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$8;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #calls: Lcom/waze/navigate/social/ShareDriveActivity;->openKeyboard()V
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDriveActivity;->access$12(Lcom/waze/navigate/social/ShareDriveActivity;)V

    .line 311
    return-void
.end method
