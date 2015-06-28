.class Lcom/waze/Logger$1;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/Logger;->LogData(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$aLevel:I

.field private final synthetic val$aStr:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput p1, p0, Lcom/waze/Logger$1;->val$aLevel:I

    iput-object p2, p0, Lcom/waze/Logger$1;->val$aStr:Ljava/lang/String;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 313
    invoke-static {}, Lcom/waze/Logger;->access$0()Lcom/waze/Logger;

    move-result-object v0

    iget v1, p0, Lcom/waze/Logger$1;->val$aLevel:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Java Layer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/waze/Logger$1;->val$aStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/waze/Logger;->WazeLogNTV(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/waze/Logger;->access$1(Lcom/waze/Logger;ILjava/lang/String;)V

    .line 314
    return-void
.end method
