.class Lcom/waze/main/navigate/NavigationResult$19$1;
.super Ljava/lang/Object;
.source "NavigationResult.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$EventsOnRouteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/main/navigate/NavigationResult$19;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/main/navigate/NavigationResult$19;


# direct methods
.method constructor <init>(Lcom/waze/main/navigate/NavigationResult$19;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult$19$1;->this$1:Lcom/waze/main/navigate/NavigationResult$19;

    .line 1277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([Lcom/waze/main/navigate/EventOnRoute;)V
    .locals 1
    .parameter "events"

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$19$1;->this$1:Lcom/waze/main/navigate/NavigationResult$19;

    #getter for: Lcom/waze/main/navigate/NavigationResult$19;->this$0:Lcom/waze/main/navigate/NavigationResult;
    invoke-static {v0}, Lcom/waze/main/navigate/NavigationResult$19;->access$0(Lcom/waze/main/navigate/NavigationResult$19;)Lcom/waze/main/navigate/NavigationResult;

    move-result-object v0

    #calls: Lcom/waze/main/navigate/NavigationResult;->populateEventsOnRoute([Lcom/waze/main/navigate/EventOnRoute;)V
    invoke-static {v0, p1}, Lcom/waze/main/navigate/NavigationResult;->access$22(Lcom/waze/main/navigate/NavigationResult;[Lcom/waze/main/navigate/EventOnRoute;)V

    .line 1281
    return-void
.end method
