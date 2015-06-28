.class Lcom/waze/main/navigate/NavigationResult$21;
.super Ljava/lang/Object;
.source "NavigationResult.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/main/navigate/NavigationResult;->addSuggestions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/main/navigate/NavigationResult;


# direct methods
.method constructor <init>(Lcom/waze/main/navigate/NavigationResult;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult$21;->this$0:Lcom/waze/main/navigate/NavigationResult;

    .line 1514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$21;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mSendEtaTip:Lcom/waze/ifs/ui/TinyTooltip;
    invoke-static {v0}, Lcom/waze/main/navigate/NavigationResult;->access$24(Lcom/waze/main/navigate/NavigationResult;)Lcom/waze/ifs/ui/TinyTooltip;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$21;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mSendEtaTip:Lcom/waze/ifs/ui/TinyTooltip;
    invoke-static {v0}, Lcom/waze/main/navigate/NavigationResult;->access$24(Lcom/waze/main/navigate/NavigationResult;)Lcom/waze/ifs/ui/TinyTooltip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/ifs/ui/TinyTooltip;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1518
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$21;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mSendEtaTip:Lcom/waze/ifs/ui/TinyTooltip;
    invoke-static {v0}, Lcom/waze/main/navigate/NavigationResult;->access$24(Lcom/waze/main/navigate/NavigationResult;)Lcom/waze/ifs/ui/TinyTooltip;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/TinyTooltip;->dismiss(Z)V

    .line 1519
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$21;->this$0:Lcom/waze/main/navigate/NavigationResult;

    const/4 v1, 0x0

    #setter for: Lcom/waze/main/navigate/NavigationResult;->mSendEtaTip:Lcom/waze/ifs/ui/TinyTooltip;
    invoke-static {v0, v1}, Lcom/waze/main/navigate/NavigationResult;->access$25(Lcom/waze/main/navigate/NavigationResult;Lcom/waze/ifs/ui/TinyTooltip;)V

    .line 1521
    :cond_0
    return-void
.end method
