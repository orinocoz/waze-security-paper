.class Lcom/waze/phone/PhoneLoginActivity$4;
.super Ljava/lang/Object;
.source "PhoneLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/PhoneLoginActivity;->setOnClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/phone/PhoneLoginActivity;


# direct methods
.method constructor <init>(Lcom/waze/phone/PhoneLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/phone/PhoneLoginActivity$4;->this$0:Lcom/waze/phone/PhoneLoginActivity;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginActivity$4;->this$0:Lcom/waze/phone/PhoneLoginActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneLoginActivity;->setResult(I)V

    .line 187
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginActivity$4;->this$0:Lcom/waze/phone/PhoneLoginActivity;

    invoke-virtual {v0}, Lcom/waze/phone/PhoneLoginActivity;->finish()V

    .line 188
    const/4 v0, 0x1

    return v0
.end method
