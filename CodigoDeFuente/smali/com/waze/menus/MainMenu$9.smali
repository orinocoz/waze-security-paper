.class Lcom/waze/menus/MainMenu$9;
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
    iput-object p1, p0, Lcom/waze/menus/MainMenu$9;->this$0:Lcom/waze/menus/MainMenu;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/menus/MainMenu$9;)Lcom/waze/menus/MainMenu;
    .locals 1
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/waze/menus/MainMenu$9;->this$0:Lcom/waze/menus/MainMenu;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 234
    const-string v0, "MAIN_MENU_CLICK"

    const-string v1, "VAUE"

    const-string v2, "STOP_NAV"

    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    new-instance v0, Lcom/waze/menus/MainMenu$9$1;

    invoke-direct {v0, p0}, Lcom/waze/menus/MainMenu$9$1;-><init>(Lcom/waze/menus/MainMenu$9;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 242
    iget-object v0, p0, Lcom/waze/menus/MainMenu$9;->this$0:Lcom/waze/menus/MainMenu;

    invoke-virtual {v0}, Lcom/waze/menus/MainMenu;->close()V

    .line 243
    return-void
.end method
