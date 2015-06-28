.class Lcom/waze/navbar/NavBar$2;
.super Ljava/lang/Object;
.source "NavBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navbar/NavBar;-><init>(Landroid/view/View;Lcom/waze/view/navbar/BottomBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navbar/NavBar;


# direct methods
.method constructor <init>(Lcom/waze/navbar/NavBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navbar/NavBar$2;->this$0:Lcom/waze/navbar/NavBar;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "paramView"

    .prologue
    .line 172
    iget-object v3, p0, Lcom/waze/navbar/NavBar$2;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v3}, Lcom/waze/navbar/NavBar;->access$10(Lcom/waze/navbar/NavBar;)Lcom/waze/NativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/NativeManager;->getNavBarManager()Lcom/waze/NavBarManager;

    move-result-object v2

    .line 173
    .local v2, navBarNativeManager:Lcom/waze/NavBarManager;
    invoke-virtual {v2}, Lcom/waze/NavBarManager;->showNavigationResult()V

    .line 175
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 176
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 178
    .local v0, layoutManager:Lcom/waze/LayoutManager;
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/waze/LayoutManager;->closeShareTooltip()V

    .line 183
    .end local v0           #layoutManager:Lcom/waze/LayoutManager;
    :cond_0
    return-void
.end method
