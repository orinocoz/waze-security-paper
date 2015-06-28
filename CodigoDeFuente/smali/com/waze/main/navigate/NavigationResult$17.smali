.class Lcom/waze/main/navigate/NavigationResult$17;
.super Ljava/lang/Object;
.source "NavigationResult.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/main/navigate/NavigationResult;->showToolTipEtaOnce()V
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
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult$17;->this$0:Lcom/waze/main/navigate/NavigationResult;

    .line 1192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1196
    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult$17;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mKeepFriends:Lcom/waze/social/KeepYourFriendsDialog;
    invoke-static {v2}, Lcom/waze/main/navigate/NavigationResult;->access$21(Lcom/waze/main/navigate/NavigationResult;)Lcom/waze/social/KeepYourFriendsDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/social/KeepYourFriendsDialog;->dismiss()V

    .line 1198
    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult$17;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mShareTooltipFud:Lcom/waze/user/FriendUserData;
    invoke-static {v2}, Lcom/waze/main/navigate/NavigationResult;->access$12(Lcom/waze/main/navigate/NavigationResult;)Lcom/waze/user/FriendUserData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1199
    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult$17;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mSelected:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/waze/main/navigate/NavigationResult;->access$6(Lcom/waze/main/navigate/NavigationResult;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/main/navigate/NavigationResult$17;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mShareTooltipFud:Lcom/waze/user/FriendUserData;
    invoke-static {v3}, Lcom/waze/main/navigate/NavigationResult;->access$12(Lcom/waze/main/navigate/NavigationResult;)Lcom/waze/user/FriendUserData;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult$17;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/waze/main/navigate/NavigationResult;->access$8(Lcom/waze/main/navigate/NavigationResult;)Landroid/app/Dialog;

    move-result-object v2

    const v3, 0x7f0904b4

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    .line 1224
    :goto_0
    return-void

    .line 1204
    :cond_0
    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult$17;->this$0:Lcom/waze/main/navigate/NavigationResult;

    const/4 v3, 0x1

    #setter for: Lcom/waze/main/navigate/NavigationResult;->mGoOnReturnFromAddMore:Z
    invoke-static {v2, v3}, Lcom/waze/main/navigate/NavigationResult;->access$5(Lcom/waze/main/navigate/NavigationResult;Z)V

    .line 1206
    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult$17;->this$0:Lcom/waze/main/navigate/NavigationResult;

    iget-object v2, v2, Lcom/waze/main/navigate/NavigationResult;->nm:Lcom/waze/NativeManager;

    invoke-virtual {v2}, Lcom/waze/NativeManager;->IsAccessToContactsEnableNTV()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1208
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 1209
    .local v0, a:Lcom/waze/MainActivity;
    new-instance v1, Lcom/waze/phone/PhoneRequestAccessDialog;

    new-instance v2, Lcom/waze/main/navigate/NavigationResult$17$1;

    invoke-direct {v2, p0}, Lcom/waze/main/navigate/NavigationResult$17$1;-><init>(Lcom/waze/main/navigate/NavigationResult$17;)V

    invoke-direct {v1, v0, v2}, Lcom/waze/phone/PhoneRequestAccessDialog;-><init>(Landroid/content/Context;Lcom/waze/phone/PhoneRequestAccessDialog$PhoneRequestAccessResultListener;)V

    .line 1220
    .local v1, dialog:Lcom/waze/phone/PhoneRequestAccessDialog;
    invoke-virtual {v1}, Lcom/waze/phone/PhoneRequestAccessDialog;->show()V

    goto :goto_0

    .line 1222
    .end local v0           #a:Lcom/waze/MainActivity;
    .end local v1           #dialog:Lcom/waze/phone/PhoneRequestAccessDialog;
    :cond_1
    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult$17;->this$0:Lcom/waze/main/navigate/NavigationResult;

    invoke-virtual {v2}, Lcom/waze/main/navigate/NavigationResult;->openAddFromActivity()V

    goto :goto_0
.end method
