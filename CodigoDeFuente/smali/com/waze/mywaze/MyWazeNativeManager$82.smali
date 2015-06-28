.class Lcom/waze/mywaze/MyWazeNativeManager$82;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeNativeManager;->facebookTokenSet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeNativeManager;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager$82;->this$0:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 1319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1321
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    instance-of v0, v0, Lcom/waze/install/GuidedTourActivity;

    if-eqz v0, :cond_1

    .line 1323
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    check-cast v0, Lcom/waze/install/GuidedTourActivity;

    invoke-virtual {v0}, Lcom/waze/install/GuidedTourActivity;->onFacebookTokenSet()V

    .line 1357
    :cond_0
    :goto_0
    return-void

    .line 1325
    :cond_1
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    instance-of v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;

    if-eqz v0, :cond_2

    .line 1327
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    check-cast v0, Lcom/waze/phone/PhoneNumberSignInActivity;

    invoke-virtual {v0}, Lcom/waze/phone/PhoneNumberSignInActivity;->onPinTokenSet()V

    goto :goto_0

    .line 1329
    :cond_2
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    instance-of v0, v0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;

    if-eqz v0, :cond_3

    .line 1331
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    check-cast v0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;

    invoke-virtual {v0}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->onPinTokenSet()V

    goto :goto_0

    .line 1333
    :cond_3
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    instance-of v0, v0, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;

    if-eqz v0, :cond_4

    .line 1335
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    check-cast v0, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;

    invoke-virtual {v0}, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->onPinTokenSet()V

    goto :goto_0

    .line 1337
    :cond_4
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    instance-of v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;

    if-eqz v0, :cond_5

    .line 1339
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    check-cast v0, Lcom/waze/phone/PhoneNumberSignInActivity;

    invoke-virtual {v0}, Lcom/waze/phone/PhoneNumberSignInActivity;->onPinTokenSet()V

    goto :goto_0

    .line 1341
    :cond_5
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    instance-of v0, v0, Lcom/waze/MainActivity;

    if-eqz v0, :cond_6

    .line 1343
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    check-cast v0, Lcom/waze/MainActivity;

    invoke-virtual {v0}, Lcom/waze/MainActivity;->onFacebookTokenSet()V

    goto :goto_0

    .line 1345
    :cond_6
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    instance-of v0, v0, Lcom/waze/phone/PhoneLoginActivity;

    if-eqz v0, :cond_7

    .line 1347
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    check-cast v0, Lcom/waze/phone/PhoneLoginActivity;

    invoke-virtual {v0}, Lcom/waze/phone/PhoneLoginActivity;->onFacebookTokenSet()V

    goto :goto_0

    .line 1349
    :cond_7
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    instance-of v0, v0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;

    if-eqz v0, :cond_8

    .line 1351
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    check-cast v0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;

    invoke-virtual {v0}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->onPinTokenSet()V

    goto :goto_0

    .line 1353
    :cond_8
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    instance-of v0, v0, Lcom/waze/profile/MinimalSignInActivity;

    if-eqz v0, :cond_0

    .line 1355
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    check-cast v0, Lcom/waze/profile/MinimalSignInActivity;

    invoke-virtual {v0}, Lcom/waze/profile/MinimalSignInActivity;->onFacebookTokenSet()V

    goto/16 :goto_0
.end method
