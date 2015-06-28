.class Lcom/waze/menus/MainMenu$3$1$1$1;
.super Ljava/lang/Object;
.source "MainMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/menus/MainMenu$3$1$1;->onComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/waze/menus/MainMenu$3$1$1;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/waze/menus/MainMenu$3$1$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/menus/MainMenu$3$1$1$1;->this$3:Lcom/waze/menus/MainMenu$3$1$1;

    iput p2, p0, Lcom/waze/menus/MainMenu$3$1$1$1;->val$position:I

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/waze/menus/MainMenu$3$1$1$1;->this$3:Lcom/waze/menus/MainMenu$3$1$1;

    #getter for: Lcom/waze/menus/MainMenu$3$1$1;->this$2:Lcom/waze/menus/MainMenu$3$1;
    invoke-static {v0}, Lcom/waze/menus/MainMenu$3$1$1;->access$0(Lcom/waze/menus/MainMenu$3$1$1;)Lcom/waze/menus/MainMenu$3$1;

    move-result-object v0

    #getter for: Lcom/waze/menus/MainMenu$3$1;->this$1:Lcom/waze/menus/MainMenu$3;
    invoke-static {v0}, Lcom/waze/menus/MainMenu$3$1;->access$0(Lcom/waze/menus/MainMenu$3$1;)Lcom/waze/menus/MainMenu$3;

    move-result-object v0

    #getter for: Lcom/waze/menus/MainMenu$3;->this$0:Lcom/waze/menus/MainMenu;
    invoke-static {v0}, Lcom/waze/menus/MainMenu$3;->access$0(Lcom/waze/menus/MainMenu$3;)Lcom/waze/menus/MainMenu;

    move-result-object v0

    #getter for: Lcom/waze/menus/MainMenu;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/menus/MainMenu;->access$2(Lcom/waze/menus/MainMenu;)Lcom/waze/NativeManager;

    move-result-object v0

    iget v1, p0, Lcom/waze/menus/MainMenu$3$1$1$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->toggleNavigationVoiceNTV(I)V

    .line 122
    return-void
.end method
