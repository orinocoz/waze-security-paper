.class Lcom/waze/routes/RoutesMapActivity$3;
.super Ljava/lang/Object;
.source "RoutesMapActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$AlternativeRoutesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/routes/RoutesMapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/routes/RoutesMapActivity;


# direct methods
.method constructor <init>(Lcom/waze/routes/RoutesMapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/routes/RoutesMapActivity$3;->this$0:Lcom/waze/routes/RoutesMapActivity;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([Lcom/waze/routes/AlternativeRoute;)V
    .locals 3
    .parameter "routes"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/waze/routes/RoutesMapActivity$3;->this$0:Lcom/waze/routes/RoutesMapActivity;

    iput-object p1, v0, Lcom/waze/routes/RoutesMapActivity;->routes:[Lcom/waze/routes/AlternativeRoute;

    .line 91
    iget-object v0, p0, Lcom/waze/routes/RoutesMapActivity$3;->this$0:Lcom/waze/routes/RoutesMapActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    #calls: Lcom/waze/routes/RoutesMapActivity;->populateData(IZ)V
    invoke-static {v0, v1, v2}, Lcom/waze/routes/RoutesMapActivity;->access$3(Lcom/waze/routes/RoutesMapActivity;IZ)V

    .line 92
    return-void
.end method
