.class Lcom/waze/NativeManager$188;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "NativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->GetTitle(Ljava/lang/String;Lcom/waze/navigate/SearchActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private title:Ljava/lang/String;

.field private final synthetic val$Category:Ljava/lang/String;

.field private final synthetic val$listener:Lcom/waze/navigate/SearchActivity;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Ljava/lang/String;Lcom/waze/navigate/SearchActivity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$188;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$188;->val$Category:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/NativeManager$188;->val$listener:Lcom/waze/navigate/SearchActivity;

    .line 5550
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 5560
    iget-object v0, p0, Lcom/waze/NativeManager$188;->val$listener:Lcom/waze/navigate/SearchActivity;

    iget-object v1, p0, Lcom/waze/NativeManager$188;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waze/navigate/SearchActivity;->InitTitle(Ljava/lang/String;)V

    .line 5561
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 5555
    iget-object v0, p0, Lcom/waze/NativeManager$188;->this$0:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/NativeManager$188;->val$Category:Ljava/lang/String;

    #calls: Lcom/waze/NativeManager;->GetTitleNTV(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/waze/NativeManager;->access$110(Lcom/waze/NativeManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/NativeManager$188;->title:Ljava/lang/String;

    .line 5556
    return-void
.end method
