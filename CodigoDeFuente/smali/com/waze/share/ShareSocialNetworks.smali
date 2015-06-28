.class public final Lcom/waze/share/ShareSocialNetworks;
.super Ljava/lang/Object;
.source "ShareSocialNetworks.java"


# static fields
.field private static mNetsMenuValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/share/ShareSocialNetworks;->mNetsMenuValues:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/waze/share/ShareSocialNetworks;->mNetsMenuValues:[Ljava/lang/String;

    return-object v0
.end method

.method public static showNetsMenu(Landroid/app/Activity;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 33
    move-object v3, p0

    .line 34
    .local v3, parentActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    .line 35
    .local v2, nm:Lcom/waze/NativeManager;
    invoke-static {}, Lcom/waze/share/ShareNativeManager;->getInstance()Lcom/waze/share/ShareNativeManager;

    move-result-object v4

    .line 36
    .local v4, shareNativeMgr:Lcom/waze/share/ShareNativeManager;
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_SHARE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 37
    .local v5, title:Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, menuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/waze/share/ShareSocialNetworks$1;

    invoke-direct {v1, v3}, Lcom/waze/share/ShareSocialNetworks$1;-><init>(Landroid/app/Activity;)V

    .line 52
    .local v1, netsMenuListener:Lcom/waze/settings/SettingsDialogListener;
    invoke-virtual {v4}, Lcom/waze/share/ShareNativeManager;->getFBFeatureEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 53
    const-string v6, "Post to facebook"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    invoke-virtual {v4}, Lcom/waze/share/ShareNativeManager;->getFsqFeatureEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 57
    const-string v6, "Check in on Foursquare"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    sput-object v6, Lcom/waze/share/ShareSocialNetworks;->mNetsMenuValues:[Ljava/lang/String;

    .line 60
    sget-object v6, Lcom/waze/share/ShareSocialNetworks;->mNetsMenuValues:[Ljava/lang/String;

    invoke-static {p0, v5, v6, v1}, Lcom/waze/settings/SettingsUtils;->showSubmenu(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/waze/settings/SettingsDialogListener;)V

    .line 61
    return-void
.end method
