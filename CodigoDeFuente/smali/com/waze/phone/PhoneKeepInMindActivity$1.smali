.class Lcom/waze/phone/PhoneKeepInMindActivity$1;
.super Ljava/lang/Object;
.source "PhoneKeepInMindActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/PhoneKeepInMindActivity;->setOnClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/phone/PhoneKeepInMindActivity;


# direct methods
.method constructor <init>(Lcom/waze/phone/PhoneKeepInMindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/phone/PhoneKeepInMindActivity$1;->this$0:Lcom/waze/phone/PhoneKeepInMindActivity;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 46
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 47
    const-string v1, "SKIP_ANYWAY"

    .line 46
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 49
    sput-boolean v2, Lcom/waze/MainActivity;->bReportMapShownAnalytics:Z

    .line 50
    sput-boolean v2, Lcom/waze/MainActivity;->bSignupSkipped:Z

    .line 51
    sget-boolean v0, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsUpgrade:Z

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->skipSignup()V

    .line 55
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->signup_finished()V

    .line 56
    iget-object v0, p0, Lcom/waze/phone/PhoneKeepInMindActivity$1;->this$0:Lcom/waze/phone/PhoneKeepInMindActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneKeepInMindActivity;->setResult(I)V

    .line 57
    iget-object v0, p0, Lcom/waze/phone/PhoneKeepInMindActivity$1;->this$0:Lcom/waze/phone/PhoneKeepInMindActivity;

    invoke-virtual {v0}, Lcom/waze/phone/PhoneKeepInMindActivity;->finish()V

    .line 58
    return-void
.end method
