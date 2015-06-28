.class Lcom/waze/rtalerts/RTAlertsMenu$1;
.super Ljava/lang/Object;
.source "RTAlertsMenu.java"

# interfaces
.implements Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsMenuDataHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/rtalerts/RTAlertsMenu;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/rtalerts/RTAlertsMenu;


# direct methods
.method constructor <init>(Lcom/waze/rtalerts/RTAlertsMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsMenu$1;->this$0:Lcom/waze/rtalerts/RTAlertsMenu;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/String;[Lcom/waze/rtalerts/RTAlertsMenuData;)V
    .locals 1
    .parameter "title"
    .parameter "data"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsMenu$1;->this$0:Lcom/waze/rtalerts/RTAlertsMenu;

    invoke-virtual {v0, p1, p2}, Lcom/waze/rtalerts/RTAlertsMenu;->updateMenu(Ljava/lang/String;[Lcom/waze/rtalerts/RTAlertsMenuData;)V

    .line 52
    return-void
.end method
