.class Lcom/waze/menus/MainMenu$7;
.super Ljava/lang/Object;
.source "MainMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/waze/menus/MainMenu$7;->this$0:Lcom/waze/menus/MainMenu;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/waze/menus/MainMenu$7;->this$0:Lcom/waze/menus/MainMenu;

    invoke-virtual {v0}, Lcom/waze/menus/MainMenu;->close()V

    .line 193
    return-void
.end method
