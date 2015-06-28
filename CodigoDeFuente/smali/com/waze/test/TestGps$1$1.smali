.class Lcom/waze/test/TestGps$1$1;
.super Ljava/lang/Object;
.source "TestGps.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/test/TestGps$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/test/TestGps$1;


# direct methods
.method constructor <init>(Lcom/waze/test/TestGps$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/test/TestGps$1$1;->this$1:Lcom/waze/test/TestGps$1;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/waze/test/TestGps$1$1;->this$1:Lcom/waze/test/TestGps$1;

    #getter for: Lcom/waze/test/TestGps$1;->this$0:Lcom/waze/test/TestGps;
    invoke-static {v0}, Lcom/waze/test/TestGps$1;->access$0(Lcom/waze/test/TestGps$1;)Lcom/waze/test/TestGps;

    move-result-object v0

    #calls: Lcom/waze/test/TestGps;->stopGPS()V
    invoke-static {v0}, Lcom/waze/test/TestGps;->access$0(Lcom/waze/test/TestGps;)V

    .line 69
    return-void
.end method
