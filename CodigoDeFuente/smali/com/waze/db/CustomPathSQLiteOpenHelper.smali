.class public abstract Lcom/waze/db/CustomPathSQLiteOpenHelper;
.super Ljava/lang/Object;
.source "CustomPathSQLiteOpenHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mDir:Ljava/lang/String;

.field private final mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private mIsInitializing:Z

.field private final mName:Ljava/lang/String;

.field private final mNewVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/waze/db/CustomPathSQLiteOpenHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 3
    .parameter "dir"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mIsInitializing:Z

    .line 29
    const/4 v0, 0x1

    if-ge p4, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Version must be >= 1, was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mDir:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mName:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 34
    iput p4, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mNewVersion:I

    .line 35
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed during initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 178
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 6

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_0

    .line 132
    iget-object v3, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_1

    .line 135
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 141
    :cond_0
    iget-boolean v3, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v3, :cond_3

    .line 142
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "getReadableDatabase called recursively"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 137
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v3

    .line 146
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/waze/db/CustomPathSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    iget-object v3, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mName:Ljava/lang/String;

    if-nez v3, :cond_4

    throw v1

    .line 149
    :cond_4
    sget-object v3, Lcom/waze/db/CustomPathSQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t open "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for writing (will try read-only):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x1

    :try_start_4
    iput-boolean v3, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mIsInitializing:Z

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mDir:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    iget v4, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mNewVersion:I

    if-eq v3, v4, :cond_6

    .line 160
    new-instance v3, Landroid/database/sqlite/SQLiteException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t upgrade read-only database from version "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-direct {v3, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 168
    .end local v2           #path:Ljava/lang/String;
    :catchall_1
    move-exception v3

    .line 169
    const/4 v4, 0x0

    :try_start_5
    iput-boolean v4, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mIsInitializing:Z

    .line 170
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v4, :cond_5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 171
    :cond_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 164
    .restart local v2       #path:Ljava/lang/String;
    :cond_6
    :try_start_6
    invoke-virtual {p0, v0}, Lcom/waze/db/CustomPathSQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 165
    sget-object v3, Lcom/waze/db/CustomPathSQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Opened "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in read-only mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iput-object v0, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 167
    iget-object v3, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 169
    const/4 v4, 0x0

    :try_start_7
    iput-boolean v4, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mIsInitializing:Z

    .line 170
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v4, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 6

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_0

    .line 47
    iget-object v4, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_1

    .line 50
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 56
    :cond_0
    iget-boolean v4, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v4, :cond_3

    .line 57
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "getWritableDatabase called recursively"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 51
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_0

    .line 52
    iget-object v0, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    .line 66
    :cond_3
    const/4 v2, 0x0

    .line 67
    .local v2, success:Z
    const/4 v0, 0x0

    .line 73
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mIsInitializing:Z

    .line 74
    iget-object v4, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mName:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 75
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 83
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    .line 84
    .local v3, version:I
    iget v4, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mNewVersion:I

    if-eq v3, v4, :cond_4

    .line 85
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 87
    if-nez v3, :cond_7

    .line 88
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/waze/db/CustomPathSQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 96
    :goto_2
    iget v4, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 97
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 99
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 103
    :cond_4
    invoke-virtual {p0, v0}, Lcom/waze/db/CustomPathSQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 104
    const/4 v2, 0x1

    .line 107
    const/4 v4, 0x0

    :try_start_5
    iput-boolean v4, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mIsInitializing:Z

    .line 108
    if-eqz v2, :cond_b

    .line 109
    iget-object v4, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_5

    .line 111
    :try_start_6
    iget-object v4, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 118
    :cond_5
    :goto_3
    :try_start_7
    iput-object v0, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 77
    .end local v3           #version:I
    :cond_6
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mDir:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, path:Ljava/lang/String;
    const/4 v4, 0x0

    const/high16 v5, 0x1000

    invoke-static {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v0

    goto :goto_1

    .line 90
    .end local v1           #path:Ljava/lang/String;
    .restart local v3       #version:I
    :cond_7
    :try_start_9
    iget v4, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mNewVersion:I

    if-le v3, v4, :cond_a

    .line 91
    iget v4, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v3, v4}, Lcom/waze/db/CustomPathSQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    .line 98
    :catchall_1
    move-exception v4

    .line 99
    :try_start_a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 100
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 106
    .end local v3           #version:I
    :catchall_2
    move-exception v4

    .line 107
    const/4 v5, 0x0

    :try_start_b
    iput-boolean v5, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mIsInitializing:Z

    .line 108
    if-eqz v2, :cond_c

    .line 109
    iget-object v5, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v5, :cond_8

    .line 111
    :try_start_c
    iget-object v5, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 118
    :cond_8
    :goto_4
    :try_start_d
    iput-object v0, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 126
    :cond_9
    :goto_5
    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 93
    .restart local v3       #version:I
    :cond_a
    :try_start_e
    iget v4, p0, Lcom/waze/db/CustomPathSQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v3, v4}, Lcom/waze/db/CustomPathSQLiteOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_2

    .line 124
    :cond_b
    if-eqz v0, :cond_2

    :try_start_f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .end local v3           #version:I
    :cond_c
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_5

    .line 112
    :catch_0
    move-exception v5

    goto :goto_4

    .restart local v3       #version:I
    :catch_1
    move-exception v4

    goto :goto_3
.end method

.method public abstract onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 190
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t downgrade database from version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 191
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 194
    return-void
.end method

.method public abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method
