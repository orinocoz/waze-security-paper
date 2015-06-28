.class Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity$1;
.super Ljava/lang/Object;
.source "PhoneVerifyYourAccountFailureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->setOnClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;


# direct methods
.method constructor <init>(Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity$1;->this$0:Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;

    .line 44
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

    .line 47
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 48
    const-string v1, "CREATE_NEW_ACCOUNT"

    .line 47
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 50
    sput-boolean v2, Lcom/waze/MainActivity;->bToOpenAccountPopup:Z

    .line 51
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity$1;->this$0:Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->setResult(I)V

    .line 52
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity$1;->this$0:Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;

    invoke-virtual {v0}, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->finish()V

    .line 53
    return-void
.end method
