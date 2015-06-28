.class Lcom/waze/main/navigate/NavigationResult$16;
.super Ljava/lang/Object;
.source "NavigationResult.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/main/navigate/NavigationResult;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/waze/user/FriendUserData;ZZ)V
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
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult$16;->this$0:Lcom/waze/main/navigate/NavigationResult;

    .line 1126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 1130
    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult$16;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/waze/main/navigate/NavigationResult;->access$8(Lcom/waze/main/navigate/NavigationResult;)Landroid/app/Dialog;

    move-result-object v2

    const v3, 0x7f09047f

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1131
    .local v0, root:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 1132
    .local v1, vto:Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1133
    new-instance v2, Lcom/waze/main/navigate/NavigationResult$16$1;

    invoke-direct {v2, p0}, Lcom/waze/main/navigate/NavigationResult$16$1;-><init>(Lcom/waze/main/navigate/NavigationResult$16;)V

    invoke-static {v0, v2}, Lcom/waze/view/anim/AnimationUtils;->openNavResultsFromRectangle(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    .line 1146
    return-void
.end method
