.class public Lcom/waze/phone/AddressBook;
.super Ljava/lang/Object;
.source "AddressBook.java"


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "Waze"

.field public static final PROJECTION2:[Ljava/lang/String;

.field public static final PROJECTION3:[Ljava/lang/String;

.field private static bIsInitialized:Z

.field private static bIsLocalPersonInit:Z

.field private static bIsMappArrayInit:Z

.field private static mAccount:Landroid/accounts/Account;

.field private static mCountryId:Ljava/lang/String;

.field private static mHashPersonArray:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/waze/autocomplete/Person;",
            ">;"
        }
    .end annotation
.end field

.field private static mIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/waze/autocomplete/Person;",
            ">;"
        }
    .end annotation
.end field

.field private static mLocalPersonData:Lcom/waze/autocomplete/Person;

.field private static mMappedPersonArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/user/PersonBase;",
            ">;"
        }
    .end annotation
.end field

.field private static mObserver:Landroid/database/ContentObserver;

.field private static mPersonArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/autocomplete/Person;",
            ">;"
        }
    .end annotation
.end field

.field private static mPhonesHash:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/waze/phone/AddressBook;->mPersonArray:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/waze/phone/AddressBook;->mHashPersonArray:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/waze/phone/AddressBook;->mMappedPersonArray:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/waze/phone/AddressBook;->mPhonesHash:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/waze/phone/AddressBook;->mIds:Landroid/util/SparseArray;

    .line 46
    sput-object v1, Lcom/waze/phone/AddressBook;->mCountryId:Ljava/lang/String;

    .line 47
    sput-boolean v2, Lcom/waze/phone/AddressBook;->bIsInitialized:Z

    .line 48
    sput-boolean v2, Lcom/waze/phone/AddressBook;->bIsLocalPersonInit:Z

    .line 49
    sput-boolean v2, Lcom/waze/phone/AddressBook;->bIsMappArrayInit:Z

    .line 50
    sput-object v1, Lcom/waze/phone/AddressBook;->mLocalPersonData:Lcom/waze/autocomplete/Person;

    .line 55
    sput-object v1, Lcom/waze/phone/AddressBook;->mAccount:Landroid/accounts/Account;

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 58
    const-string v1, "sync1"

    aput-object v1, v0, v2

    .line 59
    const-string v1, "sync2"

    aput-object v1, v0, v3

    .line 60
    const-string v1, "sync3"

    aput-object v1, v0, v4

    .line 61
    const-string v1, "sourceid"

    aput-object v1, v0, v5

    .line 57
    sput-object v0, Lcom/waze/phone/AddressBook;->PROJECTION3:[Ljava/lang/String;

    .line 63
    new-array v0, v5, [Ljava/lang/String;

    .line 64
    const-string v1, "raw_contact_id"

    aput-object v1, v0, v2

    .line 65
    const-string v1, "data1"

    aput-object v1, v0, v3

    .line 66
    const-string v1, "display_name"

    aput-object v1, v0, v4

    .line 63
    sput-object v0, Lcom/waze/phone/AddressBook;->PROJECTION2:[Ljava/lang/String;

    .line 396
    new-instance v0, Lcom/waze/phone/AddressBook$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/waze/phone/AddressBook$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/waze/phone/AddressBook;->mObserver:Landroid/database/ContentObserver;

    .line 413
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AccountExist()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 213
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v3

    .line 214
    const-string v4, "account"

    .line 213
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 215
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v3, "com.waze"

    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 219
    .local v1, maccounts:[Landroid/accounts/Account;
    array-length v3, v1

    if-ne v3, v2, :cond_0

    .line 224
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static CancelSync()V
    .locals 2

    .prologue
    .line 359
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->getContactLoggedInNTV()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waze/phone/AddressBook;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 361
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/waze/phone/AddressBook;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 362
    sget-object v0, Lcom/waze/phone/AddressBook;->mAccount:Landroid/accounts/Account;

    const-string v1, "com.android.contacts"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 364
    :cond_0
    return-void
.end method

.method public static CreateAccount()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 325
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v3

    .line 326
    const-string v4, "account"

    .line 325
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 327
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v3, "com.waze"

    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 329
    .local v2, maccounts:[Landroid/accounts/Account;
    const/4 v1, 0x0

    .line 333
    .local v1, mAccount:Landroid/accounts/Account;
    array-length v3, v2

    if-ne v3, v5, :cond_0

    .line 335
    const/4 v3, 0x0

    sput-boolean v3, Lcom/waze/NativeManager;->bToCreateAcc:Z

    .line 350
    :goto_0
    return-void

    .line 340
    :cond_0
    sput-boolean v5, Lcom/waze/NativeManager;->bToCreateAcc:Z

    .line 342
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/waze/phone/AddressBook;->CreateSyncAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    .line 344
    const-string v3, "com.android.contacts"

    invoke-static {v1, v3, v5}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 345
    const-string v3, "com.android.contacts"

    invoke-static {v1, v3, v5}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 347
    invoke-static {v5}, Lcom/waze/phone/AddressBook;->RequestSync(Z)V

    goto :goto_0
.end method

.method public static CreateSyncAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 373
    new-instance v1, Landroid/accounts/Account;

    .line 374
    const-string v2, "Waze"

    const-string v3, "com.waze"

    .line 373
    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .local v1, newAccount:Landroid/accounts/Account;
    const-string v2, "account"

    .line 377
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 383
    .local v0, accountManager:Landroid/accounts/AccountManager;
    invoke-virtual {v0, v1, v4, v4}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 392
    return-object v1
.end method

.method public static DeleteAccount()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 231
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v3

    .line 232
    const-string v4, "account"

    .line 231
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 233
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v3, "com.waze"

    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 237
    .local v2, maccounts:[Landroid/accounts/Account;
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 239
    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 240
    .local v1, accountToRemove:Landroid/accounts/Account;
    invoke-virtual {v0, v1, v5, v5}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 242
    .end local v1           #accountToRemove:Landroid/accounts/Account;
    :cond_0
    return-void
.end method

.method public static GetCountryZipCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 611
    sget-object v1, Lcom/waze/phone/AddressBook;->mCountryId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 614
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 616
    .local v0, manager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/waze/phone/AddressBook;->mCountryId:Ljava/lang/String;

    .line 618
    sget-object v1, Lcom/waze/phone/AddressBook;->mCountryId:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/waze/phone/AddressBook;->mCountryId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 620
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->GetDefaultRegion()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/waze/phone/AddressBook;->mCountryId:Ljava/lang/String;

    .line 625
    :cond_1
    sget-object v1, Lcom/waze/phone/AddressBook;->mCountryId:Ljava/lang/String;

    return-object v1
.end method

.method public static GetNameFromHash(I)Ljava/lang/String;
    .locals 2
    .parameter "ID"

    .prologue
    .line 463
    sget-boolean v1, Lcom/waze/phone/AddressBook;->bIsInitialized:Z

    if-nez v1, :cond_0

    .line 465
    invoke-static {}, Lcom/waze/phone/AddressBook;->InitMembers()V

    .line 468
    :cond_0
    sget-object v1, Lcom/waze/phone/AddressBook;->mIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/autocomplete/Person;

    .line 470
    .local v0, p:Lcom/waze/autocomplete/Person;
    if-nez v0, :cond_1

    .line 472
    const-string v1, ""

    .line 476
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/waze/autocomplete/Person;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static GetPersonArrayFromAddressBook()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/autocomplete/Person;",
            ">;"
        }
    .end annotation

    .prologue
    .line 544
    sget-boolean v0, Lcom/waze/phone/AddressBook;->bIsInitialized:Z

    if-nez v0, :cond_0

    .line 546
    invoke-static {}, Lcom/waze/phone/AddressBook;->InitMembers()V

    .line 549
    :cond_0
    sget-object v0, Lcom/waze/phone/AddressBook;->mPersonArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static GetPersonArrayWithMapping(Lcom/waze/navigate/DriveToNativeManager$PersonMappingListener;)V
    .locals 3
    .parameter "pml"

    .prologue
    const/4 v2, 0x1

    .line 554
    sget-boolean v1, Lcom/waze/phone/AddressBook;->bIsInitialized:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/waze/phone/AddressBook;->bIsMappArrayInit:Z

    if-nez v1, :cond_2

    .line 556
    :cond_0
    sget-boolean v1, Lcom/waze/phone/AddressBook;->bIsInitialized:Z

    if-nez v1, :cond_1

    .line 557
    invoke-static {}, Lcom/waze/phone/AddressBook;->InitMembers()V

    .line 558
    sput-boolean v2, Lcom/waze/phone/AddressBook;->bIsInitialized:Z

    .line 560
    :cond_1
    sput-boolean v2, Lcom/waze/phone/AddressBook;->bIsMappArrayInit:Z

    .line 561
    sget-object v1, Lcom/waze/phone/AddressBook;->mMappedPersonArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 562
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 563
    .local v0, PersonIdMatch:Landroid/util/SparseIntArray;
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v1

    new-instance v2, Lcom/waze/phone/AddressBook$3;

    invoke-direct {v2, v0, p0}, Lcom/waze/phone/AddressBook$3;-><init>(Landroid/util/SparseIntArray;Lcom/waze/navigate/DriveToNativeManager$PersonMappingListener;)V

    invoke-virtual {v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->getIdsMatchData(Lcom/waze/navigate/DriveToNativeManager$IdsMatchListener;)V

    .line 592
    .end local v0           #PersonIdMatch:Landroid/util/SparseIntArray;
    :goto_0
    return-void

    .line 590
    :cond_2
    sget-object v1, Lcom/waze/phone/AddressBook;->mMappedPersonArray:Ljava/util/ArrayList;

    invoke-interface {p0, v1}, Lcom/waze/navigate/DriveToNativeManager$PersonMappingListener;->onComplete(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public static GetPersonFromID(I)Lcom/waze/autocomplete/Person;
    .locals 2
    .parameter "ID"

    .prologue
    .line 481
    sget-boolean v1, Lcom/waze/phone/AddressBook;->bIsInitialized:Z

    if-nez v1, :cond_0

    .line 483
    invoke-static {}, Lcom/waze/phone/AddressBook;->InitMembers()V

    .line 486
    :cond_0
    sget-object v1, Lcom/waze/phone/AddressBook;->mIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/autocomplete/Person;

    .line 488
    .local v0, p:Lcom/waze/autocomplete/Person;
    if-nez v0, :cond_1

    .line 490
    const/4 v0, 0x0

    .line 494
    .end local v0           #p:Lcom/waze/autocomplete/Person;
    :cond_1
    return-object v0
.end method

.method public static GetPhonesHash()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 439
    const/4 v9, 0x0

    .line 440
    .local v9, sHash:Ljava/lang/String;
    const-string v3, "in_visible_group= ? "

    .line 441
    .local v3, where:Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "1"

    aput-object v1, v4, v0

    .line 442
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/waze/phone/AddressBook;->PROJECTION2:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 443
    .local v7, cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 456
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 458
    sget-object v0, Lcom/waze/phone/AddressBook;->mPhonesHash:Ljava/util/ArrayList;

    return-object v0

    .line 446
    :cond_1
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 448
    .local v6, contactNumber:Ljava/lang/String;
    invoke-static {}, Lcom/waze/phone/AddressBook;->GetCountryZipCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/waze/phone/AddressBook;->PhoneFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 449
    .local v8, formattedPhone:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 451
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/waze/NativeManager;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 452
    sget-object v0, Lcom/waze/phone/AddressBook;->mPhonesHash:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static InitMembers()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    .line 70
    sput-boolean v12, Lcom/waze/phone/AddressBook;->bIsInitialized:Z

    .line 71
    sget-object v0, Lcom/waze/phone/AddressBook;->mPersonArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    sget-object v0, Lcom/waze/phone/AddressBook;->mIds:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 73
    sget-object v0, Lcom/waze/phone/AddressBook;->mHashPersonArray:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 74
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/waze/phone/AddressBook;->PROJECTION3:[Ljava/lang/String;

    const-string v3, "account_type=\'com.waze\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 75
    .local v8, cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    sget-object v0, Lcom/waze/phone/AddressBook;->mHashPersonArray:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 98
    sget-object v0, Lcom/waze/phone/AddressBook;->mPersonArray:Ljava/util/ArrayList;

    sget-object v1, Lcom/waze/phone/AddressBook;->mHashPersonArray:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    :cond_1
    return-void

    .line 78
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, contactNumber:Ljava/lang/String;
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, contactName:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 82
    .local v10, image_uri:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 84
    .local v9, id:I
    new-instance v11, Lcom/waze/autocomplete/Person;

    invoke-direct {v11, v6, v7, v10, v9}, Lcom/waze/autocomplete/Person;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    .local v11, p:Lcom/waze/autocomplete/Person;
    sget-object v0, Lcom/waze/phone/AddressBook;->mHashPersonArray:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    sget-object v0, Lcom/waze/phone/AddressBook;->mIds:Landroid/util/SparseArray;

    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    sget-object v0, Lcom/waze/phone/AddressBook;->mHashPersonArray:Ljava/util/HashMap;

    invoke-virtual {v0, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static PhoneFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "number"
    .parameter "country"

    .prologue
    const/4 v1, 0x0

    .line 418
    const/4 v2, 0x0

    .line 420
    .local v2, isValid:Z
    :try_start_0
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v4

    .line 421
    .local v4, util:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    invoke-virtual {v4, p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    .line 422
    .local v3, pn:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-static {p0}, Lcom/waze/phone/AddressBook;->isValid(Ljava/lang/String;)Z

    move-result v2

    .line 423
    if-nez v2, :cond_0

    .line 432
    .end local v3           #pn:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v4           #util:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    :goto_0
    return-object v1

    .line 427
    .restart local v3       #pn:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .restart local v4       #util:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    :cond_0
    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v4, v3, v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, formatted:Ljava/lang/String;
    goto :goto_0

    .line 428
    .end local v1           #formatted:Ljava/lang/String;
    .end local v3           #pn:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v4           #util:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    :catch_0
    move-exception v0

    .line 429
    .local v0, e:Lcom/google/i18n/phonenumbers/NumberParseException;
    goto :goto_0
.end method

.method public static RequestSync(Z)V
    .locals 8
    .parameter "force"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 278
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/mywaze/MyWazeNativeManager;->getContactLoggedInNTV()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p0, :cond_1

    .line 282
    :cond_0
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v4

    .line 283
    const-string v5, "account"

    .line 282
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 284
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v4, "com.waze"

    invoke-virtual {v0, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 286
    .local v3, maccounts:[Landroid/accounts/Account;
    const/4 v2, 0x0

    .line 290
    .local v2, mAccount:Landroid/accounts/Account;
    array-length v4, v3

    if-ne v4, v6, :cond_1

    .line 292
    aget-object v4, v3, v7

    const-string v5, "com.android.contacts"

    invoke-static {v4, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 297
    aget-object v2, v3, v7

    .line 298
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 299
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "expedited"

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 300
    const-string v4, "force"

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 301
    const-string v4, "force"

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 302
    const-string v4, "com.android.contacts"

    invoke-static {v2, v4, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 318
    .end local v0           #accountManager:Landroid/accounts/AccountManager;
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #mAccount:Landroid/accounts/Account;
    .end local v3           #maccounts:[Landroid/accounts/Account;
    :cond_1
    return-void
.end method

.method public static RestartAccount()V
    .locals 5

    .prologue
    .line 248
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v3

    .line 249
    const-string v4, "account"

    .line 248
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 250
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v3, "com.waze"

    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 254
    .local v2, maccounts:[Landroid/accounts/Account;
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 256
    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 257
    .local v1, accountToRemove:Landroid/accounts/Account;
    new-instance v3, Lcom/waze/phone/AddressBook$2;

    invoke-direct {v3}, Lcom/waze/phone/AddressBook$2;-><init>()V

    .line 271
    const/4 v4, 0x0

    .line 257
    invoke-virtual {v0, v1, v3, v4}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 273
    .end local v1           #accountToRemove:Landroid/accounts/Account;
    :cond_0
    return-void
.end method

.method public static SetCountryID(Ljava/lang/String;)V
    .locals 0
    .parameter "sCountryID"

    .prologue
    .line 606
    sput-object p0, Lcom/waze/phone/AddressBook;->mCountryId:Ljava/lang/String;

    .line 607
    return-void
.end method

.method public static SetFlagToInit()V
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/phone/AddressBook;->bIsInitialized:Z

    .line 355
    return-void
.end method

.method static synthetic access$0()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/waze/phone/AddressBook;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$1()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/waze/phone/AddressBook;->mPersonArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/waze/phone/AddressBook;->mMappedPersonArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static fillMapBetweenContactIdToUid(Landroid/util/SparseIntArray;Lcom/waze/navigate/social/OnCompleteTaskListener;)V
    .locals 2
    .parameter "personIdMatch"
    .parameter "onCompleteTaskListener"

    .prologue
    .line 653
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    new-instance v1, Lcom/waze/phone/AddressBook$4;

    invoke-direct {v1, p0, p1}, Lcom/waze/phone/AddressBook$4;-><init>(Landroid/util/SparseIntArray;Lcom/waze/navigate/social/OnCompleteTaskListener;)V

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->getIdsMatchData(Lcom/waze/navigate/DriveToNativeManager$IdsMatchListener;)V

    .line 667
    return-void
.end method

.method public static getLocalFirstName()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 126
    sget-boolean v5, Lcom/waze/phone/AddressBook;->bIsLocalPersonInit:Z

    if-nez v5, :cond_0

    .line 128
    invoke-static {}, Lcom/waze/phone/AddressBook;->getLocalProfileData()V

    .line 131
    :cond_0
    sget-object v5, Lcom/waze/phone/AddressBook;->mLocalPersonData:Lcom/waze/autocomplete/Person;

    if-nez v5, :cond_2

    move-object v2, v3

    .line 157
    .local v1, nLength:I
    .local v3, sName:Ljava/lang/String;
    .local v4, words:[Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 136
    .end local v1           #nLength:I
    .end local v3           #sName:Ljava/lang/String;
    .end local v4           #words:[Ljava/lang/String;
    :cond_2
    sget-object v5, Lcom/waze/phone/AddressBook;->mLocalPersonData:Lcom/waze/autocomplete/Person;

    invoke-virtual {v5}, Lcom/waze/autocomplete/Person;->getName()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, name:Ljava/lang/String;
    if-nez v2, :cond_3

    move-object v2, v3

    .line 139
    goto :goto_0

    .line 142
    :cond_3
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 143
    .restart local v4       #words:[Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 144
    .restart local v3       #sName:Ljava/lang/String;
    array-length v1, v4

    .line 145
    .restart local v1       #nLength:I
    if-eqz v1, :cond_1

    .line 151
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-lt v0, v5, :cond_4

    move-object v2, v3

    .line 157
    goto :goto_0

    .line 153
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v4, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getLocalImageURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    sget-boolean v1, Lcom/waze/phone/AddressBook;->bIsLocalPersonInit:Z

    if-nez v1, :cond_0

    .line 196
    invoke-static {}, Lcom/waze/phone/AddressBook;->getLocalProfileData()V

    .line 199
    :cond_0
    sget-object v1, Lcom/waze/phone/AddressBook;->mLocalPersonData:Lcom/waze/autocomplete/Person;

    if-nez v1, :cond_1

    .line 201
    const/4 v0, 0x0

    .line 206
    .local v0, Image:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 204
    .end local v0           #Image:Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/waze/phone/AddressBook;->mLocalPersonData:Lcom/waze/autocomplete/Person;

    invoke-virtual {v1}, Lcom/waze/autocomplete/Person;->getImage()Ljava/lang/String;

    move-result-object v0

    .line 206
    .restart local v0       #Image:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getLocalLastName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 161
    sget-boolean v4, Lcom/waze/phone/AddressBook;->bIsLocalPersonInit:Z

    if-nez v4, :cond_0

    .line 163
    invoke-static {}, Lcom/waze/phone/AddressBook;->getLocalProfileData()V

    .line 166
    :cond_0
    sget-object v4, Lcom/waze/phone/AddressBook;->mLocalPersonData:Lcom/waze/autocomplete/Person;

    if-nez v4, :cond_2

    move-object v1, v2

    .line 190
    .local v0, nLength:I
    .local v2, sName:Ljava/lang/String;
    .local v3, words:[Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 171
    .end local v0           #nLength:I
    .end local v2           #sName:Ljava/lang/String;
    .end local v3           #words:[Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/waze/phone/AddressBook;->mLocalPersonData:Lcom/waze/autocomplete/Person;

    invoke-virtual {v4}, Lcom/waze/autocomplete/Person;->getName()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_3

    move-object v1, v2

    .line 174
    goto :goto_0

    .line 177
    :cond_3
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 178
    .restart local v3       #words:[Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 179
    .restart local v2       #sName:Ljava/lang/String;
    array-length v0, v3

    .line 180
    .restart local v0       #nLength:I
    if-eqz v0, :cond_1

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v0, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 190
    goto :goto_0
.end method

.method public static getLocalProfileData()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x1

    .line 104
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v13

    const-string v0, "photo_uri"

    aput-object v0, v2, v12

    .line 105
    .local v2, columnNames:[Ljava/lang/String;
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 106
    .local v7, c:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 107
    .local v8, count:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    .line 108
    .local v6, b:Z
    sput-boolean v12, Lcom/waze/phone/AddressBook;->bIsLocalPersonInit:Z

    .line 109
    if-eqz v6, :cond_0

    .line 111
    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    .line 112
    .local v11, position:I
    if-ne v8, v12, :cond_0

    if-nez v11, :cond_0

    .line 113
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, name:Ljava/lang/String;
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 115
    .local v10, photoId:Ljava/lang/String;
    new-instance v0, Lcom/waze/autocomplete/Person;

    const-string v1, "-1"

    invoke-direct {v0, v9, v10, v1}, Lcom/waze/autocomplete/Person;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/waze/phone/AddressBook;->mLocalPersonData:Lcom/waze/autocomplete/Person;

    .line 118
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #photoId:Ljava/lang/String;
    .end local v11           #position:I
    :cond_0
    if-eqz v7, :cond_1

    .line 120
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_1
    return-void
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 6
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    .line 632
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 635
    .local v2, util:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    :try_start_0
    invoke-static {}, Lcom/waze/phone/AddressBook;->GetCountryZipCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p0, v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 639
    .local v1, pn:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/NativeManager;->ValidateMobileTypeNTV()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 641
    invoke-virtual {v2, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v4

    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v4, v5, :cond_0

    invoke-virtual {v2, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v4

    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v4, v5, :cond_0

    .line 642
    invoke-virtual {v2, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v4

    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v4, v5, :cond_0

    .line 648
    .end local v1           #pn:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_0
    return v3

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, e:Lcom/google/i18n/phonenumbers/NumberParseException;
    goto :goto_0

    .line 648
    .end local v0           #e:Lcom/google/i18n/phonenumbers/NumberParseException;
    .restart local v1       #pn:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_0
    invoke-virtual {v2, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v3

    goto :goto_0
.end method
