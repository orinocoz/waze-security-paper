.class Lcom/waze/menus/MainMenu$12$1;
.super Ljava/lang/Object;
.source "MainMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/menus/MainMenu$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/menus/MainMenu$12;


# direct methods
.method constructor <init>(Lcom/waze/menus/MainMenu$12;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/menus/MainMenu$12$1;->this$1:Lcom/waze/menus/MainMenu$12;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 291
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 293
    new-instance v0, Lcom/waze/menus/MainMenu$12$1$1;

    invoke-direct {v0, p0}, Lcom/waze/menus/MainMenu$12$1$1;-><init>(Lcom/waze/menus/MainMenu$12$1;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 300
    iget-object v0, p0, Lcom/waze/menus/MainMenu$12$1;->this$1:Lcom/waze/menus/MainMenu$12;

    #getter for: Lcom/waze/menus/MainMenu$12;->this$0:Lcom/waze/menus/MainMenu;
    invoke-static {v0}, Lcom/waze/menus/MainMenu$12;->access$0(Lcom/waze/menus/MainMenu$12;)Lcom/waze/menus/MainMenu;

    move-result-object v0

    const v1, 0x7f0903c7

    invoke-virtual {v0, v1}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/waze/menus/MainMenu$12$1;->this$1:Lcom/waze/menus/MainMenu$12;

    #getter for: Lcom/waze/menus/MainMenu$12;->this$0:Lcom/waze/menus/MainMenu;
    invoke-static {v0}, Lcom/waze/menus/MainMenu$12;->access$0(Lcom/waze/menus/MainMenu$12;)Lcom/waze/menus/MainMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/menus/MainMenu;->close()V

    .line 303
    :cond_0
    return-void
.end method
