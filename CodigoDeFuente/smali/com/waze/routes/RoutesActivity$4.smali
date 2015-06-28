.class Lcom/waze/routes/RoutesActivity$4;
.super Ljava/lang/Object;
.source "RoutesActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$EventsOnRouteListener;


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
    iput-object p1, p0, Lcom/waze/routes/RoutesActivity$4;->this$0:Lcom/waze/routes/RoutesActivity;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([Lcom/waze/main/navigate/EventOnRoute;)V
    .locals 2
    .parameter "events"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/waze/routes/RoutesActivity$4;->this$0:Lcom/waze/routes/RoutesActivity;

    iput-object p1, v0, Lcom/waze/routes/RoutesActivity;->events:[Lcom/waze/main/navigate/EventOnRoute;

    .line 78
    iget-object v0, p0, Lcom/waze/routes/RoutesActivity$4;->this$0:Lcom/waze/routes/RoutesActivity;

    const/4 v1, 0x1

    #setter for: Lcom/waze/routes/RoutesActivity;->gotEvents:Z
    invoke-static {v0, v1}, Lcom/waze/routes/RoutesActivity;->access$4(Lcom/waze/routes/RoutesActivity;Z)V

    .line 79
    iget-object v0, p0, Lcom/waze/routes/RoutesActivity$4;->this$0:Lcom/waze/routes/RoutesActivity;

    #calls: Lcom/waze/routes/RoutesActivity;->invalidateRoutes()V
    invoke-static {v0}, Lcom/waze/routes/RoutesActivity;->access$3(Lcom/waze/routes/RoutesActivity;)V

    .line 80
    return-void
.end method
