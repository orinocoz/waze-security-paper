.class public Lcom/waze/db/WazeFavoritePlaceSQLiteHelper;
.super Lcom/waze/db/CustomPathSQLiteOpenHelper;
.source "WazeFavoritePlaceSQLiteHelper.java"


# static fields
.field private static DATABASE_DIR:Ljava/lang/String; = null

.field private static final DATABASE_NAME:Ljava/lang/String; = "user.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final FAVORITES_TABLE:Ljava/lang/String; = "FAVORITES"

.field private static final PLACES_TABLE:Ljava/lang/String; = "PLACES"


# instance fields
.field private mApplicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 29
    sget-object v0, Lcom/waze/widget/WazeAppWidgetService;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v1, "user.db"

    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/waze/db/CustomPathSQLiteOpenHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 33
    sget-object v0, Lcom/waze/widget/WazeAppWidgetService;->mApplicationContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/waze/db/WazeFavoritePlaceSQLiteHelper;->mApplicationContext:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/waze/db/WazeFavoritePlaceSQLiteHelper;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    sput-object v0, Lcom/waze/db/WazeFavoritePlaceSQLiteHelper;->DATABASE_DIR:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getAllIntoMap()Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const-wide v8, 0x412e848000000000L

    .line 52
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/location/Location;>;"
    const-string v4, "SELECT  type, longitude, latitude FROM FAVORITES join PLACES on FAVORITES.place_id = PLACES.id where (FAVORITES.type = 1 or FAVORITES.type = 2)"

    .line 58
    .local v4, query:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/waze/db/WazeFavoritePlaceSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 59
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 61
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 63
    :cond_0
    new-instance v2, Landroid/location/Location;

    const-string v5, "History"

    invoke-direct {v2, v5}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 64
    .local v2, location:Landroid/location/Location;
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    div-double/2addr v5, v8

    invoke-virtual {v2, v5, v6}, Landroid/location/Location;->setLongitude(D)V

    .line 65
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    div-double/2addr v5, v8

    invoke-virtual {v2, v5, v6}, Landroid/location/Location;->setLatitude(D)V

    .line 66
    invoke-static {}, Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;->values()[Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;

    move-result-object v5

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;->values()[Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;

    move-result-object v6

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/waze/db/dataObj/FavoriteDb$FavoriteType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 70
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 73
    .end local v2           #location:Landroid/location/Location;
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 75
    const-string v5, "WAZE"

    const-string v6, "HashMap<String, Location> getAllIntoMap()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v5, "HashMap<String, Location> getAllIntoMap()"

    invoke-static {v5}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 77
    return-object v3
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 42
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 48
    return-void
.end method
