.class Lcom/waze/navigate/DriveToNativeManager$50;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "DriveToNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->getEventsOnRoute(Lcom/waze/navigate/DriveToNativeManager$EventsOnRouteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private events:[Lcom/waze/main/navigate/EventOnRoute;

.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$listener:Lcom/waze/navigate/DriveToNativeManager$EventsOnRouteListener;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$EventsOnRouteListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$50;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$50;->val$listener:Lcom/waze/navigate/DriveToNativeManager$EventsOnRouteListener;

    .line 1371
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$50;->val$listener:Lcom/waze/navigate/DriveToNativeManager$EventsOnRouteListener;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$50;->events:[Lcom/waze/main/navigate/EventOnRoute;

    invoke-interface {v0, v1}, Lcom/waze/navigate/DriveToNativeManager$EventsOnRouteListener;->onComplete([Lcom/waze/main/navigate/EventOnRoute;)V

    .line 1386
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 1377
    :try_start_0
    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$50;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->getEventsOnRouteNTV()[Lcom/waze/main/navigate/EventOnRoute;
    invoke-static {v1}, Lcom/waze/navigate/DriveToNativeManager;->access$46(Lcom/waze/navigate/DriveToNativeManager;)[Lcom/waze/main/navigate/EventOnRoute;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$50;->events:[Lcom/waze/main/navigate/EventOnRoute;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1381
    :goto_0
    return-void

    .line 1378
    :catch_0
    move-exception v0

    .line 1379
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$50;->events:[Lcom/waze/main/navigate/EventOnRoute;

    goto :goto_0
.end method
