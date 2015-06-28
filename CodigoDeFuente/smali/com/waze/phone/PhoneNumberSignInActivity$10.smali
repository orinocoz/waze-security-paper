.class Lcom/waze/phone/PhoneNumberSignInActivity$10;
.super Ljava/lang/Object;
.source "PhoneNumberSignInActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/PhoneNumberSignInActivity;->SendPhone(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/waze/phone/PhoneNumberSignInActivity$10;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity$10;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    iget-boolean v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->IsAuthenticate:Z

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity$10;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->IsTimerCallback:Z

    .line 552
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity$10;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    invoke-virtual {v0}, Lcom/waze/phone/PhoneNumberSignInActivity;->onPinTokenSet()V

    .line 554
    :cond_0
    return-void
.end method
