.class Lcom/waze/main/navigate/NavigationResult$20;
.super Ljava/lang/Object;
.source "NavigationResult.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/main/navigate/NavigationResult;->friendsListInsertAddMore()V
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
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult$20;->this$0:Lcom/waze/main/navigate/NavigationResult;

    .line 1415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/main/navigate/NavigationResult$20;)Lcom/waze/main/navigate/NavigationResult;
    .locals 1
    .parameter

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$20;->this$0:Lcom/waze/main/navigate/NavigationResult;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1419
    const-string v2, "SHARE_ADD_FRIENDS_CLICK"

    invoke-static {v2, v3, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult$20;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #calls: Lcom/waze/main/navigate/NavigationResult;->stopTimer()V
    invoke-static {v2}, Lcom/waze/main/navigate/NavigationResult;->access$7(Lcom/waze/main/navigate/NavigationResult;)V

    .line 1422
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/mywaze/MyWazeNativeManager;->getContactLoggedInNTV()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1423
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/NativeManager;->IsAccessToContactsEnableNTV()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1425
    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult$20;->this$0:Lcom/waze/main/navigate/NavigationResult;

    const/4 v3, 0x0

    #setter for: Lcom/waze/main/navigate/NavigationResult;->mGoOnReturnFromAddMore:Z
    invoke-static {v2, v3}, Lcom/waze/main/navigate/NavigationResult;->access$5(Lcom/waze/main/navigate/NavigationResult;Z)V

    .line 1426
    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult$20;->this$0:Lcom/waze/main/navigate/NavigationResult;

    invoke-virtual {v2}, Lcom/waze/main/navigate/NavigationResult;->openAddFromActivity()V

    .line 1452
    :goto_0
    return-void

    .line 1429
    :cond_0
    new-instance v0, Lcom/waze/phone/PhoneRequestAccessDialog;

    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult$20;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mContext:Lcom/waze/ifs/ui/ActivityBase;
    invoke-static {v2}, Lcom/waze/main/navigate/NavigationResult;->access$23(Lcom/waze/main/navigate/NavigationResult;)Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v2

    new-instance v3, Lcom/waze/main/navigate/NavigationResult$20$1;

    invoke-direct {v3, p0}, Lcom/waze/main/navigate/NavigationResult$20$1;-><init>(Lcom/waze/main/navigate/NavigationResult$20;)V

    invoke-direct {v0, v2, v3}, Lcom/waze/phone/PhoneRequestAccessDialog;-><init>(Landroid/content/Context;Lcom/waze/phone/PhoneRequestAccessDialog$PhoneRequestAccessResultListener;)V

    .line 1440
    .local v0, dialog:Lcom/waze/phone/PhoneRequestAccessDialog;
    invoke-virtual {v0}, Lcom/waze/phone/PhoneRequestAccessDialog;->show()V

    goto :goto_0

    .line 1444
    .end local v0           #dialog:Lcom/waze/phone/PhoneRequestAccessDialog;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult$20;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mContext:Lcom/waze/ifs/ui/ActivityBase;
    invoke-static {v2}, Lcom/waze/main/navigate/NavigationResult;->access$23(Lcom/waze/main/navigate/NavigationResult;)Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v2

    const-class v3, Lcom/waze/phone/PhoneNumberSignInActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1445
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "type"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1446
    const-string v2, "back"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1447
    const-string v2, "fon_shon_rea_son"

    .line 1448
    const-string v3, "FEATURE"

    .line 1447
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1449
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    .line 1450
    const v3, 0x8017

    .line 1449
    invoke-virtual {v2, v1, v3}, Lcom/waze/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
