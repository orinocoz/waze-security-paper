.class public final Lcom/waze/settings/SettingsSoundConstants;
.super Ljava/lang/Object;
.source "SettingsSoundConstants.java"


# static fields
.field public static final CFG_ARRAY_ROUTE_2_SPEAKER_ID:I = 0x0

.field public static final CFG_ARRAY_SOUND_PROMPTS_VOLUME_ID:I = 0x1

.field public static final CFG_ITEM_PROMPTS_VOLUME:Lcom/waze/ConfigItem; = null

.field public static final CFG_ITEM_ROUTE_2_SPEAKER:Lcom/waze/ConfigItem; = null

.field public static final CFG_ITEM_SOUND_DEVICE:Lcom/waze/ConfigItem; = null

.field public static final CFG_SOUND_DEVICES_CATEGORY:Ljava/lang/String; = "Sound"

.field public static final CFG_SOUND_DEVICES_NAME:Ljava/lang/String; = "Device Name"

.field public static final CFG_SOUND_LEVEL_NONE_VALUE:Ljava/lang/String; = "None"

.field public static final CFG_SOUND_PROMPTS_VOLUME_NAME:Ljava/lang/String; = "Prompts Volume"

.field public static final CFG_SOUND_ROUTE_2_SPEAKER_NAME:Ljava/lang/String; = "Route2Speaker"

.field public static final DEVICES:[Lcom/waze/strings/DisplayStrings; = null

.field public static final EXTRA_SELECTED_DEVICE:Ljava/lang/String; = "SELECTED_DEVICE"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/waze/strings/DisplayStrings;

    const/4 v1, 0x0

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SOUND_DEVICE_DEFAULT:Lcom/waze/strings/DisplayStrings;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 11
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SOUND_DEVICE_SPEAKER:Lcom/waze/strings/DisplayStrings;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 12
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SOUND_DEVICE_BT:Lcom/waze/strings/DisplayStrings;

    aput-object v2, v0, v1

    .line 10
    sput-object v0, Lcom/waze/settings/SettingsSoundConstants;->DEVICES:[Lcom/waze/strings/DisplayStrings;

    .line 24
    new-instance v0, Lcom/waze/ConfigItem;

    const-string v1, "Sound"

    .line 25
    const-string v2, "Device Name"

    const-string v3, ""

    .line 24
    invoke-direct {v0, v1, v2, v3}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/waze/settings/SettingsSoundConstants;->CFG_ITEM_SOUND_DEVICE:Lcom/waze/ConfigItem;

    .line 27
    new-instance v0, Lcom/waze/ConfigItem;

    const-string v1, "Sound"

    .line 28
    const-string v2, "Route2Speaker"

    const-string v3, ""

    .line 27
    invoke-direct {v0, v1, v2, v3}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/waze/settings/SettingsSoundConstants;->CFG_ITEM_ROUTE_2_SPEAKER:Lcom/waze/ConfigItem;

    .line 30
    new-instance v0, Lcom/waze/ConfigItem;

    const-string v1, "Sound"

    .line 31
    const-string v2, "Prompts Volume"

    const-string v3, ""

    .line 30
    invoke-direct {v0, v1, v2, v3}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/waze/settings/SettingsSoundConstants;->CFG_ITEM_PROMPTS_VOLUME:Lcom/waze/ConfigItem;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
