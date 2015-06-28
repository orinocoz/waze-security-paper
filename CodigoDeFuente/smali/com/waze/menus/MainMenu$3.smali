.class Lcom/waze/menus/MainMenu$3;
.super Ljava/lang/Object;
.source "MainMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/menus/MainMenu;->initLayout()V
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
    iput-object p1, p0, Lcom/waze/menus/MainMenu$3;->this$0:Lcom/waze/menus/MainMenu;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/menus/MainMenu$3;)Lcom/waze/menus/MainMenu;
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/waze/menus/MainMenu$3;->this$0:Lcom/waze/menus/MainMenu;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 107
    const-string v0, "MAIN_MENU_CLICK"

    const-string v1, "VAUE"

    const-string v2, "MUTE_TOGGLE"

    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v0, Lcom/waze/menus/MainMenu$3$1;

    invoke-direct {v0, p0}, Lcom/waze/menus/MainMenu$3$1;-><init>(Lcom/waze/menus/MainMenu$3;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method
