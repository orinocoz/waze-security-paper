.class Lcom/waze/menus/MainMenu$6;
.super Ljava/lang/Object;
.source "MainMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/menus/MainMenu;->initStaticAll()V
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
    iput-object p1, p0, Lcom/waze/menus/MainMenu$6;->this$0:Lcom/waze/menus/MainMenu;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/menus/MainMenu$6;)Lcom/waze/menus/MainMenu;
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/waze/menus/MainMenu$6;->this$0:Lcom/waze/menus/MainMenu;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/waze/menus/MainMenu$6;->this$0:Lcom/waze/menus/MainMenu;

    #getter for: Lcom/waze/menus/MainMenu;->mainLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/waze/menus/MainMenu;->access$4(Lcom/waze/menus/MainMenu;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/menus/MainMenu$6$1;

    invoke-direct {v1, p0}, Lcom/waze/menus/MainMenu$6$1;-><init>(Lcom/waze/menus/MainMenu$6;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 186
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 187
    return-void
.end method
