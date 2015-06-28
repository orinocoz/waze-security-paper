.class Lcom/waze/routes/RoutesMapActivity$2;
.super Ljava/lang/Object;
.source "RoutesMapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/routes/RoutesMapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/routes/RoutesMapActivity;


# direct methods
.method constructor <init>(Lcom/waze/routes/RoutesMapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/routes/RoutesMapActivity$2;->this$0:Lcom/waze/routes/RoutesMapActivity;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/routes/RoutesMapActivity$2;)Lcom/waze/routes/RoutesMapActivity;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/waze/routes/RoutesMapActivity$2;->this$0:Lcom/waze/routes/RoutesMapActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/waze/routes/RoutesMapActivity$2;->this$0:Lcom/waze/routes/RoutesMapActivity;

    iget-object v0, v0, Lcom/waze/routes/RoutesMapActivity;->routes:[Lcom/waze/routes/AlternativeRoute;

    iget-object v1, p0, Lcom/waze/routes/RoutesMapActivity$2;->this$0:Lcom/waze/routes/RoutesMapActivity;

    #getter for: Lcom/waze/routes/RoutesMapActivity;->selected:I
    invoke-static {v1}, Lcom/waze/routes/RoutesMapActivity;->access$0(Lcom/waze/routes/RoutesMapActivity;)I

    move-result v1

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/waze/routes/AlternativeRoute;->closure:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lcom/waze/MsgBox;->getInstance()Lcom/waze/MsgBox;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/waze/routes/RoutesMapActivity$2;->this$0:Lcom/waze/routes/RoutesMapActivity;

    #getter for: Lcom/waze/routes/RoutesMapActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/routes/RoutesMapActivity;->access$1(Lcom/waze/routes/RoutesMapActivity;)Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ARE_YOU_SURE_Q:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/waze/routes/RoutesMapActivity$2;->this$0:Lcom/waze/routes/RoutesMapActivity;

    #getter for: Lcom/waze/routes/RoutesMapActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v2}, Lcom/waze/routes/RoutesMapActivity;->access$1(Lcom/waze/routes/RoutesMapActivity;)Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_ALTERNATIVE_CLOSURE_SELECTED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 69
    const/4 v3, 0x0

    .line 70
    new-instance v4, Lcom/waze/routes/RoutesMapActivity$2$1;

    invoke-direct {v4, p0}, Lcom/waze/routes/RoutesMapActivity$2$1;-><init>(Lcom/waze/routes/RoutesMapActivity$2;)V

    .line 78
    iget-object v5, p0, Lcom/waze/routes/RoutesMapActivity$2;->this$0:Lcom/waze/routes/RoutesMapActivity;

    #getter for: Lcom/waze/routes/RoutesMapActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v5}, Lcom/waze/routes/RoutesMapActivity;->access$1(Lcom/waze/routes/RoutesMapActivity;)Lcom/waze/NativeManager;

    move-result-object v5

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_YES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 79
    iget-object v6, p0, Lcom/waze/routes/RoutesMapActivity$2;->this$0:Lcom/waze/routes/RoutesMapActivity;

    #getter for: Lcom/waze/routes/RoutesMapActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v6}, Lcom/waze/routes/RoutesMapActivity;->access$1(Lcom/waze/routes/RoutesMapActivity;)Lcom/waze/NativeManager;

    move-result-object v6

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_NO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    .line 80
    const/4 v7, -0x1

    .line 66
    invoke-virtual/range {v0 .. v7}, Lcom/waze/MsgBox;->OpenConfirmDialogCustomTimeoutCbJava(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/waze/routes/RoutesMapActivity$2;->this$0:Lcom/waze/routes/RoutesMapActivity;

    #calls: Lcom/waze/routes/RoutesMapActivity;->routeConfirmed()V
    invoke-static {v0}, Lcom/waze/routes/RoutesMapActivity;->access$2(Lcom/waze/routes/RoutesMapActivity;)V

    goto :goto_0
.end method
