.class Lcom/waze/reports/ReportForm$4$1;
.super Ljava/lang/Object;
.source "ReportForm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/ReportForm$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/reports/ReportForm$4;

.field private final synthetic val$audioFileNameOnly:Ljava/lang/String;

.field private final synthetic val$audioFilePath:Ljava/lang/String;

.field private final synthetic val$description:Ljava/lang/String;

.field private final synthetic val$direction:I

.field private final synthetic val$duration:I

.field private final synthetic val$imageFileNameOnly:Ljava/lang/String;

.field private final synthetic val$imageFilePath:Ljava/lang/String;

.field private final synthetic val$reportSubtype:I

.field private final synthetic val$reportType:I


# direct methods
.method constructor <init>(Lcom/waze/reports/ReportForm$4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/ReportForm$4$1;->this$1:Lcom/waze/reports/ReportForm$4;

    iput-object p2, p0, Lcom/waze/reports/ReportForm$4$1;->val$imageFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/reports/ReportForm$4$1;->val$imageFileNameOnly:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/reports/ReportForm$4$1;->val$audioFilePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/reports/ReportForm$4$1;->val$audioFileNameOnly:Ljava/lang/String;

    iput-object p6, p0, Lcom/waze/reports/ReportForm$4$1;->val$description:Ljava/lang/String;

    iput p7, p0, Lcom/waze/reports/ReportForm$4$1;->val$direction:I

    iput p8, p0, Lcom/waze/reports/ReportForm$4$1;->val$reportType:I

    iput p9, p0, Lcom/waze/reports/ReportForm$4$1;->val$reportSubtype:I

    iput p10, p0, Lcom/waze/reports/ReportForm$4$1;->val$duration:I

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 205
    iget-object v0, p0, Lcom/waze/reports/ReportForm$4$1;->this$1:Lcom/waze/reports/ReportForm$4;

    #getter for: Lcom/waze/reports/ReportForm$4;->this$0:Lcom/waze/reports/ReportForm;
    invoke-static {v0}, Lcom/waze/reports/ReportForm$4;->access$0(Lcom/waze/reports/ReportForm$4;)Lcom/waze/reports/ReportForm;

    move-result-object v0

    iget-object v0, v0, Lcom/waze/reports/ReportForm;->nativeManager:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/reports/ReportForm$4$1;->val$imageFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/reports/ReportForm$4$1;->val$imageFileNameOnly:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/reports/ReportForm$4$1;->val$audioFilePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/waze/reports/ReportForm$4$1;->val$audioFileNameOnly:Ljava/lang/String;

    iget-object v5, p0, Lcom/waze/reports/ReportForm$4$1;->val$description:Ljava/lang/String;

    iget v6, p0, Lcom/waze/reports/ReportForm$4$1;->val$direction:I

    .line 206
    iget v7, p0, Lcom/waze/reports/ReportForm$4$1;->val$reportType:I

    iget v8, p0, Lcom/waze/reports/ReportForm$4$1;->val$reportSubtype:I

    iget v9, p0, Lcom/waze/reports/ReportForm$4$1;->val$duration:I

    .line 205
    invoke-virtual/range {v0 .. v9}, Lcom/waze/NativeManager;->sendAlertRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 207
    return-void
.end method
