.class Lcom/waze/reports/RoadClosureReport$5;
.super Ljava/lang/Object;
.source "RoadClosureReport.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/RoadClosureReport;->showSubmenu(Ljava/lang/String;[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/RoadClosureReport;

.field private final synthetic val$optionValues:[I


# direct methods
.method constructor <init>(Lcom/waze/reports/RoadClosureReport;[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/RoadClosureReport$5;->this$0:Lcom/waze/reports/RoadClosureReport;

    iput-object p2, p0, Lcom/waze/reports/RoadClosureReport$5;->val$optionValues:[I

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/waze/reports/RoadClosureReport$5;->this$0:Lcom/waze/reports/RoadClosureReport;

    iget-object v1, p0, Lcom/waze/reports/RoadClosureReport$5;->val$optionValues:[I

    aget v1, v1, p2

    #setter for: Lcom/waze/reports/RoadClosureReport;->subSelected:I
    invoke-static {v0, v1}, Lcom/waze/reports/RoadClosureReport;->access$2(Lcom/waze/reports/RoadClosureReport;I)V

    .line 149
    return-void
.end method
