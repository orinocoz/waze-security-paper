.class Lcom/waze/CPUProfiler$1;
.super Ljava/lang/Object;
.source "CPUProfiler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/CPUProfiler;->PostResultToLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/CPUProfiler;

.field private final synthetic val$resStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/CPUProfiler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/CPUProfiler$1;->this$0:Lcom/waze/CPUProfiler;

    iput-object p2, p0, Lcom/waze/CPUProfiler$1;->val$resStr:Ljava/lang/String;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/waze/CPUProfiler$1;->val$resStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/waze/Logger;->w(Ljava/lang/String;)V

    .line 149
    return-void
.end method
