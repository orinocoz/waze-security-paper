.class Lcom/waze/main/navigate/NavigationResult$20$1;
.super Ljava/lang/Object;
.source "NavigationResult.java"

# interfaces
.implements Lcom/waze/phone/PhoneRequestAccessDialog$PhoneRequestAccessResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/main/navigate/NavigationResult$20;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/main/navigate/NavigationResult$20;


# direct methods
.method constructor <init>(Lcom/waze/main/navigate/NavigationResult$20;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult$20$1;->this$1:Lcom/waze/main/navigate/NavigationResult$20;

    .line 1429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 2
    .parameter "okToAccess"

    .prologue
    .line 1433
    if-eqz p1, :cond_0

    .line 1435
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$20$1;->this$1:Lcom/waze/main/navigate/NavigationResult$20;

    #getter for: Lcom/waze/main/navigate/NavigationResult$20;->this$0:Lcom/waze/main/navigate/NavigationResult;
    invoke-static {v0}, Lcom/waze/main/navigate/NavigationResult$20;->access$0(Lcom/waze/main/navigate/NavigationResult$20;)Lcom/waze/main/navigate/NavigationResult;

    move-result-object v0

    const/4 v1, 0x0

    #setter for: Lcom/waze/main/navigate/NavigationResult;->mGoOnReturnFromAddMore:Z
    invoke-static {v0, v1}, Lcom/waze/main/navigate/NavigationResult;->access$5(Lcom/waze/main/navigate/NavigationResult;Z)V

    .line 1436
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$20$1;->this$1:Lcom/waze/main/navigate/NavigationResult$20;

    #getter for: Lcom/waze/main/navigate/NavigationResult$20;->this$0:Lcom/waze/main/navigate/NavigationResult;
    invoke-static {v0}, Lcom/waze/main/navigate/NavigationResult$20;->access$0(Lcom/waze/main/navigate/NavigationResult$20;)Lcom/waze/main/navigate/NavigationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/main/navigate/NavigationResult;->openAddFromActivity()V

    .line 1438
    :cond_0
    return-void
.end method
