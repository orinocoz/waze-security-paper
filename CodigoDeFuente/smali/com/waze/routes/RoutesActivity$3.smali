.class Lcom/waze/routes/RoutesActivity$3;
.super Ljava/lang/Object;
.source "RoutesActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$AlternativeRoutesListener;


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
    iput-object p1, p0, Lcom/waze/routes/RoutesActivity$3;->this$0:Lcom/waze/routes/RoutesActivity;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([Lcom/waze/routes/AlternativeRoute;)V
    .locals 2
    .parameter "routes"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/waze/routes/RoutesActivity$3;->this$0:Lcom/waze/routes/RoutesActivity;

    #setter for: Lcom/waze/routes/RoutesActivity;->routes:[Lcom/waze/routes/AlternativeRoute;
    invoke-static {v0, p1}, Lcom/waze/routes/RoutesActivity;->access$1(Lcom/waze/routes/RoutesActivity;[Lcom/waze/routes/AlternativeRoute;)V

    .line 70
    iget-object v0, p0, Lcom/waze/routes/RoutesActivity$3;->this$0:Lcom/waze/routes/RoutesActivity;

    const/4 v1, 0x1

    #setter for: Lcom/waze/routes/RoutesActivity;->gotRoutes:Z
    invoke-static {v0, v1}, Lcom/waze/routes/RoutesActivity;->access$2(Lcom/waze/routes/RoutesActivity;Z)V

    .line 71
    iget-object v0, p0, Lcom/waze/routes/RoutesActivity$3;->this$0:Lcom/waze/routes/RoutesActivity;

    #calls: Lcom/waze/routes/RoutesActivity;->invalidateRoutes()V
    invoke-static {v0}, Lcom/waze/routes/RoutesActivity;->access$3(Lcom/waze/routes/RoutesActivity;)V

    .line 72
    return-void
.end method
