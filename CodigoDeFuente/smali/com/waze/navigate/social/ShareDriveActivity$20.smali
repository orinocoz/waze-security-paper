.class Lcom/waze/navigate/social/ShareDriveActivity$20;
.super Ljava/lang/Object;
.source "ShareDriveActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/ShareDriveActivity;->setDoneButtonClickableOrNot()V
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
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDriveActivity$20;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 745
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$20;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mSearchScroll:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDriveActivity;->access$13(Lcom/waze/navigate/social/ShareDriveActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$20;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDriveActivity;->access$6(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/autocomplete/ContactsCompletionView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$20;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mSearchScroll:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDriveActivity;->access$13(Lcom/waze/navigate/social/ShareDriveActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/social/ShareDriveActivity$20;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;
    invoke-static {v1}, Lcom/waze/navigate/social/ShareDriveActivity;->access$6(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/autocomplete/ContactsCompletionView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/autocomplete/ContactsCompletionView;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 748
    :cond_0
    return-void
.end method
