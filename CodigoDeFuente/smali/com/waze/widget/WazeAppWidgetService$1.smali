.class Lcom/waze/widget/WazeAppWidgetService$1;
.super Ljava/lang/Object;
.source "WazeAppWidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/widget/WazeAppWidgetService;->alertUser(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/widget/WazeAppWidgetService$1;->val$str:Ljava/lang/String;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private makePrintFriendly(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "str"

    .prologue
    .line 194
    const-string v2, "{"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "}"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, formattedStr:Ljava/lang/String;
    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 196
    .local v1, indexOfPipe:I
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 197
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    :cond_0
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 186
    iget-object v2, p0, Lcom/waze/widget/WazeAppWidgetService$1;->val$str:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/waze/widget/WazeAppWidgetService$1;->makePrintFriendly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, formattedStr:Ljava/lang/String;
    invoke-static {}, Lcom/waze/widget/WazeAppWidgetService;->access$0()Lcom/waze/widget/WazeAppWidgetService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/widget/WazeAppWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 190
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 191
    return-void
.end method
