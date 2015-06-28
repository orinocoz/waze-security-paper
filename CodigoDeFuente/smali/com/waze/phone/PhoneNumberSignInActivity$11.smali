.class Lcom/waze/phone/PhoneNumberSignInActivity$11;
.super Ljava/lang/Object;
.source "PhoneNumberSignInActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/PhoneNumberSignInActivity;->onPinTokenSet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/phone/PhoneNumberSignInActivity;


# direct methods
.method constructor <init>(Lcom/waze/phone/PhoneNumberSignInActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/phone/PhoneNumberSignInActivity$11;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity$11;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    #getter for: Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/phone/PhoneNumberSignInActivity;->access$0(Lcom/waze/phone/PhoneNumberSignInActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 583
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/MainActivity;->bToOpenAccountPopup:Z

    .line 584
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity$11;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->setResult(I)V

    .line 585
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity$11;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    invoke-virtual {v0}, Lcom/waze/phone/PhoneNumberSignInActivity;->finish()V

    .line 586
    return-void
.end method
