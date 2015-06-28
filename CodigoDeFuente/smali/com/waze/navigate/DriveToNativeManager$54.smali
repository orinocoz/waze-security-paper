.class Lcom/waze/navigate/DriveToNativeManager$54;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "DriveToNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->getAlternativeRoutes(Lcom/waze/navigate/DriveToNativeManager$AlternativeRoutesListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private routes:[Lcom/waze/routes/AlternativeRoute;

.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$listener:Lcom/waze/navigate/DriveToNativeManager$AlternativeRoutesListener;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$AlternativeRoutesListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$54;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$54;->val$listener:Lcom/waze/navigate/DriveToNativeManager$AlternativeRoutesListener;

    .line 1436
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$54;->val$listener:Lcom/waze/navigate/DriveToNativeManager$AlternativeRoutesListener;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$54;->routes:[Lcom/waze/routes/AlternativeRoute;

    invoke-interface {v0, v1}, Lcom/waze/navigate/DriveToNativeManager$AlternativeRoutesListener;->onComplete([Lcom/waze/routes/AlternativeRoute;)V

    .line 1447
    return-void
.end method

.method public event()V
    .locals 1

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$54;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->getAlternativeRoutesNTV()[Lcom/waze/routes/AlternativeRoute;
    invoke-static {v0}, Lcom/waze/navigate/DriveToNativeManager;->access$50(Lcom/waze/navigate/DriveToNativeManager;)[Lcom/waze/routes/AlternativeRoute;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$54;->routes:[Lcom/waze/routes/AlternativeRoute;

    .line 1442
    return-void
.end method
