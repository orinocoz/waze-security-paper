.class Lcom/waze/NativeManager$72;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->AuthenticateCompleted(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$Res:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$72;->this$0:Lcom/waze/NativeManager;

    iput p2, p0, Lcom/waze/NativeManager$72;->val$Res:I

    .line 1457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1461
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    instance-of v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;

    if-eqz v0, :cond_1

    .line 1463
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    check-cast v0, Lcom/waze/phone/PhoneNumberSignInActivity;

    iget v1, p0, Lcom/waze/NativeManager$72;->val$Res:I

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->AuthenticateCallback(I)V

    .line 1473
    :cond_0
    :goto_0
    return-void

    .line 1465
    :cond_1
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    instance-of v0, v0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;

    if-eqz v0, :cond_2

    .line 1467
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    check-cast v0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;

    iget v1, p0, Lcom/waze/NativeManager$72;->val$Res:I

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->AuthenticateCallback(I)V

    goto :goto_0

    .line 1469
    :cond_2
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    instance-of v0, v0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;

    if-eqz v0, :cond_0

    .line 1471
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    check-cast v0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;

    iget v1, p0, Lcom/waze/NativeManager$72;->val$Res:I

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->AuthenticateCallback(I)V

    goto :goto_0
.end method
