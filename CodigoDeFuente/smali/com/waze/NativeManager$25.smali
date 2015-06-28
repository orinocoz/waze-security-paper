.class Lcom/waze/NativeManager$25;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->AutoCompleteAdsShown(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$Text:Ljava/lang/String;

.field private final synthetic val$Venue:Ljava/lang/String;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$25;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$25;->val$Venue:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/NativeManager$25;->val$Text:Ljava/lang/String;

    iput p4, p0, Lcom/waze/NativeManager$25;->val$position:I

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 559
    iget-object v0, p0, Lcom/waze/NativeManager$25;->this$0:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/NativeManager$25;->val$Venue:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/NativeManager$25;->val$Text:Ljava/lang/String;

    iget v3, p0, Lcom/waze/NativeManager$25;->val$position:I

    #calls: Lcom/waze/NativeManager;->AutoCompleteAdsShownNTV(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/waze/NativeManager;->access$42(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 560
    return-void
.end method
