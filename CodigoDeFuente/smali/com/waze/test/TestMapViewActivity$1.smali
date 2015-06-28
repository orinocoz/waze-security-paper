.class Lcom/waze/test/TestMapViewActivity$1;
.super Lcom/waze/ifs/async/RunnableExecutor;
.source "TestMapViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/test/TestMapViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/test/TestMapViewActivity;


# direct methods
.method constructor <init>(Lcom/waze/test/TestMapViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/test/TestMapViewActivity$1;->this$0:Lcom/waze/test/TestMapViewActivity;

    .line 41
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public event()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    .line 48
    .local v0, nm:Lcom/waze/navigate/DriveToNativeManager;
    return-void
.end method
