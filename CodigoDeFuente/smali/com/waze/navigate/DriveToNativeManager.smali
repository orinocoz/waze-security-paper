.class public Lcom/waze/navigate/DriveToNativeManager;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/navigate/DriveToNativeManager$AddFriendsListener;,
        Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;,
        Lcom/waze/navigate/DriveToNativeManager$AlternativeRoutesListener;,
        Lcom/waze/navigate/DriveToNativeManager$AutoCompleteAdsResult;,
        Lcom/waze/navigate/DriveToNativeManager$CategoriesListener;,
        Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;,
        Lcom/waze/navigate/DriveToNativeManager$EndDriveListener;,
        Lcom/waze/navigate/DriveToNativeManager$EventsOnRouteListener;,
        Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;,
        Lcom/waze/navigate/DriveToNativeManager$IdsMatchListener;,
        Lcom/waze/navigate/DriveToNativeManager$LocationDataListener;,
        Lcom/waze/navigate/DriveToNativeManager$MajorEventsOnRouteListener;,
        Lcom/waze/navigate/DriveToNativeManager$NearbyStationsListener;,
        Lcom/waze/navigate/DriveToNativeManager$NumberOfFriendsDrivingListener;,
        Lcom/waze/navigate/DriveToNativeManager$ObjectListener;,
        Lcom/waze/navigate/DriveToNativeManager$PersonMappingListener;,
        Lcom/waze/navigate/DriveToNativeManager$PriceFormatListener;,
        Lcom/waze/navigate/DriveToNativeManager$ProductListener;,
        Lcom/waze/navigate/DriveToNativeManager$SortPreferencesListener;
    }
.end annotation


# static fields
.field public static final UH_ETA:I

.field public static final UH_MAP_CENTER:I

.field public static final UH_SEARCH_ADD_RESULT:I

.field public static final UH_SEARCH_FAIL:I

.field public static final UH_SEARCH_FINALIZE:I

.field public static final VALUES:[Ljava/lang/String;

.field private static instance:Lcom/waze/navigate/DriveToNativeManager;

.field private static ready:Z


# instance fields
.field private handlers:Lcom/waze/ifs/async/UpdateHandlers;

.field mAddress:Lcom/waze/navigate/AddressItem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    sget-object v0, Lcom/waze/utils/TicketRoller$Type;->Handler:Lcom/waze/utils/TicketRoller$Type;

    invoke-static {v0}, Lcom/waze/utils/TicketRoller;->get(Lcom/waze/utils/TicketRoller$Type;)I

    move-result v0

    sput v0, Lcom/waze/navigate/DriveToNativeManager;->UH_ETA:I

    .line 130
    sget-object v0, Lcom/waze/utils/TicketRoller$Type;->Handler:Lcom/waze/utils/TicketRoller$Type;

    invoke-static {v0}, Lcom/waze/utils/TicketRoller;->get(Lcom/waze/utils/TicketRoller$Type;)I

    move-result v0

    sput v0, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    .line 131
    sget-object v0, Lcom/waze/utils/TicketRoller$Type;->Handler:Lcom/waze/utils/TicketRoller$Type;

    invoke-static {v0}, Lcom/waze/utils/TicketRoller;->get(Lcom/waze/utils/TicketRoller$Type;)I

    move-result v0

    sput v0, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_FINALIZE:I

    .line 132
    sget-object v0, Lcom/waze/utils/TicketRoller$Type;->Handler:Lcom/waze/utils/TicketRoller$Type;

    invoke-static {v0}, Lcom/waze/utils/TicketRoller;->get(Lcom/waze/utils/TicketRoller$Type;)I

    move-result v0

    sput v0, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_FAIL:I

    .line 133
    sget-object v0, Lcom/waze/utils/TicketRoller$Type;->Handler:Lcom/waze/utils/TicketRoller$Type;

    invoke-static {v0}, Lcom/waze/utils/TicketRoller;->get(Lcom/waze/utils/TicketRoller$Type;)I

    move-result v0

    sput v0, Lcom/waze/navigate/DriveToNativeManager;->UH_MAP_CENTER:I

    .line 143
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/navigate/DriveToNativeManager;->instance:Lcom/waze/navigate/DriveToNativeManager;

    .line 144
    sput-boolean v2, Lcom/waze/navigate/DriveToNativeManager;->ready:Z

    .line 294
    const/16 v0, 0x29

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Online Meeting"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "Online"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Skype"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Lync"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Lync Meeting"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Conference Call"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Conference line"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 295
    const-string v2, "Conf call"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Conf. call"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Webex"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "WebEx Online"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Call"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Call in"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "RAN-WAZE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 296
    const-string v2, "Dial in"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Dial-in"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Phone"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Phone call"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Telephone"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Gotomeeting"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Google Hangout"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Hangout"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Jewish holidays"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Virtual"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "I will call you"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Jewish Religious Holidays"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 297
    const-string v2, "Email"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "GVC"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Remote"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Everywhere"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Anywhere"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Teleconference"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Virtual"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "AT&T Connect"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\u05d7\u05d2\u05d9\u05dd \u05d3\u05ea\u05d9\u05d9\u05dd \u05d9\u05d4\u05d5\u05d3\u05d9\u05d9\u05dd"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\u05d7\u05d2\u05d9\u05dd \u05d3\u05ea\u05d9\u05d9\u05dd \u05d9\u05d4**\u05d9\u05d9\u05dd"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\u05d7\u05d2\u05d9\u05dd \u05d3\u05ea\u05d9\u05d9\u05dd \u05de\u05d5\u05e1\u05dc\u05de\u05d9\u05d9\u05dd"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\u05d7\u05d2\u05d9\u05dd \u05d3\u05ea\u05d9\u05d9\u05dd \u05e0\u05d5\u05e6\u05e8\u05d9\u05d9\u05dd"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\u05d8\u05dc\u05e4\u05d5\u05e0\u05d9"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\u05d8\u05dc\u05e4\u05d5\u05e0\u05d9\u05ea"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\u05e9\u05d9\u05d7\u05d4 \u05d8\u05dc\u05e4\u05d5\u05e0\u05d9\u05ea"

    aput-object v2, v0, v1

    .line 294
    sput-object v0, Lcom/waze/navigate/DriveToNativeManager;->VALUES:[Ljava/lang/String;

    .line 297
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->init()V

    .line 168
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ctr running in thread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method private native CalendarAddressRemoveNTV(Ljava/lang/String;)V
.end method

.method private native CalendarAddressShouldIgnoreNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native CalendarAddressVerifiedByIndexNTV(ILjava/lang/String;)V
.end method

.method private native CalendarAddressVerifiedNTV(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native DriveEventNTV(Ljava/lang/String;Z)V
.end method

.method private native GetAutoCompleteAds(Ljava/lang/String;)Lcom/waze/autocomplete/PlaceData;
.end method

.method private native GetPriceFormatNTV(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native InitMeetingNTV(Ljava/lang/String;)V
.end method

.method private IsIgnoreCalenderLocation(Ljava/lang/String;)Z
    .locals 2
    .parameter "location"

    .prologue
    .line 301
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/waze/navigate/DriveToNativeManager;->VALUES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 308
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 303
    :cond_0
    sget-object v1, Lcom/waze/navigate/DriveToNativeManager;->VALUES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    const/4 v1, 0x1

    goto :goto_1

    .line 301
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private native MaxCalendarEntriesNTV()I
.end method

.method private native UpdatePriceFormatNTV()I
.end method

.method private native VerifyEventAndDriveByIndexNTV(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native VerifyEventByIndexNTV(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native VerifyEventWithNoAddressNTV(Ljava/lang/String;)V
.end method

.method static synthetic access$0(Lcom/waze/navigate/DriveToNativeManager;)Lcom/waze/navigate/social/EndDriveData;
    .locals 1
    .parameter

    .prologue
    .line 2048
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->getEndDriveDataNTV()Lcom/waze/navigate/social/EndDriveData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)Lcom/waze/navigate/social/EndDriveData;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2050
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->getFriendsDrivingDataNTV(Ljava/lang/String;)Lcom/waze/navigate/social/EndDriveData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Lcom/waze/navigate/DriveToNativeManager;)Lcom/waze/navigate/social/FriendsListData;
    .locals 1
    .parameter

    .prologue
    .line 2068
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->getRemovedFriendsDataNTV()Lcom/waze/navigate/social/FriendsListData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lcom/waze/navigate/DriveToNativeManager;)[Lcom/waze/main/navigate/Category;
    .locals 1
    .parameter

    .prologue
    .line 1918
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->getCategoriesNTV()[Lcom/waze/main/navigate/Category;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12(Lcom/waze/navigate/DriveToNativeManager;I)Lcom/waze/navigate/Product;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2035
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->getProductNTV(I)Lcom/waze/navigate/Product;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)Lcom/waze/navigate/SortPreferences;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2037
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->getSortPreferencesNTV(Ljava/lang/String;)Lcom/waze/navigate/SortPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14(Lcom/waze/navigate/DriveToNativeManager;)[Lcom/waze/navigate/NearbyStation;
    .locals 1
    .parameter

    .prologue
    .line 2006
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->getNearbyStationsNTV()[Lcom/waze/navigate/NearbyStation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2010
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->GetPriceFormatNTV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)Lcom/waze/autocomplete/PlaceData;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2012
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->GetAutoCompleteAds(Ljava/lang/String;)Lcom/waze/autocomplete/PlaceData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17(Lcom/waze/navigate/DriveToNativeManager;Z)[Lcom/waze/navigate/AddressItem;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1920
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->getFavoritesNTV(Z)[Lcom/waze/navigate/AddressItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18(Lcom/waze/navigate/DriveToNativeManager;)[Lcom/waze/navigate/AddressItem;
    .locals 1
    .parameter

    .prologue
    .line 1922
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->getHomeNTV()[Lcom/waze/navigate/AddressItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$19(Lcom/waze/navigate/DriveToNativeManager;)[Lcom/waze/navigate/AddressItem;
    .locals 1
    .parameter

    .prologue
    .line 1924
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->getWorkNTV()[Lcom/waze/navigate/AddressItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/navigate/DriveToNativeManager;)Lcom/waze/navigate/social/AddFriendsData;
    .locals 1
    .parameter

    .prologue
    .line 2052
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->getAddFriendsDataNTV()Lcom/waze/navigate/social/AddFriendsData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$20(Lcom/waze/navigate/DriveToNativeManager;)[Lcom/waze/navigate/AddressItem;
    .locals 1
    .parameter

    .prologue
    .line 1928
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->getHistoryNTV()[Lcom/waze/navigate/AddressItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$21(Lcom/waze/navigate/DriveToNativeManager;I)[Lcom/waze/navigate/AddressItem;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1931
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->getFriendsSharedPlacesNTV(I)[Lcom/waze/navigate/AddressItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$22(Lcom/waze/navigate/DriveToNativeManager;)[Lcom/waze/navigate/AddressItem;
    .locals 1
    .parameter

    .prologue
    .line 1929
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->getAutoCompleteNTV()[Lcom/waze/navigate/AddressItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$23(Lcom/waze/navigate/DriveToNativeManager;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1939
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/waze/navigate/DriveToNativeManager;->searchNTV(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$24(Lcom/waze/navigate/DriveToNativeManager;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2092
    invoke-direct {p0, p1, p2}, Lcom/waze/navigate/DriveToNativeManager;->notifyAddressItemShownNTV(IZ)V

    return-void
.end method

.method static synthetic access$25(Lcom/waze/navigate/DriveToNativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2096
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->notifyAddressItemShownInNavigateNTV(I)V

    return-void
.end method

.method static synthetic access$26(Lcom/waze/navigate/DriveToNativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2094
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->notifyAddressItemNavigateNTV(I)V

    return-void
.end method

.method static synthetic access$27(Lcom/waze/navigate/DriveToNativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2098
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->notifyAddressItemClickedNTV(I)V

    return-void
.end method

.method static synthetic access$28(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/AddressItem;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1020
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->storeAddressItemInt(Lcom/waze/navigate/AddressItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$29(Lcom/waze/navigate/DriveToNativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2090
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->logAnalyticsOnGoNTV(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/waze/navigate/DriveToNativeManager;)Lcom/waze/navigate/social/IdsMatchData;
    .locals 1
    .parameter

    .prologue
    .line 2054
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->getIdsMatchDataNTV()Lcom/waze/navigate/social/IdsMatchData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$30(Lcom/waze/navigate/DriveToNativeManager;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1940
    invoke-direct/range {p0 .. p13}, Lcom/waze/navigate/DriveToNativeManager;->navigateNTV(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$31(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1943
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/navigate/DriveToNativeManager;->eraseAddressItemNTV(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$32(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1949
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->getAddressItemAppDataNTV(Ljava/lang/String;)Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$33(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1951
    invoke-direct {p0, p1, p2}, Lcom/waze/navigate/DriveToNativeManager;->updateAddressItemAppDataNTV(Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;)V

    return-void
.end method

.method static synthetic access$34(Lcom/waze/navigate/DriveToNativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2076
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->openPrivateMessageNTV(I)V

    return-void
.end method

.method static synthetic access$35(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2086
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->VerifyEventWithNoAddressNTV(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$36(Lcom/waze/navigate/DriveToNativeManager;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2083
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/navigate/DriveToNativeManager;->VerifyEventAndDriveByIndexNTV(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$37(Lcom/waze/navigate/DriveToNativeManager;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2078
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/navigate/DriveToNativeManager;->VerifyEventByIndexNTV(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$38(Lcom/waze/navigate/DriveToNativeManager;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2104
    invoke-direct {p0, p1, p2}, Lcom/waze/navigate/DriveToNativeManager;->CalendarAddressVerifiedByIndexNTV(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$39(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2106
    invoke-direct/range {p0 .. p5}, Lcom/waze/navigate/DriveToNativeManager;->CalendarAddressVerifiedNTV(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/waze/navigate/DriveToNativeManager;)I
    .locals 1
    .parameter

    .prologue
    .line 2056
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->getNumberOfFriendsDrivingNTV()I

    move-result v0

    return v0
.end method

.method static synthetic access$40(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2108
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->CalendarAddressRemoveNTV(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$41(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2081
    invoke-direct {p0, p1, p2}, Lcom/waze/navigate/DriveToNativeManager;->DriveEventNTV(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$42(Lcom/waze/navigate/DriveToNativeManager;IIILjava/lang/String;)Lcom/waze/main/navigate/LocationData;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2024
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/waze/navigate/DriveToNativeManager;->getLocationDataNTV(IIILjava/lang/String;)Lcom/waze/main/navigate/LocationData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$43(Lcom/waze/navigate/DriveToNativeManager;)Lcom/waze/reports/EditMapLocationFragment$Position;
    .locals 1
    .parameter

    .prologue
    .line 2031
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->getMapCenterNTV()Lcom/waze/reports/EditMapLocationFragment$Position;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$44()Lcom/waze/navigate/DriveToNativeManager;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/waze/navigate/DriveToNativeManager;->instance:Lcom/waze/navigate/DriveToNativeManager;

    return-object v0
.end method

.method static synthetic access$45(Lcom/waze/navigate/DriveToNativeManager;)Lcom/waze/ifs/async/UpdateHandlers;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager;->handlers:Lcom/waze/ifs/async/UpdateHandlers;

    return-object v0
.end method

.method static synthetic access$46(Lcom/waze/navigate/DriveToNativeManager;)[Lcom/waze/main/navigate/EventOnRoute;
    .locals 1
    .parameter

    .prologue
    .line 1953
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->getEventsOnRouteNTV()[Lcom/waze/main/navigate/EventOnRoute;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$47(Lcom/waze/navigate/DriveToNativeManager;)[Lcom/waze/main/navigate/MajorEventOnRoute;
    .locals 1
    .parameter

    .prologue
    .line 1955
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->getMajorEventsOnRouteNTV()[Lcom/waze/main/navigate/MajorEventOnRoute;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$48(Lcom/waze/navigate/DriveToNativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1959
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->requestRouteNTV(Z)V

    return-void
.end method

.method static synthetic access$49(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;JJZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1961
    invoke-direct/range {p0 .. p10}, Lcom/waze/navigate/DriveToNativeManager;->addCalendarEventNTV(Ljava/lang/String;JJZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/waze/navigate/DriveToNativeManager;)Lcom/waze/navigate/social/FriendsListData;
    .locals 1
    .parameter

    .prologue
    .line 2058
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->getFriendsListDataNTV()Lcom/waze/navigate/social/FriendsListData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$50(Lcom/waze/navigate/DriveToNativeManager;)[Lcom/waze/routes/AlternativeRoute;
    .locals 1
    .parameter

    .prologue
    .line 1957
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->getAlternativeRoutesNTV()[Lcom/waze/routes/AlternativeRoute;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$51(Lcom/waze/navigate/DriveToNativeManager;)[Lcom/waze/navigate/AddressItem;
    .locals 1
    .parameter

    .prologue
    .line 1926
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->getTopTenFavoritesNTV()[Lcom/waze/navigate/AddressItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$52(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)[Lcom/waze/navigate/SearchEngine;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1937
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->getSearchEnginesNTV(Ljava/lang/String;)[Lcom/waze/navigate/SearchEngine;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$53(Lcom/waze/navigate/DriveToNativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1963
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->selectAlternativeRouteNTV(I)V

    return-void
.end method

.method static synthetic access$54(Lcom/waze/navigate/DriveToNativeManager;I[F[II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2043
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/waze/navigate/DriveToNativeManager;->setProductPricesNTV(I[F[II)V

    return-void
.end method

.method static synthetic access$55(Lcom/waze/navigate/DriveToNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1965
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->setAlternativeRoutesViewNTV()V

    return-void
.end method

.method static synthetic access$56(Lcom/waze/navigate/DriveToNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1967
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->closeAlternativeRoutesViewNTV()V

    return-void
.end method

.method static synthetic access$57(Lcom/waze/navigate/DriveToNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1969
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->onAlternativeRoutesClosedNTV()V

    return-void
.end method

.method static synthetic access$58(Lcom/waze/navigate/DriveToNativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1994
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->requestStopPointNTV(I)V

    return-void
.end method

.method static synthetic access$59(Lcom/waze/navigate/DriveToNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1971
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->setAddressOptionsViewNTV()V

    return-void
.end method

.method static synthetic access$6(Lcom/waze/navigate/DriveToNativeManager;II)Lcom/waze/navigate/social/FriendsListData;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2060
    invoke-direct {p0, p1, p2}, Lcom/waze/navigate/DriveToNativeManager;->getShareFriendsListDataNTV(II)Lcom/waze/navigate/social/FriendsListData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$60(Lcom/waze/navigate/DriveToNativeManager;IIZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1989
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/waze/navigate/DriveToNativeManager;->centerMapInAddressOptionsViewNTV(IIZZ)V

    return-void
.end method

.method static synthetic access$61(Lcom/waze/navigate/DriveToNativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1977
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->setScreenFreezeNTV(Z)V

    return-void
.end method

.method static synthetic access$62(Lcom/waze/navigate/DriveToNativeManager;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1973
    invoke-direct {p0, p1, p2}, Lcom/waze/navigate/DriveToNativeManager;->setMapPreviewNTV(II)V

    return-void
.end method

.method static synthetic access$63(Lcom/waze/navigate/DriveToNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1975
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->unsetMapPreviewNTV()V

    return-void
.end method

.method static synthetic access$64(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1983
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->InitMeetingNTV(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$65(Lcom/waze/navigate/DriveToNativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1981
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->setShareMapModeNTV(Z)V

    return-void
.end method

.method static synthetic access$66(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1979
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->setMeetingNTV(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$67(Lcom/waze/navigate/DriveToNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1985
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->unsetMeetingNTV()V

    return-void
.end method

.method static synthetic access$68(Lcom/waze/navigate/DriveToNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1987
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->setRoadClosureMapNTV()V

    return-void
.end method

.method static synthetic access$69(Lcom/waze/navigate/DriveToNativeManager;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1992
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/navigate/DriveToNativeManager;->setStopPointPreviewNTV(III)V

    return-void
.end method

.method static synthetic access$7(Lcom/waze/navigate/DriveToNativeManager;)Lcom/waze/navigate/social/FriendsListData;
    .locals 1
    .parameter

    .prologue
    .line 2062
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->getMySharedDriveUsersNTV()Lcom/waze/navigate/social/FriendsListData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$70(Lcom/waze/navigate/DriveToNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2022
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->setStartPointNTV()V

    return-void
.end method

.method static synthetic access$71(Lcom/waze/navigate/DriveToNativeManager;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2018
    invoke-direct {p0, p1, p2}, Lcom/waze/navigate/DriveToNativeManager;->showOnMapNTV(II)V

    return-void
.end method

.method static synthetic access$72(Lcom/waze/navigate/DriveToNativeManager;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2020
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/navigate/DriveToNativeManager;->zoomOnMapNTV(III)V

    return-void
.end method

.method static synthetic access$73(Lcom/waze/navigate/DriveToNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1996
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->unsetStopPointPreviewNTV()V

    return-void
.end method

.method static synthetic access$74(Lcom/waze/navigate/DriveToNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1998
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->unsetAddressOptionsViewNTV()V

    return-void
.end method

.method static synthetic access$75(Lcom/waze/navigate/DriveToNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2000
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->unsetRoadClosureViewNTV()V

    return-void
.end method

.method static synthetic access$76(Lcom/waze/navigate/DriveToNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2002
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->unsetSearchMapViewNTV()V

    return-void
.end method

.method static synthetic access$77(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2016
    invoke-direct {p0, p1, p2}, Lcom/waze/navigate/DriveToNativeManager;->setSearchResultPinsNTV(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$78(Lcom/waze/navigate/DriveToNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2014
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->setSearchMapViewNTV()V

    return-void
.end method

.method static synthetic access$79(Lcom/waze/navigate/DriveToNativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2072
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->setStopPointNTV(Z)V

    return-void
.end method

.method static synthetic access$8(Lcom/waze/navigate/DriveToNativeManager;ZZZ)Lcom/waze/navigate/social/FriendsListData;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2064
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/navigate/DriveToNativeManager;->getUsersWithDriveSharingNTV(ZZZ)Lcom/waze/navigate/social/FriendsListData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$80(Lcom/waze/navigate/DriveToNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2100
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->removeDeparturePoiNTV()V

    return-void
.end method

.method static synthetic access$81(Lcom/waze/navigate/DriveToNativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2070
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->setSearchModeNTV(Z)V

    return-void
.end method

.method static synthetic access$82(Lcom/waze/navigate/DriveToNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2074
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->cancelStopPointNTV()V

    return-void
.end method

.method static synthetic access$83(Lcom/waze/navigate/DriveToNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2004
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->searchNearbyStationsNTV()V

    return-void
.end method

.method static synthetic access$84(Lcom/waze/navigate/DriveToNativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2039
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->highlightRouteNTV(I)V

    return-void
.end method

.method static synthetic access$85(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2008
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->getSearchResultsEtaNTV(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/waze/navigate/DriveToNativeManager;)Lcom/waze/navigate/social/FriendsListData;
    .locals 1
    .parameter

    .prologue
    .line 2066
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->getFacebookFriendsListDataNTV()Lcom/waze/navigate/social/FriendsListData;

    move-result-object v0

    return-object v0
.end method

.method private addCalendarEvent(Ljava/lang/String;JJZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "calendarId"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "isAllDay"
    .parameter "isRecurring"
    .parameter "locationStr"
    .parameter "name"
    .parameter "displayName"

    .prologue
    .line 1426
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$53;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/waze/navigate/DriveToNativeManager$53;-><init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;JJZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1432
    return-void
.end method

.method private native addCalendarEventNTV(Ljava/lang/String;JJZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native cancelStopPointNTV()V
.end method

.method private native centerMapInAddressOptionsViewNTV(IIZZ)V
.end method

.method private native closeAlternativeRoutesViewNTV()V
.end method

.method private native eraseAddressItemNTV(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static finalizeSearch(Ljava/lang/String;)V
    .locals 4
    .parameter "activeProvider"

    .prologue
    .line 1242
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "searchResults finalize. Active provider: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1244
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "provider"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    sget-object v1, Lcom/waze/navigate/DriveToNativeManager;->instance:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, v1, Lcom/waze/navigate/DriveToNativeManager;->handlers:Lcom/waze/ifs/async/UpdateHandlers;

    sget v2, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_FINALIZE:I

    invoke-virtual {v1, v2, v0}, Lcom/waze/ifs/async/UpdateHandlers;->sendUpdateMessage(ILandroid/os/Bundle;)V

    .line 1247
    return-void
.end method

.method private native getAddFriendsDataNTV()Lcom/waze/navigate/social/AddFriendsData;
.end method

.method private native getAddressItemAppDataNTV(Ljava/lang/String;)Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;
.end method

.method private native getAlternativeRoutesNTV()[Lcom/waze/routes/AlternativeRoute;
.end method

.method private native getAutoCompleteNTV()[Lcom/waze/navigate/AddressItem;
.end method

.method private getCalendarUriBase()Ljava/lang/String;
    .locals 3

    .prologue
    .line 259
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 261
    const-string v0, "content://com.android.calendar/events"

    .line 267
    .local v0, uri:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 265
    .end local v0           #uri:Ljava/lang/String;
    :cond_0
    const-string v0, "content://calendar/events"

    .restart local v0       #uri:Ljava/lang/String;
    goto :goto_0
.end method

.method private native getCategoriesNTV()[Lcom/waze/main/navigate/Category;
.end method

.method private native getEndDriveDataNTV()Lcom/waze/navigate/social/EndDriveData;
.end method

.method private native getEventsOnRouteNTV()[Lcom/waze/main/navigate/EventOnRoute;
.end method

.method private native getFacebookFriendsListDataNTV()Lcom/waze/navigate/social/FriendsListData;
.end method

.method private native getFavoritesNTV(Z)[Lcom/waze/navigate/AddressItem;
.end method

.method private native getFriendsDrivingDataNTV(Ljava/lang/String;)Lcom/waze/navigate/social/EndDriveData;
.end method

.method private native getFriendsListDataNTV()Lcom/waze/navigate/social/FriendsListData;
.end method

.method private native getFriendsSharedPlacesNTV(I)[Lcom/waze/navigate/AddressItem;
.end method

.method private native getHistoryNTV()[Lcom/waze/navigate/AddressItem;
.end method

.method private native getHomeNTV()[Lcom/waze/navigate/AddressItem;
.end method

.method private native getIdsMatchDataNTV()Lcom/waze/navigate/social/IdsMatchData;
.end method

.method public static getInstance()Lcom/waze/navigate/DriveToNativeManager;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/waze/navigate/DriveToNativeManager;->instance:Lcom/waze/navigate/DriveToNativeManager;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager;

    invoke-direct {v0}, Lcom/waze/navigate/DriveToNativeManager;-><init>()V

    sput-object v0, Lcom/waze/navigate/DriveToNativeManager;->instance:Lcom/waze/navigate/DriveToNativeManager;

    .line 163
    :cond_0
    sget-object v0, Lcom/waze/navigate/DriveToNativeManager;->instance:Lcom/waze/navigate/DriveToNativeManager;

    return-object v0
.end method

.method private native getLocationDataNTV(IIILjava/lang/String;)Lcom/waze/main/navigate/LocationData;
.end method

.method private native getMajorEventsOnRouteNTV()[Lcom/waze/main/navigate/MajorEventOnRoute;
.end method

.method private native getMapCenterNTV()Lcom/waze/reports/EditMapLocationFragment$Position;
.end method

.method private native getMySharedDriveUsersNTV()Lcom/waze/navigate/social/FriendsListData;
.end method

.method private native getNearbyStationsNTV()[Lcom/waze/navigate/NearbyStation;
.end method

.method private native getNumberOfFriendsDrivingNTV()I
.end method

.method private native getProductNTV(I)Lcom/waze/navigate/Product;
.end method

.method private native getRemovedFriendsDataNTV()Lcom/waze/navigate/social/FriendsListData;
.end method

.method private native getSearchEnginesNTV(Ljava/lang/String;)[Lcom/waze/navigate/SearchEngine;
.end method

.method private native getSearchResultsEtaNTV(Ljava/lang/String;)V
.end method

.method private native getShareFriendsListDataNTV(II)Lcom/waze/navigate/social/FriendsListData;
.end method

.method private native getSortPreferencesNTV(Ljava/lang/String;)Lcom/waze/navigate/SortPreferences;
.end method

.method private native getTopTenFavoritesNTV()[Lcom/waze/navigate/AddressItem;
.end method

.method private native getUsersWithDriveSharingNTV(ZZZ)Lcom/waze/navigate/social/FriendsListData;
.end method

.method private native getWorkNTV()[Lcom/waze/navigate/AddressItem;
.end method

.method private native highlightRouteNTV(I)V
.end method

.method private native highlightRouteNTV(Ljava/lang/String;)V
.end method

.method private init()V
    .locals 4

    .prologue
    .line 148
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init driveto ready="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/waze/navigate/DriveToNativeManager;->ready:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    sget-boolean v0, Lcom/waze/navigate/DriveToNativeManager;->ready:Z

    if-nez v0, :cond_0

    .line 150
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initNativeLayerNTV "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->initNativeLayerNTV()V

    .line 153
    new-instance v0, Lcom/waze/ifs/async/UpdateHandlers;

    invoke-direct {v0}, Lcom/waze/ifs/async/UpdateHandlers;-><init>()V

    iput-object v0, p0, Lcom/waze/navigate/DriveToNativeManager;->handlers:Lcom/waze/ifs/async/UpdateHandlers;

    .line 154
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/navigate/DriveToNativeManager;->ready:Z

    .line 156
    :cond_0
    return-void
.end method

.method private native initNativeLayerNTV()V
.end method

.method private native isDayModeNTV()Z
.end method

.method public static isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 5
    .parameter "cal1"
    .parameter "cal2"

    .prologue
    const/4 v4, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 271
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The dates must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 275
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 276
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 274
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 4
    .parameter "date1"
    .parameter "date2"

    .prologue
    .line 281
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 282
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The dates must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 284
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 285
    .local v0, cal1:Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 286
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 287
    .local v1, cal2:Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 288
    invoke-static {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    return v2
.end method

.method public static isToday(Ljava/util/Date;)Z
    .locals 1
    .parameter "date"

    .prologue
    .line 292
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/waze/navigate/DriveToNativeManager;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method private loadEvent(Landroid/database/Cursor;)Z
    .locals 20
    .parameter "cursor"

    .prologue
    .line 314
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, _id:Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 316
    .local v12, title:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 317
    .local v17, start:J
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 318
    .local v14, end:J
    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v9, 0x0

    .line 319
    .local v9, isAllDay:Z
    :goto_0
    const/4 v3, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 320
    .local v11, location:Ljava/lang/String;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "http"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "[0-9]+"

    invoke-virtual {v11, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/waze/navigate/DriveToNativeManager;->IsIgnoreCalenderLocation(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 321
    :cond_0
    const/4 v3, 0x0

    .line 361
    :goto_1
    return v3

    .line 318
    .end local v9           #isAllDay:Z
    .end local v11           #location:Ljava/lang/String;
    :cond_1
    const/4 v9, 0x1

    goto :goto_0

    .line 323
    .restart local v9       #isAllDay:Z
    .restart local v11       #location:Ljava/lang/String;
    :cond_2
    const-string v3, "[\\t\\n\\r]+"

    const-string v5, " "

    invoke-virtual {v11, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 325
    const/4 v3, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v10, 0x1

    .line 327
    .local v10, isRecurring:Z
    :goto_2
    if-eqz v10, :cond_3

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 330
    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Id: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Display Name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Location: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AllDay: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IsRecurring: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    move-wide/from16 v0, v17

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " End: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 333
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12, v11}, Lcom/waze/navigate/DriveToNativeManager;->CalendarAddressShouldIgnore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 334
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Calendar Id: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Is in Ignore list (Display Name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Location: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 335
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 325
    .end local v10           #isRecurring:Z
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 337
    .restart local v10       #isRecurring:Z
    :cond_5
    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, v19

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 341
    .local v19, startDate:Ljava/util/Date;
    invoke-static/range {v19 .. v19}, Lcom/waze/navigate/DriveToNativeManager;->isToday(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 343
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 344
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 348
    .local v16, formatter:Ljava/text/SimpleDateFormat;
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 360
    .end local v16           #formatter:Ljava/text/SimpleDateFormat;
    .local v13, displayName:Ljava/lang/String;
    :goto_4
    const-wide/16 v5, 0x3e8

    div-long v5, v17, v5

    const-wide/16 v7, 0x3e8

    div-long v7, v14, v7

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v13}, Lcom/waze/navigate/DriveToNativeManager;->addCalendarEvent(Ljava/lang/String;JJZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 346
    .end local v13           #displayName:Ljava/lang/String;
    :cond_6
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v3, "h:mm a"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v16       #formatter:Ljava/text/SimpleDateFormat;
    goto :goto_3

    .line 354
    .end local v16           #formatter:Ljava/text/SimpleDateFormat;
    :cond_7
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v16

    .line 355
    .local v16, formatter:Ljava/text/DateFormat;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .restart local v13       #displayName:Ljava/lang/String;
    goto :goto_4
.end method

.method private native logAnalyticsOnGoNTV(I)V
.end method

.method private navigateAnalytics(Lcom/waze/navigate/AddressItem;)V
    .locals 4
    .parameter "aiToGo"

    .prologue
    const/4 v3, 0x3

    .line 957
    invoke-virtual {p1}, Lcom/waze/navigate/AddressItem;->getCategory()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 958
    sget-object v0, Lcom/waze/navigate/DriveToNativeManager;->instance:Lcom/waze/navigate/DriveToNativeManager;

    new-instance v1, Lcom/waze/navigate/DriveToNativeManager$31;

    invoke-direct {v1, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$31;-><init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/AddressItem;)V

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->getTopTenFavorites(Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V

    .line 978
    :cond_0
    invoke-virtual {p1}, Lcom/waze/navigate/AddressItem;->getCategory()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 980
    const-string v0, "NAVIGATE"

    .line 981
    const-string v1, "SOURCE"

    .line 982
    const-string v2, "SEARCH"

    .line 980
    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    :cond_1
    invoke-virtual {p1}, Lcom/waze/navigate/AddressItem;->getCategory()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 985
    const-string v0, "NAVIGATE"

    .line 986
    const-string v1, "SOURCE"

    .line 987
    const-string v2, "SEARCH"

    .line 985
    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    :cond_2
    invoke-virtual {p1}, Lcom/waze/navigate/AddressItem;->getCategory()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 991
    invoke-virtual {p1}, Lcom/waze/navigate/AddressItem;->getCategoryDesc()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 992
    const-string v0, "NAVIGATE"

    .line 993
    const-string v1, "SOURCE"

    .line 994
    const-string v2, "CATEGORIES"

    .line 992
    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    :cond_3
    invoke-virtual {p1}, Lcom/waze/navigate/AddressItem;->getCategory()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 997
    const-string v0, "NAVIGATE"

    .line 998
    const-string v1, "SOURCE"

    const-string v2, "HISTORY"

    .line 997
    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    :cond_4
    return-void
.end method

.method private native navigateNTV(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native navigate_waypoint_clearNTV()V
.end method

.method private native notifyAddressItemClickedNTV(I)V
.end method

.method private native notifyAddressItemNavigateNTV(I)V
.end method

.method private native notifyAddressItemShownInNavigateNTV(I)V
.end method

.method private native notifyAddressItemShownNTV(IZ)V
.end method

.method private native onAlternativeRoutesClosedNTV()V
.end method

.method private native openPrivateMessageNTV(I)V
.end method

.method public static openSearchActivity(Ljava/lang/String;Z)V
    .locals 5
    .parameter "address"
    .parameter "autoNav"

    .prologue
    .line 1131
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "openSearchActivity running in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1131
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$37;

    .line 1134
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    .line 1133
    invoke-direct {v0, v1, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$37;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/String;Z)V

    .line 1161
    .local v0, loadUIDataEvent:Lcom/waze/ifs/async/RunnableCallback;
    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1162
    return-void
.end method

.method private native removeDeparturePoiNTV()V
.end method

.method private native requestRouteNTV(Z)V
.end method

.method private native requestStopPointNTV(I)V
.end method

.method public static searchFail(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter "provider"
    .parameter "errMsg"
    .parameter "canRetry"

    .prologue
    .line 1299
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "searchResults failure. Provider: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1302
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "provider"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    const-string v1, "errMsg"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    const-string v1, "canRetry"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1306
    sget-object v1, Lcom/waze/navigate/DriveToNativeManager;->instance:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, v1, Lcom/waze/navigate/DriveToNativeManager;->handlers:Lcom/waze/ifs/async/UpdateHandlers;

    sget v2, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_FAIL:I

    invoke-virtual {v1, v2, v0}, Lcom/waze/ifs/async/UpdateHandlers;->sendUpdateMessage(ILandroid/os/Bundle;)V

    .line 1307
    return-void
.end method

.method private native searchNTV(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native searchNearbyStationsNTV()V
.end method

.method public static searchResults(Ljava/lang/String;Lcom/waze/navigate/AddressItem;)V
    .locals 3
    .parameter "provider"
    .parameter "ai"

    .prologue
    .line 1165
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1166
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "provider"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    const-string v1, "address_item"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1169
    sget-object v1, Lcom/waze/navigate/DriveToNativeManager;->instance:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, v1, Lcom/waze/navigate/DriveToNativeManager;->handlers:Lcom/waze/ifs/async/UpdateHandlers;

    sget v2, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    invoke-virtual {v1, v2, v0}, Lcom/waze/ifs/async/UpdateHandlers;->sendUpdateMessage(ILandroid/os/Bundle;)V

    .line 1170
    return-void
.end method

.method private native selectAlternativeRouteNTV(I)V
.end method

.method private native setAddressOptionsViewNTV()V
.end method

.method private native setAlternativeRoutesViewNTV()V
.end method

.method private native setMapPreviewNTV(II)V
.end method

.method private native setMeetingNTV(Ljava/lang/String;)V
.end method

.method private native setProductPricesNTV(I[F[II)V
.end method

.method private native setRoadClosureMapNTV()V
.end method

.method private native setScreenFreezeNTV(Z)V
.end method

.method private native setSearchMapViewNTV()V
.end method

.method private native setSearchModeNTV(Z)V
.end method

.method private native setSearchResultPinsNTV(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native setShareMapModeNTV(Z)V
.end method

.method private native setStartPointNTV()V
.end method

.method private native setStopPointNTV(Z)V
.end method

.method private native setStopPointPreviewNTV(III)V
.end method

.method private native showOnMapNTV(II)V
.end method

.method private storeAddressItemInt(Lcom/waze/navigate/AddressItem;)Ljava/lang/String;
    .locals 16
    .parameter "ai"

    .prologue
    .line 1021
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "store ai event running in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ai= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-virtual/range {p1 .. p1}, Lcom/waze/navigate/AddressItem;->getLocationX()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1024
    .local v9, x:I
    invoke-virtual/range {p1 .. p1}, Lcom/waze/navigate/AddressItem;->getLocationY()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1025
    .local v10, y:I
    const-string v12, ""

    .line 1026
    .local v12, venueContext:Ljava/lang/String;
    const-string v13, ""

    .line 1027
    .local v13, routingContext:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    if-eqz v1, :cond_1

    .line 1028
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->context:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1029
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v12, v1, Lcom/waze/reports/VenueData;->context:Ljava/lang/String;

    .line 1031
    :cond_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->RoutingContext:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1032
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v13, v1, Lcom/waze/reports/VenueData;->RoutingContext:Ljava/lang/String;

    .line 1036
    :cond_1
    const/4 v14, 0x0

    .line 1037
    .local v14, icon:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/waze/navigate/AddressItem;->hasIcon()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1038
    invoke-virtual/range {p1 .. p1}, Lcom/waze/navigate/AddressItem;->getIcon()Ljava/lang/String;

    move-result-object v14

    .line 1044
    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/waze/navigate/AddressItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/waze/navigate/AddressItem;->getCategory()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/waze/navigate/AddressItem;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/waze/navigate/AddressItem;->getStreet()Ljava/lang/String;

    move-result-object v5

    .line 1045
    invoke-virtual/range {p1 .. p1}, Lcom/waze/navigate/AddressItem;->getHouse()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/waze/navigate/AddressItem;->getState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    move-object/from16 v1, p0

    .line 1044
    invoke-direct/range {v1 .. v14}, Lcom/waze/navigate/DriveToNativeManager;->storeAddressItemNTV(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1047
    .local v15, id:Ljava/lang/String;
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "after storeAddressItemNTV in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    return-object v15

    .line 1039
    .end local v15           #id:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/waze/navigate/AddressItem;->mPreviewIcon:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/waze/navigate/AddressItem;->mPreviewIcon:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1040
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/waze/navigate/AddressItem;->mPreviewIcon:Ljava/lang/String;

    goto :goto_0
.end method

.method private native storeAddressItemNTV(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native unsetAddressOptionsViewNTV()V
.end method

.method private native unsetMapPreviewNTV()V
.end method

.method private native unsetMeetingNTV()V
.end method

.method private native unsetRoadClosureViewNTV()V
.end method

.method private native unsetSearchMapViewNTV()V
.end method

.method private native unsetStopPointPreviewNTV()V
.end method

.method private native updateAddressItemAppDataNTV(Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;)V
.end method

.method public static updateEta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "provider"
    .parameter "distance"
    .parameter "id"

    .prologue
    .line 1250
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1251
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "provider"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    const-string v1, "distance"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    sget-object v1, Lcom/waze/navigate/DriveToNativeManager;->instance:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, v1, Lcom/waze/navigate/DriveToNativeManager;->handlers:Lcom/waze/ifs/async/UpdateHandlers;

    sget v2, Lcom/waze/navigate/DriveToNativeManager;->UH_ETA:I

    invoke-virtual {v1, v2, v0}, Lcom/waze/ifs/async/UpdateHandlers;->sendUpdateMessage(ILandroid/os/Bundle;)V

    .line 1265
    return-void
.end method

.method private native zoomOnMapNTV(III)V
.end method


# virtual methods
.method public CalendarAddressRemove(Ljava/lang/String;)V
    .locals 1
    .parameter "MeetingId"

    .prologue
    .line 1224
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$43;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$43;-><init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1230
    return-void
.end method

.method public CalendarAddressShouldIgnore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "MeetingId"
    .parameter "name"
    .parameter "location"

    .prologue
    .line 1908
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/navigate/DriveToNativeManager;->CalendarAddressShouldIgnoreNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public CalendarAddressVerified(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "Address"
    .parameter "Lon"
    .parameter "Lat"
    .parameter "MeetingId"
    .parameter "venue"

    .prologue
    .line 1214
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$42;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/waze/navigate/DriveToNativeManager$42;-><init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1220
    return-void
.end method

.method public CalendarAddressVerifiedByIndex(ILjava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "MeetingId"

    .prologue
    .line 1205
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$41;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/navigate/DriveToNativeManager$41;-><init>(Lcom/waze/navigate/DriveToNativeManager;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1211
    return-void
.end method

.method public InitMeeting(Ljava/lang/String;)V
    .locals 1
    .parameter "sMeetingID"

    .prologue
    .line 1696
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$70;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$70;-><init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1702
    return-void
.end method

.method public OpenAlternativeRoutes()V
    .locals 1

    .prologue
    .line 1478
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 1479
    .local v0, mainActivity:Lcom/waze/MainActivity;
    if-nez v0, :cond_0

    .line 1483
    :goto_0
    return-void

    .line 1482
    :cond_0
    invoke-virtual {v0}, Lcom/waze/MainActivity;->startRoutesActivity()V

    goto :goto_0
.end method

.method public OpenCalendarVerifyScreen(Lcom/waze/navigate/AddressItem;)V
    .locals 1
    .parameter "ai"

    .prologue
    .line 933
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$30;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$30;-><init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/AddressItem;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 954
    return-void
.end method

.method public OpenFriendOnTheWayPopUp(Lcom/waze/user/FriendUserData;I)V
    .locals 3
    .parameter "friendLocation"
    .parameter "iTimeOut"

    .prologue
    .line 1269
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 1270
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-nez v1, :cond_1

    .line 1283
    :cond_0
    :goto_0
    return-void

    .line 1274
    :cond_1
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 1275
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v0, :cond_0

    .line 1278
    new-instance v2, Lcom/waze/navigate/DriveToNativeManager$45;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/waze/navigate/DriveToNativeManager$45;-><init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/LayoutManager;Lcom/waze/user/FriendUserData;I)V

    invoke-static {v2}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public OpenVerifyEvent(Lcom/waze/navigate/AddressItem;)V
    .locals 1
    .parameter "ad"

    .prologue
    .line 1287
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$46;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$46;-><init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/AddressItem;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1296
    return-void
.end method

.method public StoreAddressItem(Lcom/waze/navigate/AddressItem;)V
    .locals 5
    .parameter "ai"

    .prologue
    .line 1004
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "store ai running in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$32;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$32;-><init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/AddressItem;)V

    .line 1016
    .local v0, loadDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1017
    return-void
.end method

.method public VerifyEventByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 6
    .parameter "index"
    .parameter "MeetingId"
    .parameter "Id"
    .parameter "bToDrive"

    .prologue
    .line 1192
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$40;

    move-object v1, p0

    move-object v2, p4

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/waze/navigate/DriveToNativeManager$40;-><init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/Boolean;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1202
    return-void
.end method

.method public VerifyEventWithNoAddress(Ljava/lang/String;)V
    .locals 1
    .parameter "MeetingId"

    .prologue
    .line 1182
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$39;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$39;-><init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1188
    return-void
.end method

.method public cancelStopPoint()V
    .locals 1

    .prologue
    .line 1872
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$88;

    invoke-direct {v0, p0}, Lcom/waze/navigate/DriveToNativeManager$88;-><init>(Lcom/waze/navigate/DriveToNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1878
    return-void
.end method

.method public cancelStopPointAndRemoveDeparturePoi()V
    .locals 1

    .prologue
    .line 1842
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$85;

    invoke-direct {v0, p0}, Lcom/waze/navigate/DriveToNativeManager$85;-><init>(Lcom/waze/navigate/DriveToNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1849
    return-void
.end method

.method public centerMapInAddressOptionsView(IIIZLjava/lang/String;)V
    .locals 7
    .parameter "index"
    .parameter "longitude"
    .parameter "latitude"
    .parameter "setScreen"
    .parameter "icon"

    .prologue
    .line 1781
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$79;

    move-object v1, p0

    move v2, p4

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/waze/navigate/DriveToNativeManager$79;-><init>(Lcom/waze/navigate/DriveToNativeManager;ZIIILjava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1791
    return-void
.end method

.method public drive(Ljava/lang/String;Z)V
    .locals 1
    .parameter "MeetingId"
    .parameter "bIsShare"

    .prologue
    .line 1233
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$44;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/navigate/DriveToNativeManager$44;-><init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1239
    return-void
.end method

.method public eraseAddressItem(Lcom/waze/navigate/AddressItem;)V
    .locals 5
    .parameter "ai"

    .prologue
    .line 1072
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "erase ai running in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1073
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1072
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$34;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$34;-><init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/AddressItem;)V

    .line 1091
    .local v0, loadDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1092
    return-void
.end method

.method public fetchCalendarEvents()I
    .locals 15

    .prologue
    const/4 v3, 0x0

    const/4 v14, 0x0

    .line 366
    const/4 v8, 0x0

    .line 367
    .local v8, count:I
    const-string v0, "content://com.android.calendar/instances/when"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 369
    .local v7, builder:Landroid/net/Uri$Builder;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 371
    .local v12, now:J
    const/4 v10, 0x3

    .line 372
    .local v10, days:I
    const-wide/32 v0, 0x36ee80

    sub-long v0, v12, v0

    invoke-static {v7, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 373
    const-wide/32 v0, 0x5265c00

    int-to-long v4, v10

    mul-long/2addr v0, v4

    add-long/2addr v0, v12

    invoke-static {v7, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 375
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v14

    const/4 v4, 0x1

    const-string v5, "title"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "begin"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "end"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "allDay"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "eventLocation"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "rrule"

    aput-object v5, v2, v4

    .line 376
    const-string v5, "startDay ASC, startMinute ASC"

    move-object v4, v3

    .line 375
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 377
    .local v9, cursors:Landroid/database/Cursor;
    if-nez v9, :cond_0

    move v0, v14

    .line 399
    :goto_0
    return v0

    .line 379
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 381
    const-string v0, "CALENDAR_READ"

    .line 382
    const-string v1, "COUNT"

    .line 383
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 381
    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;I)V

    .line 384
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 386
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->MaxCalendarEntriesNTV()I

    move-result v11

    .line 388
    .local v11, max:I
    invoke-direct {p0, v9}, Lcom/waze/navigate/DriveToNativeManager;->loadEvent(Landroid/database/Cursor;)Z

    move-result v6

    .line 389
    .local v6, added:Z
    if-eqz v6, :cond_1

    .line 390
    add-int/lit8 v8, v8, 0x1

    .line 392
    :cond_1
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    if-lt v8, v11, :cond_3

    .end local v6           #added:Z
    .end local v11           #max:I
    :cond_2
    move v0, v8

    .line 399
    goto :goto_0

    .line 393
    .restart local v6       #added:Z
    .restart local v11       #max:I
    :cond_3
    invoke-direct {p0, v9}, Lcom/waze/navigate/DriveToNativeManager;->loadEvent(Landroid/database/Cursor;)Z

    move-result v6

    .line 394
    if-eqz v6, :cond_1

    .line 395
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public forceWidgetRefresh()V
    .locals 1

    .prologue
    .line 1052
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetProvider;->isWidgetEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$33;

    invoke-direct {v0, p0}, Lcom/waze/navigate/DriveToNativeManager$33;-><init>(Lcom/waze/navigate/DriveToNativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1068
    :cond_0
    return-void
.end method

.method public getAddFriendsData(Lcom/waze/navigate/DriveToNativeManager$AddFriendsListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 215
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$3;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$3;-><init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$AddFriendsListener;)V

    .line 232
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method

.method public getAddressItemAppData(Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$ObjectListener;)V
    .locals 2
    .parameter "id"
    .parameter "l"

    .prologue
    .line 1095
    if-nez p1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/waze/navigate/DriveToNativeManager$ObjectListener;->onComplete(Ljava/lang/Object;)V

    .line 1097
    :cond_0
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$35;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/navigate/DriveToNativeManager$35;-><init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$ObjectListener;)V

    .line 1115
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1116
    return-void
.end method

.method public getAlternativeRoutes(Lcom/waze/navigate/DriveToNativeManager$AlternativeRoutesListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1436
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$54;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$54;-><init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$AlternativeRoutesListener;)V

    .line 1450
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1451
    return-void
.end method

.method public getAutoCompleteAdsResult(Lcom/waze/navigate/DriveToNativeManager$AutoCompleteAdsResult;Ljava/lang/String;)V
    .locals 1
    .parameter "listener"
    .parameter "query"

    .prologue
    .line 652
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$17;

    invoke-direct {v0, p0, p2, p1}, Lcom/waze/navigate/DriveToNativeManager$17;-><init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$AutoCompleteAdsResult;)V

    .line 665
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 666
    return-void
.end method

.method public getAutoCompleteAdsResultNative(Ljava/lang/String;)Lcom/waze/autocomplete/PlaceData;
    .locals 1
    .parameter "query"

    .prologue
    .line 670
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->GetAutoCompleteAds(Ljava/lang/String;)Lcom/waze/autocomplete/PlaceData;

    move-result-object v0

    return-object v0
.end method

.method public getAutoCompleteData(Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V
    .locals 5
    .parameter "callback"

    .prologue
    .line 797
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getHistory running in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$23;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$23;-><init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V

    .line 813
    .local v0, loadDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 814
    return-void
.end method

.method public getCategories(Lcom/waze/navigate/DriveToNativeManager$CategoriesListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 554
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$12;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$12;-><init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$CategoriesListener;)V

    .line 571
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 572
    return-void
.end method

.method public native getDestinationIdNTV()Ljava/lang/String;
.end method

.method public getEndDriveData(Lcom/waze/navigate/DriveToNativeManager$EndDriveListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 173
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$1;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$1;-><init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$EndDriveListener;)V

    .line 190
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 191
    return-void
.end method

.method public getEventsOnRoute(Lcom/waze/navigate/DriveToNativeManager$EventsOnRouteListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1371
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$50;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$50;-><init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$EventsOnRouteListener;)V

    .line 1389
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1390
    return-void
.end method

.method public getFacebookFriendsList(Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 512
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$10;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$10;-><init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V

    .line 529
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 530
    return-void
.end method

.method public getFavorites(Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;Z)V
    .locals 5
    .parameter "callback"
    .parameter "bIsAddFavouriteOptional"

    .prologue
    .line 675
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getFavorites running in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 676
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 675
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$18;

    invoke-direct {v0, p0, p2, p1}, Lcom/waze/navigate/DriveToNativeManager$18;-><init>(Lcom/waze/navigate/DriveToNativeManager;ZLcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V

    .line 695
    .local v0, loadDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 696
    return-void
.end method

.method public native getFriendImageNTV(II)Ljava/lang/String;
.end method

.method public getFriendsDriveData(Lcom/waze/navigate/DriveToNativeManager$EndDriveListener;Ljava/lang/String;)V
    .locals 1
    .parameter "listener"
    .parameter "sMeetingID"

    .prologue
    .line 194
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/waze/navigate/DriveToNativeManager$2;-><init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$EndDriveListener;)V

    .line 211
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method

.method public getFriendsListData(Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 425
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$6;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$6;-><init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V

    .line 442
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 443
    return-void
.end method

.method public getFriendsSharedPlaces(ILcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V
    .locals 5
    .parameter "friendId"
    .parameter "callback"

    .prologue
    .line 774
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getFriendsSharedPlaces running in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$22;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/navigate/DriveToNativeManager$22;-><init>(Lcom/waze/navigate/DriveToNativeManager;ILcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V

    .line 792
    .local v0, loadDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 793
    return-void
.end method

.method public getHistory(Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V
    .locals 5
    .parameter "callback"

    .prologue
    .line 749
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getHistory running in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 750
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 749
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$21;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$21;-><init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V

    .line 769
    .local v0, loadDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 770
    return-void
.end method

.method public getHome(Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V
    .locals 5
    .parameter "callback"

    .prologue
    .line 700
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getFavorites running in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 701
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 700
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$19;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$19;-><init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V

    .line 720
    .local v0, loadDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 721
    return-void
.end method

.method public getIdsMatchData(Lcom/waze/navigate/DriveToNativeManager$IdsMatchListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 236
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$4;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$4;-><init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$IdsMatchListener;)V

    .line 253
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method public getLocationData(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/waze/navigate/DriveToNativeManager$LocationDataListener;Ljava/lang/String;)V
    .locals 7
    .parameter "type"
    .parameter "locationX"
    .parameter "locationY"
    .parameter "listener"
    .parameter "Index"

    .prologue
    .line 1335
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$48;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/waze/navigate/DriveToNativeManager$48;-><init>(Lcom/waze/navigate/DriveToNativeManager;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$LocationDataListener;)V

    .line 1354
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1355
    return-void
.end method

.method public getMajorEventsOnRoute(Lcom/waze/navigate/DriveToNativeManager$MajorEventsOnRouteListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1393
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$51;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$51;-><init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$MajorEventsOnRouteListener;)V

    .line 1411
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1412
    return-void
.end method

.method public getMapCenter()V
    .locals 1

    .prologue
    .line 1358
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$49;

    invoke-direct {v0, p0}, Lcom/waze/navigate/DriveToNativeManager$49;-><init>(Lcom/waze/navigate/DriveToNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1368
    return-void
.end method

.method public native getMyShareDriveUsersCountNTV()I
.end method

.method public getMySharedDriveUsers(Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 468
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$8;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$8;-><init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V

    .line 485
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 486
    return-void
.end method

.method public getNearbyStations(Lcom/waze/navigate/DriveToNativeManager$NearbyStationsListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 614
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$15;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$15;-><init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$NearbyStationsListener;)V

    .line 631
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 632
    return-void
.end method

.method public getNumberOfFriendsDriving(Lcom/waze/navigate/DriveToNativeManager$NumberOfFriendsDrivingListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 404
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$5;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$5;-><init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$NumberOfFriendsDrivingListener;)V

    .line 421
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 422
    return-void
.end method

.method public getPriceFormat(Lcom/waze/navigate/DriveToNativeManager$PriceFormatListener;Ljava/lang/String;)V
    .locals 1
    .parameter "listener"
    .parameter "prodId"

    .prologue
    .line 635
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$16;

    invoke-direct {v0, p0, p2, p1}, Lcom/waze/navigate/DriveToNativeManager$16;-><init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$PriceFormatListener;)V

    .line 648
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 649
    return-void
.end method

.method public getProduct(ILcom/waze/navigate/DriveToNativeManager$ProductListener;)V
    .locals 1
    .parameter "index"
    .parameter "listener"

    .prologue
    .line 575
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/navigate/DriveToNativeManager$13;-><init>(Lcom/waze/navigate/DriveToNativeManager;ILcom/waze/navigate/DriveToNativeManager$ProductListener;)V

    .line 592
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 593
    return-void
.end method

.method public getRemovedFriendsData(Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 533
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$11;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$11;-><init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V

    .line 550
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 551
    return-void
.end method

.method public getSearchEngines(Ljava/lang/String;Lcom/waze/navigate/DriveToGetSearchEnginesCallback;)V
    .locals 5
    .parameter "category"
    .parameter "callback"

    .prologue
    .line 1557
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSearchEngines running in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1558
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1557
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$59;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/navigate/DriveToNativeManager$59;-><init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;Lcom/waze/navigate/DriveToGetSearchEnginesCallback;)V

    .line 1580
    .local v0, loadDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1581
    return-void
.end method

.method public getSearchResultsEta(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 1899
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$91;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$91;-><init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1905
    return-void
.end method

.method public getShareFriendsListData(IILcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V
    .locals 1
    .parameter "locX"
    .parameter "locY"
    .parameter "listener"

    .prologue
    .line 447
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/navigate/DriveToNativeManager$7;-><init>(Lcom/waze/navigate/DriveToNativeManager;IILcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V

    .line 464
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 465
    return-void
.end method

.method public getSortPreferences(Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$SortPreferencesListener;)V
    .locals 1
    .parameter "category"
    .parameter "listener"

    .prologue
    .line 597
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/navigate/DriveToNativeManager$14;-><init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$SortPreferencesListener;)V

    .line 610
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 611
    return-void
.end method

.method public getTopTenFavorites(Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V
    .locals 5
    .parameter "callback"

    .prologue
    .line 1455
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getTopTenFavorites running in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1456
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1455
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$55;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$55;-><init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V

    .line 1474
    .local v0, loadDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1475
    return-void
.end method

.method public getUsersWithDriveSharing(ZZZLcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V
    .locals 6
    .parameter "byMe"
    .parameter "withMe"
    .parameter "watchingMe"
    .parameter "listener"

    .prologue
    .line 490
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$9;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/waze/navigate/DriveToNativeManager$9;-><init>(Lcom/waze/navigate/DriveToNativeManager;ZZZLcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V

    .line 507
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 508
    return-void
.end method

.method public getWork(Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V
    .locals 5
    .parameter "callback"

    .prologue
    .line 725
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getFavorites running in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 726
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 725
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$20;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$20;-><init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V

    .line 745
    .local v0, loadDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 746
    return-void
.end method

.method public highlightRoute(I)V
    .locals 1
    .parameter "route"

    .prologue
    .line 1890
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$90;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$90;-><init>(Lcom/waze/navigate/DriveToNativeManager;I)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1896
    return-void
.end method

.method public isDayMode()Z
    .locals 1

    .prologue
    .line 1912
    invoke-direct {p0}, Lcom/waze/navigate/DriveToNativeManager;->isDayModeNTV()Z

    move-result v0

    return v0
.end method

.method public native isDrivingHomeNTV()Z
.end method

.method public native isStopPointSearchNTV()Z
.end method

.method public navigate(Lcom/waze/navigate/AddressItem;Lcom/waze/navigate/DriveToNavigateCallback;)V
    .locals 1
    .parameter "ai"
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 887
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/waze/navigate/DriveToNativeManager;->navigate(Lcom/waze/navigate/AddressItem;Lcom/waze/navigate/DriveToNavigateCallback;ZZ)V

    .line 888
    return-void
.end method

.method public navigate(Lcom/waze/navigate/AddressItem;Lcom/waze/navigate/DriveToNavigateCallback;ZZ)V
    .locals 1
    .parameter "ai"
    .parameter "callback"
    .parameter "onGoAnalytics"
    .parameter "storeAddress"

    .prologue
    .line 892
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$29;

    invoke-direct {v0, p0, p1, p4, p3}, Lcom/waze/navigate/DriveToNativeManager$29;-><init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/AddressItem;ZZ)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 928
    invoke-direct {p0, p1}, Lcom/waze/navigate/DriveToNativeManager;->navigateAnalytics(Lcom/waze/navigate/AddressItem;)V

    .line 929
    return-void
.end method

.method public notifyAddressItemClicked(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 874
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$28;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$28;-><init>(Lcom/waze/navigate/DriveToNativeManager;I)V

    .line 880
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 881
    return-void
.end method

.method public notifyAddressItemNavigate(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 864
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$27;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$27;-><init>(Lcom/waze/navigate/DriveToNativeManager;I)V

    .line 870
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 871
    return-void
.end method

.method public notifyAddressItemShown(IZ)V
    .locals 1
    .parameter "index"
    .parameter "isItemSeenAlready"

    .prologue
    .line 844
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$25;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/navigate/DriveToNativeManager$25;-><init>(Lcom/waze/navigate/DriveToNativeManager;IZ)V

    .line 850
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 851
    return-void
.end method

.method public notifyAddressItemShownBeforeNavigate(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 854
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$26;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$26;-><init>(Lcom/waze/navigate/DriveToNativeManager;I)V

    .line 860
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 861
    return-void
.end method

.method public onAlternativeRoutesClosed()V
    .locals 1

    .prologue
    .line 1621
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$64;

    invoke-direct {v0, p0}, Lcom/waze/navigate/DriveToNativeManager$64;-><init>(Lcom/waze/navigate/DriveToNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1627
    return-void
.end method

.method public onVenuePinWaitForVenuePreview()V
    .locals 2

    .prologue
    .line 1310
    sget v0, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    new-instance v1, Lcom/waze/navigate/DriveToNativeManager$47;

    invoke-direct {v1, p0}, Lcom/waze/navigate/DriveToNativeManager$47;-><init>(Lcom/waze/navigate/DriveToNativeManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 1331
    return-void
.end method

.method public openPrivateMessage(I)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 1173
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$38;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$38;-><init>(Lcom/waze/navigate/DriveToNativeManager;I)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1179
    return-void
.end method

.method public refreshAddressItemsIconsOnSearchActivity(ILjava/lang/String;)V
    .locals 3
    .parameter "position"
    .parameter "icon"

    .prologue
    .line 1532
    move v1, p1

    .line 1533
    .local v1, finalPosition:I
    move-object v0, p2

    .line 1535
    .local v0, finalIcon:Ljava/lang/String;
    new-instance v2, Lcom/waze/navigate/DriveToNativeManager$58;

    invoke-direct {v2, p0, v1, v0}, Lcom/waze/navigate/DriveToNativeManager$58;-><init>(Lcom/waze/navigate/DriveToNativeManager;ILjava/lang/String;)V

    .line 1551
    .local v2, refreshViewEvent:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1552
    return-void
.end method

.method public refreshIconsOnCategoriesActivity()V
    .locals 1

    .prologue
    .line 1511
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$57;

    invoke-direct {v0, p0}, Lcom/waze/navigate/DriveToNativeManager$57;-><init>(Lcom/waze/navigate/DriveToNativeManager;)V

    .line 1527
    .local v0, refreshViewEvent:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1528
    return-void
.end method

.method public refreshSearchEnginesIconsOnSearchActivity(Ljava/lang/String;)V
    .locals 2
    .parameter "searchEngineName"

    .prologue
    .line 1487
    move-object v0, p1

    .line 1489
    .local v0, finalSearchEngineName:Ljava/lang/String;
    new-instance v1, Lcom/waze/navigate/DriveToNativeManager$56;

    invoke-direct {v1, p0, v0}, Lcom/waze/navigate/DriveToNativeManager$56;-><init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)V

    .line 1506
    .local v1, refreshViewEvent:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1507
    return-void
.end method

.method public requestRoute(Z)V
    .locals 1
    .parameter "isTripServerResults"

    .prologue
    .line 1415
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$52;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$52;-><init>(Lcom/waze/navigate/DriveToNativeManager;Z)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1421
    return-void
.end method

.method public requestStopPoint(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1630
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$65;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$65;-><init>(Lcom/waze/navigate/DriveToNativeManager;I)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1636
    return-void
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/waze/navigate/DriveToSearchCallback;)V
    .locals 7
    .parameter "category"
    .parameter "provider"
    .parameter "searchStr"
    .parameter "initialSearch"
    .parameter "callback"

    .prologue
    .line 819
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "search running in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 820
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 819
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$24;

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/waze/navigate/DriveToNativeManager$24;-><init>(Lcom/waze/navigate/DriveToNativeManager;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/waze/navigate/DriveToSearchCallback;)V

    .line 840
    .local v0, loadDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 841
    return-void
.end method

.method public searchNearbyStations()V
    .locals 1

    .prologue
    .line 1881
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$89;

    invoke-direct {v0, p0}, Lcom/waze/navigate/DriveToNativeManager$89;-><init>(Lcom/waze/navigate/DriveToNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1887
    return-void
.end method

.method public selectAlternativeRoute(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1584
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$60;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$60;-><init>(Lcom/waze/navigate/DriveToNativeManager;I)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1590
    return-void
.end method

.method public setAddressOptionsView(IIIZ)V
    .locals 1
    .parameter "index"
    .parameter "longitude"
    .parameter "latitude"
    .parameter "icon"

    .prologue
    .line 1640
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$66;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/waze/navigate/DriveToNativeManager$66;-><init>(Lcom/waze/navigate/DriveToNativeManager;IIZ)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1651
    return-void
.end method

.method public setAlternativeRoutesView()V
    .locals 1

    .prologue
    .line 1603
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$62;

    invoke-direct {v0, p0}, Lcom/waze/navigate/DriveToNativeManager$62;-><init>(Lcom/waze/navigate/DriveToNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1609
    return-void
.end method

.method public setMapMode(Z)V
    .locals 1
    .parameter "bIsMapUpdates"

    .prologue
    .line 1706
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$71;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$71;-><init>(Lcom/waze/navigate/DriveToNativeManager;Z)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1712
    return-void
.end method

.method public setMapPreview(II)V
    .locals 1
    .parameter "longitude"
    .parameter "latitude"

    .prologue
    .line 1663
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$68;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/navigate/DriveToNativeManager$68;-><init>(Lcom/waze/navigate/DriveToNativeManager;II)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1669
    return-void
.end method

.method public setMeeting(Ljava/lang/String;)V
    .locals 1
    .parameter "sMeetingID"

    .prologue
    .line 1715
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$72;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$72;-><init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1721
    return-void
.end method

.method public setProductPrices(I[F[II)V
    .locals 6
    .parameter "index"
    .parameter "updatedPrices"
    .parameter "updated"
    .parameter "size"

    .prologue
    .line 1594
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$61;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/waze/navigate/DriveToNativeManager$61;-><init>(Lcom/waze/navigate/DriveToNativeManager;I[F[II)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1600
    return-void
.end method

.method public setRoadClosureMap()V
    .locals 1

    .prologue
    .line 1733
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$74;

    invoke-direct {v0, p0}, Lcom/waze/navigate/DriveToNativeManager$74;-><init>(Lcom/waze/navigate/DriveToNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1740
    return-void
.end method

.method public setScreenFreeze(Z)V
    .locals 1
    .parameter "bFreeze"

    .prologue
    .line 1654
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$67;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$67;-><init>(Lcom/waze/navigate/DriveToNativeManager;Z)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1660
    return-void
.end method

.method public setSearchMapView()V
    .locals 1

    .prologue
    .line 1833
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$84;

    invoke-direct {v0, p0}, Lcom/waze/navigate/DriveToNativeManager$84;-><init>(Lcom/waze/navigate/DriveToNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1839
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 1
    .parameter "bIsSearchBar"

    .prologue
    .line 1853
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$86;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$86;-><init>(Lcom/waze/navigate/DriveToNativeManager;Z)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1859
    return-void
.end method

.method public setSearchResultPins(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "category"
    .parameter "provider"

    .prologue
    .line 1824
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$83;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/navigate/DriveToNativeManager$83;-><init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1830
    return-void
.end method

.method public setStartPoint()V
    .locals 1

    .prologue
    .line 1753
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$76;

    invoke-direct {v0, p0}, Lcom/waze/navigate/DriveToNativeManager$76;-><init>(Lcom/waze/navigate/DriveToNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1759
    return-void
.end method

.method public setStopPoint(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1862
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$87;

    invoke-direct {v0, p0, p1}, Lcom/waze/navigate/DriveToNativeManager$87;-><init>(Lcom/waze/navigate/DriveToNativeManager;Z)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1868
    return-void
.end method

.method public setStopPointPreview(IIILjava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "longitude"
    .parameter "latitude"
    .parameter "icon"

    .prologue
    .line 1744
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$75;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/navigate/DriveToNativeManager$75;-><init>(Lcom/waze/navigate/DriveToNativeManager;III)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1750
    return-void
.end method

.method public setUpdateHandler(ILandroid/os/Handler;)V
    .locals 1
    .parameter "id"
    .parameter "h"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager;->handlers:Lcom/waze/ifs/async/UpdateHandlers;

    invoke-virtual {v0, p1, p2}, Lcom/waze/ifs/async/UpdateHandlers;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 137
    return-void
.end method

.method public showOnMap(II)V
    .locals 1
    .parameter "longitude"
    .parameter "latitude"

    .prologue
    .line 1762
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$77;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/navigate/DriveToNativeManager$77;-><init>(Lcom/waze/navigate/DriveToNativeManager;II)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1768
    return-void
.end method

.method public unsetAddressOptionsView()V
    .locals 1

    .prologue
    .line 1794
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$80;

    invoke-direct {v0, p0}, Lcom/waze/navigate/DriveToNativeManager$80;-><init>(Lcom/waze/navigate/DriveToNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1803
    return-void
.end method

.method public unsetAlternativeRoutesView()V
    .locals 1

    .prologue
    .line 1612
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$63;

    invoke-direct {v0, p0}, Lcom/waze/navigate/DriveToNativeManager$63;-><init>(Lcom/waze/navigate/DriveToNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1618
    return-void
.end method

.method public unsetMapPreview()V
    .locals 1

    .prologue
    .line 1672
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$69;

    invoke-direct {v0, p0}, Lcom/waze/navigate/DriveToNativeManager$69;-><init>(Lcom/waze/navigate/DriveToNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1678
    return-void
.end method

.method public unsetMeeting()V
    .locals 1

    .prologue
    .line 1724
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$73;

    invoke-direct {v0, p0}, Lcom/waze/navigate/DriveToNativeManager$73;-><init>(Lcom/waze/navigate/DriveToNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1730
    return-void
.end method

.method public unsetRoadClosureView()V
    .locals 1

    .prologue
    .line 1806
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$81;

    invoke-direct {v0, p0}, Lcom/waze/navigate/DriveToNativeManager$81;-><init>(Lcom/waze/navigate/DriveToNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1812
    return-void
.end method

.method public unsetSearchMapView()V
    .locals 1

    .prologue
    .line 1815
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$82;

    invoke-direct {v0, p0}, Lcom/waze/navigate/DriveToNativeManager$82;-><init>(Lcom/waze/navigate/DriveToNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1821
    return-void
.end method

.method public unsetUpdateHandler(ILandroid/os/Handler;)V
    .locals 1
    .parameter "id"
    .parameter "h"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager;->handlers:Lcom/waze/ifs/async/UpdateHandlers;

    invoke-virtual {v0, p1, p2}, Lcom/waze/ifs/async/UpdateHandlers;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 141
    return-void
.end method

.method public updateAddressItemAppData(Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;)V
    .locals 1
    .parameter "id"
    .parameter "appData"

    .prologue
    .line 1119
    if-nez p1, :cond_0

    .line 1127
    :goto_0
    return-void

    .line 1120
    :cond_0
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$36;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/navigate/DriveToNativeManager$36;-><init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public zoomOnMap(III)V
    .locals 1
    .parameter "longitude"
    .parameter "latitude"
    .parameter "scale"

    .prologue
    .line 1771
    new-instance v0, Lcom/waze/navigate/DriveToNativeManager$78;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/navigate/DriveToNativeManager$78;-><init>(Lcom/waze/navigate/DriveToNativeManager;III)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1777
    return-void
.end method
