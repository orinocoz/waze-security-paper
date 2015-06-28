.class Lcom/waze/MoodManager$1;
.super Ljava/lang/Object;
.source "MoodManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MoodManager;->refreshMood()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/MoodManager;

.field private final synthetic val$addon:I

.field private final synthetic val$baby:Z

.field private final synthetic val$exclusive:I

.field private final synthetic val$milage:I

.field private final synthetic val$mood:Ljava/lang/String;

.field private final synthetic val$unit:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/MoodManager;Ljava/lang/String;ZIIILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MoodManager$1;->this$0:Lcom/waze/MoodManager;

    iput-object p2, p0, Lcom/waze/MoodManager$1;->val$mood:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/waze/MoodManager$1;->val$baby:Z

    iput p4, p0, Lcom/waze/MoodManager$1;->val$addon:I

    iput p5, p0, Lcom/waze/MoodManager$1;->val$exclusive:I

    iput p6, p0, Lcom/waze/MoodManager$1;->val$milage:I

    iput-object p7, p0, Lcom/waze/MoodManager$1;->val$unit:Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 38
    iget-object v2, p0, Lcom/waze/MoodManager$1;->this$0:Lcom/waze/MoodManager;

    iget-object v3, p0, Lcom/waze/MoodManager$1;->val$mood:Ljava/lang/String;

    #setter for: Lcom/waze/MoodManager;->wazerMood:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/waze/MoodManager;->access$0(Lcom/waze/MoodManager;Ljava/lang/String;)V

    .line 39
    iget-object v2, p0, Lcom/waze/MoodManager$1;->this$0:Lcom/waze/MoodManager;

    iget-boolean v3, p0, Lcom/waze/MoodManager$1;->val$baby:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #setter for: Lcom/waze/MoodManager;->baby:Ljava/lang/Boolean;
    invoke-static {v2, v3}, Lcom/waze/MoodManager;->access$1(Lcom/waze/MoodManager;Ljava/lang/Boolean;)V

    .line 40
    iget-object v2, p0, Lcom/waze/MoodManager$1;->this$0:Lcom/waze/MoodManager;

    iget v3, p0, Lcom/waze/MoodManager$1;->val$addon:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #setter for: Lcom/waze/MoodManager;->addon:Ljava/lang/Integer;
    invoke-static {v2, v3}, Lcom/waze/MoodManager;->access$2(Lcom/waze/MoodManager;Ljava/lang/Integer;)V

    .line 41
    iget-object v2, p0, Lcom/waze/MoodManager$1;->this$0:Lcom/waze/MoodManager;

    iget v3, p0, Lcom/waze/MoodManager$1;->val$exclusive:I

    #setter for: Lcom/waze/MoodManager;->exclusiveMoodLevel:I
    invoke-static {v2, v3}, Lcom/waze/MoodManager;->access$3(Lcom/waze/MoodManager;I)V

    .line 42
    iget-object v2, p0, Lcom/waze/MoodManager$1;->this$0:Lcom/waze/MoodManager;

    iget v3, p0, Lcom/waze/MoodManager$1;->val$milage:I

    #setter for: Lcom/waze/MoodManager;->newbieMilage:I
    invoke-static {v2, v3}, Lcom/waze/MoodManager;->access$4(Lcom/waze/MoodManager;I)V

    .line 43
    iget-object v2, p0, Lcom/waze/MoodManager$1;->this$0:Lcom/waze/MoodManager;

    iget-object v3, p0, Lcom/waze/MoodManager$1;->val$unit:Ljava/lang/String;

    #setter for: Lcom/waze/MoodManager;->newbieMilageUnit:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/waze/MoodManager;->access$5(Lcom/waze/MoodManager;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 45
    .local v0, ma:Lcom/waze/MainActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/LayoutManager;->getMainMenu()Lcom/waze/menus/MainMenu;

    move-result-object v1

    .line 47
    .local v1, menu:Lcom/waze/menus/MainMenu;
    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v1}, Lcom/waze/menus/MainMenu;->refresh()V

    .line 51
    .end local v1           #menu:Lcom/waze/menus/MainMenu;
    :cond_0
    return-void
.end method
