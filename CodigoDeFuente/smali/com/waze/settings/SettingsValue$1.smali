.class Lcom/waze/settings/SettingsValue$1;
.super Ljava/lang/Object;
.source "SettingsValue.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/settings/SettingsValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/waze/settings/SettingsValue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/waze/settings/SettingsValue;Lcom/waze/settings/SettingsValue;)I
    .locals 3
    .parameter "setting1"
    .parameter "setting2"

    .prologue
    .line 44
    iget-object v2, p1, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, display1:Ljava/lang/String;
    iget-object v2, p2, Lcom/waze/settings/SettingsValue;->display:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, display2:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/waze/settings/SettingsValue;

    check-cast p2, Lcom/waze/settings/SettingsValue;

    invoke-virtual {p0, p1, p2}, Lcom/waze/settings/SettingsValue$1;->compare(Lcom/waze/settings/SettingsValue;Lcom/waze/settings/SettingsValue;)I

    move-result v0

    return v0
.end method
