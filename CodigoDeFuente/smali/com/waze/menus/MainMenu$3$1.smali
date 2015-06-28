.class Lcom/waze/menus/MainMenu$3$1;
.super Ljava/lang/Object;
.source "MainMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/menus/MainMenu$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/menus/MainMenu$3;


# direct methods
.method constructor <init>(Lcom/waze/menus/MainMenu$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/menus/MainMenu$3$1;->this$1:Lcom/waze/menus/MainMenu$3;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/menus/MainMenu$3$1;)Lcom/waze/menus/MainMenu$3;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/waze/menus/MainMenu$3$1;->this$1:Lcom/waze/menus/MainMenu$3;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 113
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SOUND:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 114
    iget-object v2, p0, Lcom/waze/menus/MainMenu$3$1;->this$1:Lcom/waze/menus/MainMenu$3;

    #getter for: Lcom/waze/menus/MainMenu$3;->this$0:Lcom/waze/menus/MainMenu;
    invoke-static {v2}, Lcom/waze/menus/MainMenu$3;->access$0(Lcom/waze/menus/MainMenu$3;)Lcom/waze/menus/MainMenu;

    move-result-object v2

    #getter for: Lcom/waze/menus/MainMenu;->mDisplayOptions:[Ljava/lang/String;
    invoke-static {v2}, Lcom/waze/menus/MainMenu;->access$1(Lcom/waze/menus/MainMenu;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/waze/menus/MainMenu$3$1$1;

    invoke-direct {v3, p0}, Lcom/waze/menus/MainMenu$3$1$1;-><init>(Lcom/waze/menus/MainMenu$3$1;)V

    .line 112
    invoke-static {v0, v1, v2, v3}, Lcom/waze/settings/SettingsUtils;->showSubmenu(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/waze/settings/SettingsDialogListener;)V

    .line 127
    return-void
.end method
