.class Lcom/waze/phone/PhoneLoginActivity$3;
.super Ljava/lang/Object;
.source "PhoneLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/waze/phone/PhoneLoginActivity$3;->this$0:Lcom/waze/phone/PhoneLoginActivity;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginActivity$3;->this$0:Lcom/waze/phone/PhoneLoginActivity;

    #calls: Lcom/waze/phone/PhoneLoginActivity;->onRemindClicked()V
    invoke-static {v0}, Lcom/waze/phone/PhoneLoginActivity;->access$2(Lcom/waze/phone/PhoneLoginActivity;)V

    .line 179
    return-void
.end method
