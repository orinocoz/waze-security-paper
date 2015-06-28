.class Lcom/waze/profile/MeetYourWazerPopup$1;
.super Ljava/lang/Object;
.source "MeetYourWazerPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/MeetYourWazerPopup;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/MeetYourWazerPopup;


# direct methods
.method constructor <init>(Lcom/waze/profile/MeetYourWazerPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/MeetYourWazerPopup$1;->this$0:Lcom/waze/profile/MeetYourWazerPopup;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 83
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 84
    const-string v2, "MINIMAL_ALREADY_WAZER_CLICKED"

    .line 85
    const/4 v3, 0x1

    .line 83
    invoke-virtual {v1, v2, v5, v5, v3}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 87
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/profile/MeetYourWazerPopup$1;->this$0:Lcom/waze/profile/MeetYourWazerPopup;

    #getter for: Lcom/waze/profile/MeetYourWazerPopup;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/waze/profile/MeetYourWazerPopup;->access$0(Lcom/waze/profile/MeetYourWazerPopup;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/waze/phone/PhoneNumberSignInActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    const-string v1, "report_start"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    const-string v1, "fon_shon_rea_son"

    .line 91
    const-string v2, "SIGNUP"

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-virtual {v1, v0, v2}, Lcom/waze/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 93
    return-void
.end method
