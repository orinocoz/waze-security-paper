.class Lcom/waze/main/navigate/NavigationResult$19;
.super Ljava/lang/Object;
.source "NavigationResult.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/main/navigate/NavigationResult;->displayEventsOnRoute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/main/navigate/NavigationResult;

.field private final synthetic val$trafficEventsLayout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/waze/main/navigate/NavigationResult;Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult$19;->this$0:Lcom/waze/main/navigate/NavigationResult;

    iput-object p2, p0, Lcom/waze/main/navigate/NavigationResult$19;->val$trafficEventsLayout:Landroid/widget/RelativeLayout;

    .line 1273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/main/navigate/NavigationResult$19;)Lcom/waze/main/navigate/NavigationResult;
    .locals 1
    .parameter

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$19;->this$0:Lcom/waze/main/navigate/NavigationResult;

    return-object v0
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 1276
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    .line 1277
    .local v0, nativeManager:Lcom/waze/navigate/DriveToNativeManager;
    new-instance v2, Lcom/waze/main/navigate/NavigationResult$19$1;

    invoke-direct {v2, p0}, Lcom/waze/main/navigate/NavigationResult$19$1;-><init>(Lcom/waze/main/navigate/NavigationResult$19;)V

    invoke-virtual {v0, v2}, Lcom/waze/navigate/DriveToNativeManager;->getEventsOnRoute(Lcom/waze/navigate/DriveToNativeManager$EventsOnRouteListener;)V

    .line 1283
    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult$19;->val$trafficEventsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 1284
    .local v1, obs:Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1285
    return-void
.end method
