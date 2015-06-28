.class Lcom/waze/navigate/social/EditFriendsActivity$6;
.super Ljava/lang/Object;
.source "EditFriendsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/EditFriendsActivity;->removeFriend(Lcom/waze/user/PersonBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/EditFriendsActivity;

.field private final synthetic val$p:Lcom/waze/user/PersonBase;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/EditFriendsActivity;Lcom/waze/user/PersonBase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/EditFriendsActivity$6;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    iput-object p2, p0, Lcom/waze/navigate/social/EditFriendsActivity$6;->val$p:Lcom/waze/user/PersonBase;

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 375
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity$6;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    iget-object v1, p0, Lcom/waze/navigate/social/EditFriendsActivity$6;->val$p:Lcom/waze/user/PersonBase;

    #calls: Lcom/waze/navigate/social/EditFriendsActivity;->reallyRemoveFriend(Lcom/waze/user/PersonBase;)V
    invoke-static {v0, v1}, Lcom/waze/navigate/social/EditFriendsActivity;->access$10(Lcom/waze/navigate/social/EditFriendsActivity;Lcom/waze/user/PersonBase;)V

    .line 378
    :cond_0
    return-void
.end method
