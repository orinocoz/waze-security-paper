.class Lcom/waze/menus/MainMenu$6$1;
.super Ljava/lang/Object;
.source "MainMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/menus/MainMenu$6;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/menus/MainMenu$6;


# direct methods
.method constructor <init>(Lcom/waze/menus/MainMenu$6;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/menus/MainMenu$6$1;->this$1:Lcom/waze/menus/MainMenu$6;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/waze/menus/MainMenu$6$1;->this$1:Lcom/waze/menus/MainMenu$6;

    #getter for: Lcom/waze/menus/MainMenu$6;->this$0:Lcom/waze/menus/MainMenu;
    invoke-static {v0}, Lcom/waze/menus/MainMenu$6;->access$0(Lcom/waze/menus/MainMenu$6;)Lcom/waze/menus/MainMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/menus/MainMenu;->dismiss()V

    .line 183
    return-void
.end method
