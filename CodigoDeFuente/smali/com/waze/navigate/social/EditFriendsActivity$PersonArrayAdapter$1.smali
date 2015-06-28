.class Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter$1;
.super Ljava/lang/Object;
.source "EditFriendsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;

.field private final synthetic val$p:Lcom/waze/user/PersonBase;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;Lcom/waze/user/PersonBase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter$1;->this$1:Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;

    iput-object p2, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter$1;->val$p:Lcom/waze/user/PersonBase;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter$1;->this$1:Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;

    #getter for: Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;
    invoke-static {v0}, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->access$0(Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;)Lcom/waze/navigate/social/EditFriendsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter$1;->val$p:Lcom/waze/user/PersonBase;

    #calls: Lcom/waze/navigate/social/EditFriendsActivity;->addFriend(Lcom/waze/user/PersonBase;)V
    invoke-static {v0, v1}, Lcom/waze/navigate/social/EditFriendsActivity;->access$0(Lcom/waze/navigate/social/EditFriendsActivity;Lcom/waze/user/PersonBase;)V

    .line 309
    return-void
.end method
