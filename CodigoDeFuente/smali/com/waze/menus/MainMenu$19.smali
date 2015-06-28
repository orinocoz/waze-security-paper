.class Lcom/waze/menus/MainMenu$19;
.super Ljava/lang/Object;
.source "MainMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/menus/MainMenu;->open()V
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
    iput-object p1, p0, Lcom/waze/menus/MainMenu$19;->this$0:Lcom/waze/menus/MainMenu;

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 474
    const-string v0, "MAIN_MENU_SHOWN"

    invoke-static {v0}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/waze/menus/MainMenu$19;->this$0:Lcom/waze/menus/MainMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/menus/MainMenu;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 476
    return-void
.end method
