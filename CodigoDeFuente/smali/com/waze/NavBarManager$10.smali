.class Lcom/waze/NavBarManager$10;
.super Ljava/lang/Object;
.source "NavBarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NavBarManager;->set_next_instruction(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NavBarManager;

.field private final synthetic val$instruction:I


# direct methods
.method constructor <init>(Lcom/waze/NavBarManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NavBarManager$10;->this$0:Lcom/waze/NavBarManager;

    iput p2, p0, Lcom/waze/NavBarManager$10;->val$instruction:I

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 164
    invoke-static {}, Lcom/waze/NavBarManager;->access$2()Lcom/waze/navbar/NavBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Lcom/waze/NavBarManager;->access$2()Lcom/waze/navbar/NavBar;

    move-result-object v0

    iget v1, p0, Lcom/waze/NavBarManager$10;->val$instruction:I

    invoke-virtual {v0, v1}, Lcom/waze/navbar/NavBar;->setNextInstruction(I)V

    .line 167
    :cond_0
    return-void
.end method
