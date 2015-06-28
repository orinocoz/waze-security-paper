.class Lcom/waze/routes/RoutesMapActivity$4;
.super Ljava/lang/Object;
.source "RoutesMapActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$MajorEventsOnRouteListener;


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
    iput-object p1, p0, Lcom/waze/routes/RoutesMapActivity$4;->this$0:Lcom/waze/routes/RoutesMapActivity;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([Lcom/waze/main/navigate/MajorEventOnRoute;)V
    .locals 6
    .parameter "events"

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 109
    :cond_0
    return-void

    .line 98
    :cond_1
    aget-object v0, p1, v2

    .line 99
    .local v0, event:Lcom/waze/main/navigate/MajorEventOnRoute;
    iget v4, v0, Lcom/waze/main/navigate/MajorEventOnRoute;->alertType:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_2

    .line 100
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/waze/routes/RoutesMapActivity$4;->this$0:Lcom/waze/routes/RoutesMapActivity;

    iget-object v4, v4, Lcom/waze/routes/RoutesMapActivity;->routes:[Lcom/waze/routes/AlternativeRoute;

    array-length v4, v4

    if-lt v1, v4, :cond_3

    .line 98
    .end local v1           #i:I
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .restart local v1       #i:I
    :cond_3
    iget v4, v0, Lcom/waze/main/navigate/MajorEventOnRoute;->alertRouteId:I

    iget-object v5, p0, Lcom/waze/routes/RoutesMapActivity$4;->this$0:Lcom/waze/routes/RoutesMapActivity;

    iget-object v5, v5, Lcom/waze/routes/RoutesMapActivity;->routes:[Lcom/waze/routes/AlternativeRoute;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/waze/routes/AlternativeRoute;->id:I

    if-ne v4, v5, :cond_4

    .line 102
    iget-object v4, p0, Lcom/waze/routes/RoutesMapActivity$4;->this$0:Lcom/waze/routes/RoutesMapActivity;

    iget-object v4, v4, Lcom/waze/routes/RoutesMapActivity;->routes:[Lcom/waze/routes/AlternativeRoute;

    aget-object v4, v4, v1

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/waze/routes/AlternativeRoute;->closure:Z

    goto :goto_2

    .line 100
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
