.class Lcom/waze/navbar/NavBar$14;
.super Ljava/lang/Object;
.source "NavBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navbar/NavBar;->showNearingDestination()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navbar/NavBar;


# direct methods
.method constructor <init>(Lcom/waze/navbar/NavBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navbar/NavBar$14;->this$0:Lcom/waze/navbar/NavBar;

    .line 1138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/waze/navbar/NavBar$14;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mReceivedSearchResult:Z
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$25(Lcom/waze/navbar/NavBar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/waze/navbar/NavBar$14;->this$0:Lcom/waze/navbar/NavBar;

    iget-object v1, p0, Lcom/waze/navbar/NavBar$14;->this$0:Lcom/waze/navbar/NavBar;

    iget-object v1, v1, Lcom/waze/navbar/NavBar;->destinationData:Lcom/waze/main/navigate/LocationData;

    const/4 v2, 0x0

    #calls: Lcom/waze/navbar/NavBar;->openNearingDest(Lcom/waze/main/navigate/LocationData;I)V
    invoke-static {v0, v1, v2}, Lcom/waze/navbar/NavBar;->access$13(Lcom/waze/navbar/NavBar;Lcom/waze/main/navigate/LocationData;I)V

    .line 1145
    :cond_0
    return-void
.end method
