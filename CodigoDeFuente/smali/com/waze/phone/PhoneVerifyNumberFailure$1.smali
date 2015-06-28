.class Lcom/waze/phone/PhoneVerifyNumberFailure$1;
.super Ljava/lang/Object;
.source "PhoneVerifyNumberFailure.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/PhoneVerifyNumberFailure;->setOnClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/phone/PhoneVerifyNumberFailure;


# direct methods
.method constructor <init>(Lcom/waze/phone/PhoneVerifyNumberFailure;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/phone/PhoneVerifyNumberFailure$1;->this$0:Lcom/waze/phone/PhoneVerifyNumberFailure;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 60
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 61
    const-string v1, "CODE_PROBLEM_SKIP"

    .line 62
    const-string v2, "VAUE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/waze/phone/PhoneVerifyNumberFailure$1;->this$0:Lcom/waze/phone/PhoneVerifyNumberFailure;

    #getter for: Lcom/waze/phone/PhoneVerifyNumberFailure;->mAuthNumberOfRetries:I
    invoke-static {v4}, Lcom/waze/phone/PhoneVerifyNumberFailure;->access$0(Lcom/waze/phone/PhoneVerifyNumberFailure;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 63
    sput-boolean v5, Lcom/waze/MainActivity;->bSignupSkipped:Z

    .line 64
    sget-boolean v0, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsUpgrade:Z

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->skipSignup()V

    .line 68
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->signup_finished()V

    .line 69
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyNumberFailure$1;->this$0:Lcom/waze/phone/PhoneVerifyNumberFailure;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneVerifyNumberFailure;->setResult(I)V

    .line 70
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyNumberFailure$1;->this$0:Lcom/waze/phone/PhoneVerifyNumberFailure;

    invoke-virtual {v0}, Lcom/waze/phone/PhoneVerifyNumberFailure;->finish()V

    .line 71
    return-void
.end method
