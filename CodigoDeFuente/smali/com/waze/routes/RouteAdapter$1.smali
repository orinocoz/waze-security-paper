.class Lcom/waze/routes/RouteAdapter$1;
.super Ljava/lang/Object;
.source "RouteAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/routes/RouteAdapter;->getRouteView(ILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/routes/RouteAdapter;

.field private final synthetic val$myView:Landroid/view/View;

.field private final synthetic val$route:Lcom/waze/routes/AlternativeRoute;


# direct methods
.method constructor <init>(Lcom/waze/routes/RouteAdapter;Landroid/view/View;Lcom/waze/routes/AlternativeRoute;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/routes/RouteAdapter$1;->this$0:Lcom/waze/routes/RouteAdapter;

    iput-object p2, p0, Lcom/waze/routes/RouteAdapter$1;->val$myView:Landroid/view/View;

    iput-object p3, p0, Lcom/waze/routes/RouteAdapter$1;->val$route:Lcom/waze/routes/AlternativeRoute;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/waze/routes/RouteAdapter$1;->this$0:Lcom/waze/routes/RouteAdapter;

    iget-object v1, p0, Lcom/waze/routes/RouteAdapter$1;->val$myView:Landroid/view/View;

    iget-object v2, p0, Lcom/waze/routes/RouteAdapter$1;->val$route:Lcom/waze/routes/AlternativeRoute;

    #calls: Lcom/waze/routes/RouteAdapter;->populateEventsOnRoute(Landroid/view/View;Lcom/waze/routes/AlternativeRoute;)V
    invoke-static {v0, v1, v2}, Lcom/waze/routes/RouteAdapter;->access$0(Lcom/waze/routes/RouteAdapter;Landroid/view/View;Lcom/waze/routes/AlternativeRoute;)V

    .line 144
    return-void
.end method
