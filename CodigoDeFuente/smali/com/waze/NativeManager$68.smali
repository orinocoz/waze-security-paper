.class Lcom/waze/NativeManager$68;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->InviteRequestData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$Image:Ljava/lang/String;

.field private final synthetic val$fullName:Ljava/lang/String;

.field private final synthetic val$phone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$68;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$68;->val$fullName:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/NativeManager$68;->val$phone:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/NativeManager$68;->val$Image:Ljava/lang/String;

    .line 1396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1399
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    instance-of v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;

    if-eqz v0, :cond_0

    .line 1401
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    check-cast v0, Lcom/waze/phone/PhoneNumberSignInActivity;

    iget-object v1, p0, Lcom/waze/NativeManager$68;->val$fullName:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/NativeManager$68;->val$phone:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/NativeManager$68;->val$Image:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/phone/PhoneNumberSignInActivity;->InviteDataCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    :cond_0
    return-void
.end method
