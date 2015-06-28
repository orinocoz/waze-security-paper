.class Lcom/waze/menus/MainMenu$14;
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
    iput-object p1, p0, Lcom/waze/menus/MainMenu$14;->this$0:Lcom/waze/menus/MainMenu;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 321
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/waze/share/ShareUtility;->shareLocationOrDrive(Lcom/waze/ifs/ui/ActivityBase;I)V

    .line 323
    const-string v0, "MAIN_MENU_CLICK"

    const-string v1, "VAUE"

    const-string v2, "SEND_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/waze/menus/MainMenu$14;->this$0:Lcom/waze/menus/MainMenu;

    invoke-virtual {v0}, Lcom/waze/menus/MainMenu;->dismiss()V

    .line 328
    return-void
.end method
