.class Lcom/waze/phone/AddressBook$1;
.super Landroid/database/ContentObserver;
.source "AddressBook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/phone/AddressBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter "$anonymous0"

    .prologue
    .line 396
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x1

    .line 400
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 402
    invoke-static {}, Lcom/waze/phone/AddressBook;->access$0()Landroid/accounts/Account;

    move-result-object v1

    const-string v2, "com.android.contacts"

    invoke-static {v1, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 406
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "expedited"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 407
    const-string v1, "force"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 408
    const-string v1, "force"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 409
    invoke-static {}, Lcom/waze/phone/AddressBook;->access$0()Landroid/accounts/Account;

    move-result-object v1

    const-string v2, "com.android.contacts"

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 411
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    return-void
.end method
