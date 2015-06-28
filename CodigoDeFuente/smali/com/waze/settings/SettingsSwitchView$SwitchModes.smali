.class final enum Lcom/waze/settings/SettingsSwitchView$SwitchModes;
.super Ljava/lang/Enum;
.source "SettingsSwitchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/settings/SettingsSwitchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SwitchModes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/waze/settings/SettingsSwitchView$SwitchModes;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHECKED:Lcom/waze/settings/SettingsSwitchView$SwitchModes;

.field private static final synthetic ENUM$VALUES:[Lcom/waze/settings/SettingsSwitchView$SwitchModes;

.field public static final enum UNCHECKED:Lcom/waze/settings/SettingsSwitchView$SwitchModes;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    const-string v1, "CHECKED"

    invoke-direct {v0, v1, v2}, Lcom/waze/settings/SettingsSwitchView$SwitchModes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/settings/SettingsSwitchView$SwitchModes;->CHECKED:Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    new-instance v0, Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    const-string v1, "UNCHECKED"

    invoke-direct {v0, v1, v3}, Lcom/waze/settings/SettingsSwitchView$SwitchModes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/settings/SettingsSwitchView$SwitchModes;->UNCHECKED:Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    sget-object v1, Lcom/waze/settings/SettingsSwitchView$SwitchModes;->CHECKED:Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/waze/settings/SettingsSwitchView$SwitchModes;->UNCHECKED:Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    aput-object v1, v0, v3

    sput-object v0, Lcom/waze/settings/SettingsSwitchView$SwitchModes;->ENUM$VALUES:[Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/waze/settings/SettingsSwitchView$SwitchModes;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    return-object v0
.end method

.method public static values()[Lcom/waze/settings/SettingsSwitchView$SwitchModes;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/waze/settings/SettingsSwitchView$SwitchModes;->ENUM$VALUES:[Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    array-length v1, v0

    new-array v2, v1, [Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
