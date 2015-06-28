.class Lcom/waze/share/UserDetailsActivity$13;
.super Ljava/lang/Object;
.source "UserDetailsActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$EndDriveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/UserDetailsActivity;->getDestinationData(Ljava/lang/String;Lcom/waze/view/text/WazeTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/UserDetailsActivity;

.field private final synthetic val$toSet:Lcom/waze/view/text/WazeTextView;


# direct methods
.method constructor <init>(Lcom/waze/share/UserDetailsActivity;Lcom/waze/view/text/WazeTextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/UserDetailsActivity$13;->this$0:Lcom/waze/share/UserDetailsActivity;

    iput-object p2, p0, Lcom/waze/share/UserDetailsActivity$13;->val$toSet:Lcom/waze/view/text/WazeTextView;

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/waze/navigate/social/EndDriveData;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 580
    if-eqz p1, :cond_0

    .line 581
    iget-object v0, p0, Lcom/waze/share/UserDetailsActivity$13;->val$toSet:Lcom/waze/view/text/WazeTextView;

    iget-object v1, p1, Lcom/waze/navigate/social/EndDriveData;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    :cond_0
    return-void
.end method
