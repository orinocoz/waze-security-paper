.class Lcom/waze/menus/MainMenu$3$1$1;
.super Ljava/lang/Object;
.source "MainMenu.java"

# interfaces
.implements Lcom/waze/settings/SettingsDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/menus/MainMenu$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/waze/menus/MainMenu$3$1;


# direct methods
.method constructor <init>(Lcom/waze/menus/MainMenu$3$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/menus/MainMenu$3$1$1;->this$2:Lcom/waze/menus/MainMenu$3$1;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/menus/MainMenu$3$1$1;)Lcom/waze/menus/MainMenu$3$1;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/waze/menus/MainMenu$3$1$1;->this$2:Lcom/waze/menus/MainMenu$3$1;

    return-object v0
.end method


# virtual methods
.method public onComplete(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 117
    new-instance v0, Lcom/waze/menus/MainMenu$3$1$1$1;

    invoke-direct {v0, p0, p1}, Lcom/waze/menus/MainMenu$3$1$1$1;-><init>(Lcom/waze/menus/MainMenu$3$1$1;I)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 124
    iget-object v0, p0, Lcom/waze/menus/MainMenu$3$1$1;->this$2:Lcom/waze/menus/MainMenu$3$1;

    #getter for: Lcom/waze/menus/MainMenu$3$1;->this$1:Lcom/waze/menus/MainMenu$3;
    invoke-static {v0}, Lcom/waze/menus/MainMenu$3$1;->access$0(Lcom/waze/menus/MainMenu$3$1;)Lcom/waze/menus/MainMenu$3;

    move-result-object v0

    #getter for: Lcom/waze/menus/MainMenu$3;->this$0:Lcom/waze/menus/MainMenu;
    invoke-static {v0}, Lcom/waze/menus/MainMenu$3;->access$0(Lcom/waze/menus/MainMenu$3;)Lcom/waze/menus/MainMenu;

    move-result-object v0

    const/4 v1, 0x1

    #calls: Lcom/waze/menus/MainMenu;->updateMuteImage(ZI)V
    invoke-static {v0, v1, p1}, Lcom/waze/menus/MainMenu;->access$3(Lcom/waze/menus/MainMenu;ZI)V

    .line 125
    return-void
.end method
