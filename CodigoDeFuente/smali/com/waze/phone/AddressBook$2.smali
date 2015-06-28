.class Lcom/waze/phone/AddressBook$2;
.super Ljava/lang/Object;
.source "AddressBook.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/AddressBook;->RestartAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, arg0:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->DeleteContactsFromDataBase()V

    .line 262
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->getInitializedStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-static {}, Lcom/waze/phone/AddressBook;->CreateAccount()V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/NativeManager;->bToCreateAcc:Z

    goto :goto_0
.end method
