.class Lcom/waze/routes/RoutesActivity$5;
.super Ljava/lang/Object;
.source "RoutesActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$MajorEventsOnRouteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/routes/RoutesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/routes/RoutesActivity;


# direct methods
.method constructor <init>(Lcom/waze/routes/RoutesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/routes/RoutesActivity$5;->this$0:Lcom/waze/routes/RoutesActivity;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([Lcom/waze/main/navigate/MajorEventOnRoute;)V
    .locals 2
    .parameter "events"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/waze/routes/RoutesActivity$5;->this$0:Lcom/waze/routes/RoutesActivity;

    iput-object p1, v0, Lcom/waze/routes/RoutesActivity;->majorEvents:[Lcom/waze/main/navigate/MajorEventOnRoute;

    .line 86
    iget-object v0, p0, Lcom/waze/routes/RoutesActivity$5;->this$0:Lcom/waze/routes/RoutesActivity;

    const/4 v1, 0x1

    #setter for: Lcom/waze/routes/RoutesActivity;->gotMajorEvents:Z
    invoke-static {v0, v1}, Lcom/waze/routes/RoutesActivity;->access$5(Lcom/waze/routes/RoutesActivity;Z)V

    .line 87
    iget-object v0, p0, Lcom/waze/routes/RoutesActivity$5;->this$0:Lcom/waze/routes/RoutesActivity;

    #calls: Lcom/waze/routes/RoutesActivity;->markClosure()V
    invoke-static {v0}, Lcom/waze/routes/RoutesActivity;->access$6(Lcom/waze/routes/RoutesActivity;)V

    .line 88
    iget-object v0, p0, Lcom/waze/routes/RoutesActivity$5;->this$0:Lcom/waze/routes/RoutesActivity;

    #calls: Lcom/waze/routes/RoutesActivity;->invalidateRoutes()V
    invoke-static {v0}, Lcom/waze/routes/RoutesActivity;->access$3(Lcom/waze/routes/RoutesActivity;)V

    .line 89
    return-void
.end method
