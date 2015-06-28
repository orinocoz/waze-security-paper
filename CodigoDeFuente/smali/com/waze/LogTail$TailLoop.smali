.class Lcom/waze/LogTail$TailLoop;
.super Ljava/lang/Object;
.source "LogTail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/LogTail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TailLoop"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/LogTail;


# direct methods
.method private constructor <init>(Lcom/waze/LogTail;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/waze/LogTail$TailLoop;->this$0:Lcom/waze/LogTail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/LogTail;Lcom/waze/LogTail$TailLoop;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/waze/LogTail$TailLoop;-><init>(Lcom/waze/LogTail;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 140
    const-string v2, "TailLoop"

    const-string v3, "Starting the LogTail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v1, 0x0

    .line 146
    .local v1, line:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/waze/LogTail$TailLoop;->this$0:Lcom/waze/LogTail;

    #getter for: Lcom/waze/LogTail;->mReader:Ljava/io/BufferedReader;
    invoke-static {v2}, Lcom/waze/LogTail;->access$0(Lcom/waze/LogTail;)Ljava/io/BufferedReader;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 149
    const-string v2, "NativeLog"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v2, p0, Lcom/waze/LogTail$TailLoop;->this$0:Lcom/waze/LogTail;

    #getter for: Lcom/waze/LogTail;->mSDLogEnabled:Z
    invoke-static {v2}, Lcom/waze/LogTail;->access$1(Lcom/waze/LogTail;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/waze/LogTail$TailLoop;->this$0:Lcom/waze/LogTail;

    #getter for: Lcom/waze/LogTail;->mSDLogStream:Ljava/io/FileOutputStream;
    invoke-static {v2}, Lcom/waze/LogTail;->access$2(Lcom/waze/LogTail;)Ljava/io/FileOutputStream;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/waze/LogTail$TailLoop;->this$0:Lcom/waze/LogTail;

    #getter for: Lcom/waze/LogTail;->mSDLogStream:Ljava/io/FileOutputStream;
    invoke-static {v2}, Lcom/waze/LogTail;->access$2(Lcom/waze/LogTail;)Ljava/io/FileOutputStream;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 162
    .local v0, ex:Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 163
    const-string v2, "TailLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error in reading log file"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void

    .line 157
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
