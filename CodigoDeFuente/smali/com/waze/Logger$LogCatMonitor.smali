.class public Lcom/waze/Logger$LogCatMonitor;
.super Ljava/lang/Thread;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogCatMonitor"
.end annotation


# instance fields
.field private mActive:Z

.field private mLogcatProc:Ljava/lang/Process;

.field private mOutFileValid:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/Logger$LogCatMonitor;->mLogcatProc:Ljava/lang/Process;

    .line 291
    iput-boolean v1, p0, Lcom/waze/Logger$LogCatMonitor;->mActive:Z

    .line 292
    iput-boolean v1, p0, Lcom/waze/Logger$LogCatMonitor;->mOutFileValid:Z

    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/waze/Logger$LogCatMonitor;->setPriority(I)V

    .line 203
    const-string v0, "Logcat Monitor"

    invoke-virtual {p0, v0}, Lcom/waze/Logger$LogCatMonitor;->setName(Ljava/lang/String;)V

    .line 204
    return-void
.end method


# virtual methods
.method public Destroy()V
    .locals 3

    .prologue
    .line 276
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/waze/Logger$LogCatMonitor;->mActive:Z

    .line 279
    :try_start_0
    iget-object v2, p0, Lcom/waze/Logger$LogCatMonitor;->mLogcatProc:Ljava/lang/Process;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :try_start_1
    iget-object v1, p0, Lcom/waze/Logger$LogCatMonitor;->mLogcatProc:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 279
    monitor-exit v2

    .line 289
    :goto_0
    return-void

    .line 279
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 284
    :catch_0
    move-exception v0

    .line 286
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Waze"

    const-string v2, "Error closing streams in Logcat thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 13

    .prologue
    .line 208
    const/4 v4, 0x0

    .line 209
    .local v4, reader:Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 216
    .local v7, writer:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    .line 217
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "logcat"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "-v"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "time"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "*:I"

    aput-object v12, v10, v11

    .line 216
    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v9

    iput-object v9, p0, Lcom/waze/Logger$LogCatMonitor;->mLogcatProc:Ljava/lang/Process;

    .line 220
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    iget-object v10, p0, Lcom/waze/Logger$LogCatMonitor;->mLogcatProc:Ljava/lang/Process;

    invoke-virtual {v10}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v4           #reader:Ljava/io/BufferedReader;
    .local v5, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v3, log:Ljava/lang/StringBuilder;
    const-string v9, "line.separator"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 224
    .local v6, separator:Ljava/lang/String;
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/waze/Logger$LogCatMonitor;->mActive:Z

    .line 225
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/waze/Logger$LogCatMonitor;->mOutFileValid:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object v8, v7

    .line 228
    .end local v7           #writer:Ljava/io/FileOutputStream;
    .local v8, writer:Ljava/io/FileOutputStream;
    :goto_0
    :try_start_2
    iget-boolean v9, p0, Lcom/waze/Logger$LogCatMonitor;->mActive:Z

    if-eqz v9, :cond_0

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    if-nez v2, :cond_3

    .line 255
    .end local v2           #line:Ljava/lang/String;
    :cond_0
    :try_start_3
    iget-object v10, p0, Lcom/waze/Logger$LogCatMonitor;->mLogcatProc:Ljava/lang/Process;

    monitor-enter v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 257
    :try_start_4
    iget-object v9, p0, Lcom/waze/Logger$LogCatMonitor;->mLogcatProc:Ljava/lang/Process;

    invoke-virtual {v9}, Ljava/lang/Process;->destroy()V

    .line 255
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 259
    if-eqz v8, :cond_1

    .line 260
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 261
    :cond_1
    if-eqz v5, :cond_7

    .line 262
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-object v7, v8

    .end local v8           #writer:Ljava/io/FileOutputStream;
    .restart local v7       #writer:Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 269
    .end local v3           #log:Ljava/lang/StringBuilder;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .end local v6           #separator:Ljava/lang/String;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    const-string v9, "Waze"

    const-string v10, "Logcat thread ended"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void

    .line 231
    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v7           #writer:Ljava/io/FileOutputStream;
    .restart local v2       #line:Ljava/lang/String;
    .restart local v3       #log:Ljava/lang/StringBuilder;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v6       #separator:Ljava/lang/String;
    .restart local v8       #writer:Ljava/io/FileOutputStream;
    :cond_3
    :try_start_6
    iget-boolean v9, p0, Lcom/waze/Logger$LogCatMonitor;->mOutFileValid:Z

    if-nez v9, :cond_8

    .line 233
    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "logcat.txt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {v7, v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 234
    .end local v8           #writer:Ljava/io/FileOutputStream;
    .restart local v7       #writer:Ljava/io/FileOutputStream;
    const/4 v9, 0x1

    :try_start_7
    iput-boolean v9, p0, Lcom/waze/Logger$LogCatMonitor;->mOutFileValid:Z

    .line 238
    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 242
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-object v8, v7

    .end local v7           #writer:Ljava/io/FileOutputStream;
    .restart local v8       #writer:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 245
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #log:Ljava/lang/StringBuilder;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .end local v6           #separator:Ljava/lang/String;
    .end local v8           #writer:Ljava/io/FileOutputStream;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    .restart local v7       #writer:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 247
    .local v1, ex:Ljava/lang/Exception;
    :goto_3
    :try_start_8
    const-string v9, "Waze"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Error in Logcat thread: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 255
    :try_start_9
    iget-object v10, p0, Lcom/waze/Logger$LogCatMonitor;->mLogcatProc:Ljava/lang/Process;

    monitor-enter v10
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 257
    :try_start_a
    iget-object v9, p0, Lcom/waze/Logger$LogCatMonitor;->mLogcatProc:Ljava/lang/Process;

    invoke-virtual {v9}, Ljava/lang/Process;->destroy()V

    .line 255
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 259
    if-eqz v7, :cond_4

    .line 260
    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 261
    :cond_4
    if-eqz v4, :cond_2

    .line 262
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_1

    .line 264
    :catch_1
    move-exception v0

    .line 266
    .local v0, e:Ljava/io/IOException;
    const-string v9, "Waze"

    const-string v10, "Error closing streams in Logcat thread"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 255
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :try_start_c
    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    throw v9
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    .line 251
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v9

    .line 255
    :goto_4
    :try_start_e
    iget-object v11, p0, Lcom/waze/Logger$LogCatMonitor;->mLogcatProc:Ljava/lang/Process;

    monitor-enter v11
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    .line 257
    :try_start_f
    iget-object v10, p0, Lcom/waze/Logger$LogCatMonitor;->mLogcatProc:Ljava/lang/Process;

    invoke-virtual {v10}, Ljava/lang/Process;->destroy()V

    .line 255
    monitor-exit v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 259
    if-eqz v7, :cond_5

    .line 260
    :try_start_10
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 261
    :cond_5
    if-eqz v4, :cond_6

    .line 262
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    .line 268
    :cond_6
    :goto_5
    throw v9

    .line 255
    :catchall_2
    move-exception v10

    :try_start_11
    monitor-exit v11
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    throw v10
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2

    .line 264
    :catch_2
    move-exception v0

    .line 266
    .restart local v0       #e:Ljava/io/IOException;
    const-string v10, "Waze"

    const-string v11, "Error closing streams in Logcat thread"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 255
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v7           #writer:Ljava/io/FileOutputStream;
    .restart local v3       #log:Ljava/lang/StringBuilder;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v6       #separator:Ljava/lang/String;
    .restart local v8       #writer:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v9

    :try_start_13
    monitor-exit v10
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :try_start_14
    throw v9
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3

    .line 264
    :catch_3
    move-exception v0

    .line 266
    .restart local v0       #e:Ljava/io/IOException;
    const-string v9, "Waze"

    const-string v10, "Error closing streams in Logcat thread"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/io/IOException;
    :cond_7
    move-object v7, v8

    .end local v8           #writer:Ljava/io/FileOutputStream;
    .restart local v7       #writer:Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 251
    .end local v3           #log:Ljava/lang/StringBuilder;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v6           #separator:Ljava/lang/String;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catchall_4
    move-exception v9

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v7           #writer:Ljava/io/FileOutputStream;
    .restart local v3       #log:Ljava/lang/StringBuilder;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v6       #separator:Ljava/lang/String;
    .restart local v8       #writer:Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v9

    move-object v7, v8

    .end local v8           #writer:Ljava/io/FileOutputStream;
    .restart local v7       #writer:Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 245
    .end local v3           #log:Ljava/lang/StringBuilder;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v6           #separator:Ljava/lang/String;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v7           #writer:Ljava/io/FileOutputStream;
    .restart local v3       #log:Ljava/lang/StringBuilder;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v6       #separator:Ljava/lang/String;
    .restart local v8       #writer:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    move-object v7, v8

    .end local v8           #writer:Ljava/io/FileOutputStream;
    .restart local v7       #writer:Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v7           #writer:Ljava/io/FileOutputStream;
    .restart local v2       #line:Ljava/lang/String;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v8       #writer:Ljava/io/FileOutputStream;
    :cond_8
    move-object v7, v8

    .end local v8           #writer:Ljava/io/FileOutputStream;
    .restart local v7       #writer:Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method

.method public setOutFileInvalid()V
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/Logger$LogCatMonitor;->mOutFileValid:Z

    return-void
.end method
