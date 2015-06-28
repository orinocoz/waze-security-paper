.class Lcom/waze/menus/MainMenu$9$1;
.super Ljava/lang/Object;
.source "MainMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/menus/MainMenu$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/menus/MainMenu$9;


# direct methods
.method constructor <init>(Lcom/waze/menus/MainMenu$9;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/menus/MainMenu$9$1;->this$1:Lcom/waze/menus/MainMenu$9;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/waze/menus/MainMenu$9$1;->this$1:Lcom/waze/menus/MainMenu$9;

    #getter for: Lcom/waze/menus/MainMenu$9;->this$0:Lcom/waze/menus/MainMenu;
    invoke-static {v0}, Lcom/waze/menus/MainMenu$9;->access$0(Lcom/waze/menus/MainMenu$9;)Lcom/waze/menus/MainMenu;

    move-result-object v0

    #getter for: Lcom/waze/menus/MainMenu;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/menus/MainMenu;->access$2(Lcom/waze/menus/MainMenu;)Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->stopNavigationNTV()V

    .line 240
    return-void
.end method
