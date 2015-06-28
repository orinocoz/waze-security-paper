.class Lcom/waze/navigate/DriveToNativeManager$51;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "DriveToNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->getMajorEventsOnRoute(Lcom/waze/navigate/DriveToNativeManager$MajorEventsOnRouteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private events:[Lcom/waze/main/navigate/MajorEventOnRoute;

.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$listener:Lcom/waze/navigate/DriveToNativeManager$MajorEventsOnRouteListener;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$MajorEventsOnRouteListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$51;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$51;->val$listener:Lcom/waze/navigate/DriveToNativeManager$MajorEventsOnRouteListener;

    .line 1393
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$51;->val$listener:Lcom/waze/navigate/DriveToNativeManager$MajorEventsOnRouteListener;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$51;->events:[Lcom/waze/main/navigate/MajorEventOnRoute;

    invoke-interface {v0, v1}, Lcom/waze/navigate/DriveToNativeManager$MajorEventsOnRouteListener;->onComplete([Lcom/waze/main/navigate/MajorEventOnRoute;)V

    .line 1408
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 1399
    :try_start_0
    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$51;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->getMajorEventsOnRouteNTV()[Lcom/waze/main/navigate/MajorEventOnRoute;
    invoke-static {v1}, Lcom/waze/navigate/DriveToNativeManager;->access$47(Lcom/waze/navigate/DriveToNativeManager;)[Lcom/waze/main/navigate/MajorEventOnRoute;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$51;->events:[Lcom/waze/main/navigate/MajorEventOnRoute;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1403
    :goto_0
    return-void

    .line 1400
    :catch_0
    move-exception v0

    .line 1401
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$51;->events:[Lcom/waze/main/navigate/MajorEventOnRoute;

    goto :goto_0
.end method
