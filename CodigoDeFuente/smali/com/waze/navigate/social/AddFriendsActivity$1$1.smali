.class Lcom/waze/navigate/social/AddFriendsActivity$1$1;
.super Ljava/lang/Object;
.source "AddFriendsActivity.java"

# interfaces
.implements Lcom/waze/phone/PhoneRequestAccessDialog$PhoneRequestAccessResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/AddFriendsActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/social/AddFriendsActivity$1;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/AddFriendsActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/AddFriendsActivity$1$1;->this$1:Lcom/waze/navigate/social/AddFriendsActivity$1;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 3
    .parameter "okToAccess"

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 115
    const/4 v1, 0x1

    sput-boolean v1, Lcom/waze/NativeManager;->bToUploadContacts:Z

    .line 116
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/waze/phone/AddressBook;->RequestSync(Z)V

    .line 117
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsActivity$1$1;->this$1:Lcom/waze/navigate/social/AddFriendsActivity$1;

    #getter for: Lcom/waze/navigate/social/AddFriendsActivity$1;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;
    invoke-static {v1}, Lcom/waze/navigate/social/AddFriendsActivity$1;->access$0(Lcom/waze/navigate/social/AddFriendsActivity$1;)Lcom/waze/navigate/social/AddFriendsActivity;

    move-result-object v1

    const-class v2, Lcom/waze/navigate/social/AddFromActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_WHERE:Ljava/lang/String;

    sget v2, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_DEFAULT:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsActivity$1$1;->this$1:Lcom/waze/navigate/social/AddFriendsActivity$1;

    #getter for: Lcom/waze/navigate/social/AddFriendsActivity$1;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;
    invoke-static {v1}, Lcom/waze/navigate/social/AddFriendsActivity$1;->access$0(Lcom/waze/navigate/social/AddFriendsActivity$1;)Lcom/waze/navigate/social/AddFriendsActivity;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Lcom/waze/navigate/social/AddFriendsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 121
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
