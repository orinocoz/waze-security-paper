.class Lcom/waze/NativeManager$215;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->OpenInviteSignUp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$Token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$215;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$215;->val$Token:Ljava/lang/String;

    .line 5976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 5979
    iget-object v1, p0, Lcom/waze/NativeManager$215;->val$Token:Ljava/lang/String;

    sput-object v1, Lcom/waze/NativeManager;->mInviteId:Ljava/lang/String;

    .line 5980
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    const-class v2, Lcom/waze/phone/PhoneNumberSignInActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5981
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5982
    const-string v1, "back"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5983
    const-string v1, "fon_shon_rea_son"

    .line 5984
    const-string v2, "FEATURE"

    .line 5983
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5985
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/waze/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 5986
    return-void
.end method
