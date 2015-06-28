.class Lcom/waze/navigate/SearchMapActivity$1;
.super Lcom/waze/ifs/async/RunnableExecutor;
.source "SearchMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navigate/SearchMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/SearchMapActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/SearchMapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/SearchMapActivity$1;->this$0:Lcom/waze/navigate/SearchMapActivity;

    .line 66
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public event()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/waze/navigate/SearchMapActivity$1;->this$0:Lcom/waze/navigate/SearchMapActivity;

    #getter for: Lcom/waze/navigate/SearchMapActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/navigate/SearchMapActivity;->access$0(Lcom/waze/navigate/SearchMapActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->setSearchMapView()V

    .line 71
    iget-object v0, p0, Lcom/waze/navigate/SearchMapActivity$1;->this$0:Lcom/waze/navigate/SearchMapActivity;

    #getter for: Lcom/waze/navigate/SearchMapActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/navigate/SearchMapActivity;->access$0(Lcom/waze/navigate/SearchMapActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/SearchMapActivity$1;->this$0:Lcom/waze/navigate/SearchMapActivity;

    #getter for: Lcom/waze/navigate/SearchMapActivity;->category:Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/navigate/SearchMapActivity;->access$1(Lcom/waze/navigate/SearchMapActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/navigate/SearchMapActivity$1;->this$0:Lcom/waze/navigate/SearchMapActivity;

    #getter for: Lcom/waze/navigate/SearchMapActivity;->provider:Ljava/lang/String;
    invoke-static {v2}, Lcom/waze/navigate/SearchMapActivity;->access$2(Lcom/waze/navigate/SearchMapActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->setSearchResultPins(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method
