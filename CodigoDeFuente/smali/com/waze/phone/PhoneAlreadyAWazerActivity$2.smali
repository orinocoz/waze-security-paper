.class Lcom/waze/phone/PhoneAlreadyAWazerActivity$2;
.super Ljava/lang/Object;
.source "PhoneAlreadyAWazerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/PhoneAlreadyAWazerActivity;->setOnClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/phone/PhoneAlreadyAWazerActivity;


# direct methods
.method constructor <init>(Lcom/waze/phone/PhoneAlreadyAWazerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity$2;->this$0:Lcom/waze/phone/PhoneAlreadyAWazerActivity;

    .line 118
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

    .line 121
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 122
    const-string v1, "CREATE_NEW_ACCOUNT"

    .line 121
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 124
    iget-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity$2;->this$0:Lcom/waze/phone/PhoneAlreadyAWazerActivity;

    const/4 v1, 0x0

    #setter for: Lcom/waze/phone/PhoneAlreadyAWazerActivity;->bIsVerifyClicked:Z
    invoke-static {v0, v1}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->access$1(Lcom/waze/phone/PhoneAlreadyAWazerActivity;Z)V

    .line 126
    sput-boolean v2, Lcom/waze/MainActivity;->bToOpenAccountPopup:Z

    .line 127
    iget-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity$2;->this$0:Lcom/waze/phone/PhoneAlreadyAWazerActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->setResult(I)V

    .line 128
    iget-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity$2;->this$0:Lcom/waze/phone/PhoneAlreadyAWazerActivity;

    invoke-virtual {v0}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->finish()V

    .line 129
    return-void
.end method
