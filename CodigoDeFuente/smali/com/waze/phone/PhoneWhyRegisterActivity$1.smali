.class Lcom/waze/phone/PhoneWhyRegisterActivity$1;
.super Ljava/lang/Object;
.source "PhoneWhyRegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/PhoneWhyRegisterActivity;->setOnClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/phone/PhoneWhyRegisterActivity;


# direct methods
.method constructor <init>(Lcom/waze/phone/PhoneWhyRegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/phone/PhoneWhyRegisterActivity$1;->this$0:Lcom/waze/phone/PhoneWhyRegisterActivity;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 55
    const-string v1, "GOT_IT"

    const/4 v2, 0x1

    .line 54
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 56
    iget-object v0, p0, Lcom/waze/phone/PhoneWhyRegisterActivity$1;->this$0:Lcom/waze/phone/PhoneWhyRegisterActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneWhyRegisterActivity;->setResult(I)V

    .line 57
    iget-object v0, p0, Lcom/waze/phone/PhoneWhyRegisterActivity$1;->this$0:Lcom/waze/phone/PhoneWhyRegisterActivity;

    invoke-virtual {v0}, Lcom/waze/phone/PhoneWhyRegisterActivity;->finish()V

    .line 58
    return-void
.end method
