.class public Lcom/waze/config/WazeHistory;
.super Ljava/lang/Object;
.source "WazeHistory.java"


# static fields
.field private static final FAVORITES:Ljava/lang/String; = "F"

.field private static final HOME:Ljava/lang/String; = "home"

.field private static final WORK:Ljava/lang/String; = "work"

.field private static mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private static mWazeFavoritePalceSQLiteHelper:Lcom/waze/db/WazeFavoritePlaceSQLiteHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/config/WazeHistory;->mMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEntry(Ljava/lang/String;)Landroid/location/Location;
    .locals 2
    .parameter "name"

    .prologue
    .line 44
    sget-object v0, Lcom/waze/config/WazeHistory;->mMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Location getEntry: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/waze/config/WazeHistory;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/waze/config/WazeHistory;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static load()V
    .locals 4

    .prologue
    .line 28
    :try_start_0
    new-instance v2, Lcom/waze/db/WazeFavoritePlaceSQLiteHelper;

    invoke-direct {v2}, Lcom/waze/db/WazeFavoritePlaceSQLiteHelper;-><init>()V

    sput-object v2, Lcom/waze/config/WazeHistory;->mWazeFavoritePalceSQLiteHelper:Lcom/waze/db/WazeFavoritePlaceSQLiteHelper;

    .line 29
    sget-object v2, Lcom/waze/config/WazeHistory;->mWazeFavoritePalceSQLiteHelper:Lcom/waze/db/WazeFavoritePlaceSQLiteHelper;

    invoke-virtual {v2}, Lcom/waze/db/WazeFavoritePlaceSQLiteHelper;->getAllIntoMap()Ljava/util/HashMap;

    move-result-object v2

    sput-object v2, Lcom/waze/config/WazeHistory;->mMap:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .local v0, ex:Ljava/lang/Exception;
    .local v1, exceptionMsg:Ljava/lang/String;
    :goto_0
    return-void

    .line 31
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #exceptionMsg:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 32
    .restart local v0       #ex:Ljava/lang/Exception;
    if-nez v0, :cond_0

    const-string v1, ""

    .line 33
    .restart local v1       #exceptionMsg:Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load history from DB ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/widget/WazeAppWidgetLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    .end local v1           #exceptionMsg:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static removeEntry(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 69
    sget-object v0, Lcom/waze/config/WazeHistory;->mMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "Home"

    const-string v1, "home"

    invoke-static {p0, v0, v1}, Lcom/waze/config/WazeHistory;->removeEntryIfNecessary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "Work"

    const-string v1, "work"

    invoke-static {p0, v0, v1}, Lcom/waze/config/WazeHistory;->removeEntryIfNecessary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method

.method private static removeEntryIfNecessary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "title"
    .parameter "title1"
    .parameter "title2"

    .prologue
    .line 78
    invoke-static {p1}, Lcom/waze/config/WazeLang;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-static {p2}, Lcom/waze/config/WazeLang;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    sget-object v0, Lcom/waze/config/WazeHistory;->mMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/waze/config/WazeLang;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/waze/config/WazeHistory;->mMap:Ljava/util/HashMap;

    invoke-static {p2}, Lcom/waze/config/WazeLang;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/waze/config/WazeHistory;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/waze/config/WazeHistory;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_1
    return-void
.end method

.method public static setEntry(Ljava/lang/String;Landroid/location/Location;)V
    .locals 1
    .parameter "name"
    .parameter "location"

    .prologue
    .line 62
    sget-object v0, Lcom/waze/config/WazeHistory;->mMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/waze/config/WazeHistory;->mMap:Ljava/util/HashMap;

    .line 65
    :cond_0
    sget-object v0, Lcom/waze/config/WazeHistory;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method
