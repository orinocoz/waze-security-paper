.class Lcom/waze/menus/MainMenu$12;
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
    iput-object p1, p0, Lcom/waze/menus/MainMenu$12;->this$0:Lcom/waze/menus/MainMenu;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/menus/MainMenu$12;)Lcom/waze/menus/MainMenu;
    .locals 1
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lcom/waze/menus/MainMenu$12;->this$0:Lcom/waze/menus/MainMenu;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 286
    new-instance v4, Lcom/waze/menus/MainMenu$12$1;

    invoke-direct {v4, p0}, Lcom/waze/menus/MainMenu$12$1;-><init>(Lcom/waze/menus/MainMenu$12;)V

    .line 307
    .local v4, onClick:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/waze/MsgBox;->getInstance()Lcom/waze/MsgBox;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/menus/MainMenu$12;->this$0:Lcom/waze/menus/MainMenu;

    #getter for: Lcom/waze/menus/MainMenu;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/menus/MainMenu;->access$2(Lcom/waze/menus/MainMenu;)Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ARE_YOU_SURE_Q:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/menus/MainMenu$12;->this$0:Lcom/waze/menus/MainMenu;

    #getter for: Lcom/waze/menus/MainMenu;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v2}, Lcom/waze/menus/MainMenu;->access$2(Lcom/waze/menus/MainMenu;)Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_WILL_NO_LONGER_TRACK_YOU_ON_THE_MAP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 308
    const/4 v3, 0x1

    iget-object v5, p0, Lcom/waze/menus/MainMenu$12;->this$0:Lcom/waze/menus/MainMenu;

    #getter for: Lcom/waze/menus/MainMenu;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v5}, Lcom/waze/menus/MainMenu;->access$2(Lcom/waze/menus/MainMenu;)Lcom/waze/NativeManager;

    move-result-object v5

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_YES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/waze/menus/MainMenu$12;->this$0:Lcom/waze/menus/MainMenu;

    #getter for: Lcom/waze/menus/MainMenu;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v6}, Lcom/waze/menus/MainMenu;->access$2(Lcom/waze/menus/MainMenu;)Lcom/waze/NativeManager;

    move-result-object v6

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_NO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    .line 307
    invoke-virtual/range {v0 .. v7}, Lcom/waze/MsgBox;->OpenConfirmDialogCustomTimeoutCbJava(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 309
    return-void
.end method
