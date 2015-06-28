.class Lcom/waze/menus/MainMenu$13;
.super Ljava/lang/Object;
.source "MainMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/menus/MainMenu;->initStaticFull()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/menus/MainMenu;


# direct methods
.method constructor <init>(Lcom/waze/menus/MainMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/menus/MainMenu$13;->this$0:Lcom/waze/menus/MainMenu;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 315
    const-string v0, "MAIN_MENU_CLICK"

    const-string v1, "VAUE"

    const-string v2, "MY_WAZE"

    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/menus/MainMenu$13;->this$0:Lcom/waze/menus/MainMenu;

    invoke-virtual {v1}, Lcom/waze/menus/MainMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager;->launchMyWaze(Landroid/content/Context;)V

    .line 317
    return-void
.end method
