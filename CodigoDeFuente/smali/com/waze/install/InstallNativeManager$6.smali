.class Lcom/waze/install/InstallNativeManager$6;
.super Ljava/lang/Object;
.source "InstallNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/install/InstallNativeManager;->displayWelcome(ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/install/InstallNativeManager;

.field private final synthetic val$Type:I

.field private final synthetic val$bIsCleanInstall:Z

.field private final synthetic val$bIsMinimal:Z


# direct methods
.method constructor <init>(Lcom/waze/install/InstallNativeManager;ZZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/install/InstallNativeManager$6;->this$0:Lcom/waze/install/InstallNativeManager;

    iput-boolean p2, p0, Lcom/waze/install/InstallNativeManager$6;->val$bIsCleanInstall:Z

    iput-boolean p3, p0, Lcom/waze/install/InstallNativeManager$6;->val$bIsMinimal:Z

    iput p4, p0, Lcom/waze/install/InstallNativeManager$6;->val$Type:I

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 194
    iget-boolean v3, p0, Lcom/waze/install/InstallNativeManager$6;->val$bIsCleanInstall:Z

    invoke-static {v3}, Lcom/waze/install/InstallNativeManager;->access$3(Z)V

    .line 195
    iget-boolean v3, p0, Lcom/waze/install/InstallNativeManager$6;->val$bIsMinimal:Z

    invoke-static {v3}, Lcom/waze/install/InstallNativeManager;->access$4(Z)V

    .line 198
    sput-boolean v2, Lcom/waze/MainActivity;->bReportMapShownAnalytics:Z

    .line 200
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    .line 201
    .local v0, currentActivity:Landroid/app/Activity;
    iget v3, p0, Lcom/waze/install/InstallNativeManager$6;->val$Type:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/waze/install/InstallNativeManager$6;->val$Type:I

    if-ne v3, v2, :cond_4

    .line 203
    :cond_0
    invoke-static {}, Lcom/waze/install/InstallNativeManager;->access$5()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 207
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 209
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/MainActivity;->openMeetYourWazer()V

    .line 259
    :goto_0
    return-void

    .line 213
    :cond_1
    sput-boolean v2, Lcom/waze/MainActivity;->bToOpenMeetYourWazer:Z

    goto :goto_0

    .line 228
    :cond_2
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 230
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/LayoutManager;->isSplashVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 232
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/LayoutManager;->cancelSplash()V

    .line 235
    :cond_3
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->registerOnUserNameResultListerner(Lcom/waze/NativeManager$IOnUserNameResult;)V

    .line 236
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/NativeManager;->SuggestUserNameInit()V

    .line 239
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/mywaze/MyWazeNativeManager;->getNameNTV()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v4, v3}, Lcom/waze/NativeManager;->SuggestUserNameRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/waze/phone/PhoneNumberSignInActivity;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "type"

    iget-boolean v4, p0, Lcom/waze/install/InstallNativeManager$6;->val$bIsCleanInstall:Z

    if-eqz v4, :cond_5

    const/4 v2, 0x0

    :cond_5
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    const-string v3, "fon_shon_rea_son"

    iget-boolean v2, p0, Lcom/waze/install/InstallNativeManager$6;->val$bIsCleanInstall:Z

    if-eqz v2, :cond_6

    .line 255
    const-string v2, "SIGNUP"

    .line 254
    :goto_1
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 256
    :cond_6
    const-string v2, "UPGRADE"

    goto :goto_1
.end method
