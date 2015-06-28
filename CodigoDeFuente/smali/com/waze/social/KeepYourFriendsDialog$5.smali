.class Lcom/waze/social/KeepYourFriendsDialog$5;
.super Ljava/lang/Object;
.source "KeepYourFriendsDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/social/KeepYourFriendsDialog;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/social/KeepYourFriendsDialog;

.field private final synthetic val$dialog:Landroid/view/View;

.field private final synthetic val$x:I

.field private final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/waze/social/KeepYourFriendsDialog;Landroid/view/View;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/social/KeepYourFriendsDialog$5;->this$0:Lcom/waze/social/KeepYourFriendsDialog;

    iput-object p2, p0, Lcom/waze/social/KeepYourFriendsDialog$5;->val$dialog:Landroid/view/View;

    iput p3, p0, Lcom/waze/social/KeepYourFriendsDialog$5;->val$x:I

    iput p4, p0, Lcom/waze/social/KeepYourFriendsDialog$5;->val$y:I

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/waze/social/KeepYourFriendsDialog$5;->val$dialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 165
    iget-object v0, p0, Lcom/waze/social/KeepYourFriendsDialog$5;->this$0:Lcom/waze/social/KeepYourFriendsDialog;

    iget v1, p0, Lcom/waze/social/KeepYourFriendsDialog$5;->val$x:I

    iget v2, p0, Lcom/waze/social/KeepYourFriendsDialog$5;->val$y:I

    invoke-virtual {v0, v1, v2}, Lcom/waze/social/KeepYourFriendsDialog;->animate(II)V

    .line 166
    return-void
.end method
