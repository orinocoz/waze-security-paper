.class public Lcom/waze/ifs/async/UpdateHandlers$TestThis;
.super Ljava/lang/Object;
.source "UpdateHandlers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ifs/async/UpdateHandlers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestThis"
.end annotation


# instance fields
.field h1:Landroid/os/Handler;

.field h2:Landroid/os/Handler;

.field hString:Landroid/os/Handler;

.field rand:Ljava/util/Random;

.field test_messagesString:Ljava/lang/String;

.field test_numMessages1:I

.field test_numMessages2:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput v1, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->test_numMessages1:I

    .line 99
    new-instance v0, Lcom/waze/ifs/async/UpdateHandlers$TestThis$1;

    invoke-direct {v0, p0}, Lcom/waze/ifs/async/UpdateHandlers$TestThis$1;-><init>(Lcom/waze/ifs/async/UpdateHandlers$TestThis;)V

    iput-object v0, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->h1:Landroid/os/Handler;

    .line 107
    iput v1, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->test_numMessages2:I

    .line 108
    new-instance v0, Lcom/waze/ifs/async/UpdateHandlers$TestThis$2;

    invoke-direct {v0, p0}, Lcom/waze/ifs/async/UpdateHandlers$TestThis$2;-><init>(Lcom/waze/ifs/async/UpdateHandlers$TestThis;)V

    iput-object v0, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->h2:Landroid/os/Handler;

    .line 117
    new-instance v0, Lcom/waze/ifs/async/UpdateHandlers$TestThis$3;

    invoke-direct {v0, p0}, Lcom/waze/ifs/async/UpdateHandlers$TestThis$3;-><init>(Lcom/waze/ifs/async/UpdateHandlers$TestThis;)V

    iput-object v0, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->hString:Landroid/os/Handler;

    .line 125
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->rand:Ljava/util/Random;

    .line 128
    invoke-direct {p0}, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->testHandlerInsertion()V

    .line 129
    invoke-direct {p0}, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->testHandlerInsertionAndRemoval()V

    .line 130
    invoke-direct {p0}, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->testHandlerTwoInsertions()V

    .line 131
    invoke-direct {p0}, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->testHandlerString()V

    .line 132
    return-void
.end method

.method private testHandlerInsertion()V
    .locals 4

    .prologue
    .line 135
    iget-object v2, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->rand:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 136
    .local v0, id:I
    new-instance v1, Lcom/waze/ifs/async/UpdateHandlers;

    invoke-direct {v1}, Lcom/waze/ifs/async/UpdateHandlers;-><init>()V

    .line 137
    .local v1, uh:Lcom/waze/ifs/async/UpdateHandlers;
    const/4 v2, 0x0

    iput v2, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->test_numMessages1:I

    .line 139
    iget-object v2, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->h1:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2}, Lcom/waze/ifs/async/UpdateHandlers;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 140
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/waze/ifs/async/UpdateHandlers;->sendUpdateMessage(ILandroid/os/Bundle;)V

    .line 142
    const/4 v2, 0x1

    iget v3, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->test_numMessages1:I

    invoke-static {v2, v3}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 143
    return-void
.end method

.method private testHandlerInsertionAndRemoval()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-object v2, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->rand:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 147
    .local v0, id:I
    new-instance v1, Lcom/waze/ifs/async/UpdateHandlers;

    invoke-direct {v1}, Lcom/waze/ifs/async/UpdateHandlers;-><init>()V

    .line 148
    .local v1, uh:Lcom/waze/ifs/async/UpdateHandlers;
    iput v3, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->test_numMessages1:I

    .line 150
    iget-object v2, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->h1:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2}, Lcom/waze/ifs/async/UpdateHandlers;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 151
    iget-object v2, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->h1:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2}, Lcom/waze/ifs/async/UpdateHandlers;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 152
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/waze/ifs/async/UpdateHandlers;->sendUpdateMessage(ILandroid/os/Bundle;)V

    .line 154
    iget v2, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->test_numMessages1:I

    invoke-static {v3, v2}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 155
    return-void
.end method

.method private testHandlerString()V
    .locals 5

    .prologue
    .line 177
    const-string v2, "test"

    .line 178
    .local v2, s:Ljava/lang/String;
    iget-object v4, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->rand:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 179
    .local v1, id:I
    new-instance v3, Lcom/waze/ifs/async/UpdateHandlers;

    invoke-direct {v3}, Lcom/waze/ifs/async/UpdateHandlers;-><init>()V

    .line 180
    .local v3, uh:Lcom/waze/ifs/async/UpdateHandlers;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->test_messagesString:Ljava/lang/String;

    .line 182
    iget-object v4, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->hString:Landroid/os/Handler;

    invoke-virtual {v3, v1, v4}, Lcom/waze/ifs/async/UpdateHandlers;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 184
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 185
    .local v0, b:Landroid/os/Bundle;
    const-string v4, "string"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v3, v1, v0}, Lcom/waze/ifs/async/UpdateHandlers;->sendUpdateMessage(ILandroid/os/Bundle;)V

    .line 188
    iget-object v4, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->test_messagesString:Ljava/lang/String;

    invoke-static {v2, v4}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method private testHandlerTwoInsertions()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 158
    iget-object v3, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->rand:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 159
    .local v0, id1:I
    iget-object v3, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->rand:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 160
    .local v1, id2:I
    new-instance v2, Lcom/waze/ifs/async/UpdateHandlers;

    invoke-direct {v2}, Lcom/waze/ifs/async/UpdateHandlers;-><init>()V

    .line 161
    .local v2, uh:Lcom/waze/ifs/async/UpdateHandlers;
    iput v5, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->test_numMessages1:I

    .line 163
    iget-object v3, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->h1:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3}, Lcom/waze/ifs/async/UpdateHandlers;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 164
    iget-object v3, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->h2:Landroid/os/Handler;

    invoke-virtual {v2, v1, v3}, Lcom/waze/ifs/async/UpdateHandlers;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 165
    invoke-virtual {v2, v0, v6}, Lcom/waze/ifs/async/UpdateHandlers;->sendUpdateMessage(ILandroid/os/Bundle;)V

    .line 167
    iget v3, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->test_numMessages1:I

    invoke-static {v4, v3}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 168
    iget v3, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->test_numMessages2:I

    invoke-static {v5, v3}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 170
    invoke-virtual {v2, v1, v6}, Lcom/waze/ifs/async/UpdateHandlers;->sendUpdateMessage(ILandroid/os/Bundle;)V

    .line 172
    iget v3, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->test_numMessages1:I

    invoke-static {v4, v3}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 173
    iget v3, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->test_numMessages2:I

    invoke-static {v4, v3}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 174
    return-void
.end method
