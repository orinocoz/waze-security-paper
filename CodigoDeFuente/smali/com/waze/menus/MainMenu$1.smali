.class Lcom/waze/menus/MainMenu$1;
.super Ljava/lang/Object;
.source "MainMenu.java"

# interfaces
.implements Lcom/waze/inbox/InboxNativeManager$InboxDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/menus/MainMenu;
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
    iput-object p1, p0, Lcom/waze/menus/MainMenu$1;->this$0:Lcom/waze/menus/MainMenu;

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData([Lcom/waze/inbox/InboxMessage;IIZ)V
    .locals 1
    .parameter "list"
    .parameter "badge"
    .parameter "unread"
    .parameter "more"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/waze/menus/MainMenu$1;->this$0:Lcom/waze/menus/MainMenu;

    #calls: Lcom/waze/menus/MainMenu;->setInboxBadge(I)V
    invoke-static {v0, p2}, Lcom/waze/menus/MainMenu;->access$0(Lcom/waze/menus/MainMenu;I)V

    .line 492
    return-void
.end method
