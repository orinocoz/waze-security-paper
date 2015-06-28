.class Lcom/waze/phone/PhoneKeepInMindActivity$2;
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
    iput-object p1, p0, Lcom/waze/phone/PhoneKeepInMindActivity$2;->this$0:Lcom/waze/phone/PhoneKeepInMindActivity;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 65
    const-string v1, "KEEP_IN_MIND_BACK"

    const/4 v2, 0x1

    .line 64
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 67
    iget-object v0, p0, Lcom/waze/phone/PhoneKeepInMindActivity$2;->this$0:Lcom/waze/phone/PhoneKeepInMindActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneKeepInMindActivity;->setResult(I)V

    .line 68
    iget-object v0, p0, Lcom/waze/phone/PhoneKeepInMindActivity$2;->this$0:Lcom/waze/phone/PhoneKeepInMindActivity;

    invoke-virtual {v0}, Lcom/waze/phone/PhoneKeepInMindActivity;->finish()V

    .line 69
    return-void
.end method
