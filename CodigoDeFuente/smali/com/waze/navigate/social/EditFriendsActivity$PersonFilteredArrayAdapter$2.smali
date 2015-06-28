.class Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter$2;
.super Ljava/lang/Object;
.source "EditFriendsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;

.field private final synthetic val$p:Lcom/waze/user/PersonBase;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;Lcom/waze/user/PersonBase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter$2;->this$1:Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;

    iput-object p2, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter$2;->val$p:Lcom/waze/user/PersonBase;

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter$2;->this$1:Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;

    #getter for: Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;
    invoke-static {v0}, Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;->access$1(Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;)Lcom/waze/navigate/social/EditFriendsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter$2;->val$p:Lcom/waze/user/PersonBase;

    #calls: Lcom/waze/navigate/social/EditFriendsActivity;->removeFriend(Lcom/waze/user/PersonBase;)V
    invoke-static {v0, v1}, Lcom/waze/navigate/social/EditFriendsActivity;->access$1(Lcom/waze/navigate/social/EditFriendsActivity;Lcom/waze/user/PersonBase;)V

    .line 476
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter$2;->this$1:Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;

    #getter for: Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;
    invoke-static {v0}, Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;->access$1(Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;)Lcom/waze/navigate/social/EditFriendsActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/social/EditFriendsActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;
    invoke-static {v0}, Lcom/waze/navigate/social/EditFriendsActivity;->access$3(Lcom/waze/navigate/social/EditFriendsActivity;)Lcom/waze/autocomplete/ContactsCompletionView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/waze/autocomplete/ContactsCompletionView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    return-void
.end method
