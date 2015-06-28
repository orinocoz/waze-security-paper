.class Lcom/waze/reports/ReportForm$4;
.super Ljava/lang/Object;
.source "ReportForm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/ReportForm;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/ReportForm;

.field private final synthetic val$descriptionView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/waze/reports/ReportForm;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/ReportForm$4;->this$0:Lcom/waze/reports/ReportForm;

    iput-object p2, p0, Lcom/waze/reports/ReportForm$4;->val$descriptionView:Landroid/widget/EditText;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/ReportForm$4;)Lcom/waze/reports/ReportForm;
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/waze/reports/ReportForm$4;->this$0:Lcom/waze/reports/ReportForm;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .parameter "v"

    .prologue
    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/ReportForm$4;->this$0:Lcom/waze/reports/ReportForm;

    invoke-virtual {v2}, Lcom/waze/reports/ReportForm;->stop()V

    .line 178
    const/16 v16, 0x0

    .line 179
    .local v16, tmpImageFilePath:Ljava/lang/String;
    const/4 v15, 0x0

    .line 180
    .local v15, tmpImageFileNameOnly:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/ReportForm$4;->this$0:Lcom/waze/reports/ReportForm;

    iget-object v2, v2, Lcom/waze/reports/ReportForm;->imageFilename:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/ReportForm$4;->this$0:Lcom/waze/reports/ReportForm;

    iget-object v2, v2, Lcom/waze/reports/ReportForm;->imageFilename:Ljava/lang/String;

    invoke-static {v2}, Lcom/waze/utils/FileUtils;->getOnlyPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/ReportForm$4;->this$0:Lcom/waze/reports/ReportForm;

    iget-object v2, v2, Lcom/waze/reports/ReportForm;->imageFilename:Ljava/lang/String;

    invoke-static {v2}, Lcom/waze/utils/FileUtils;->getFilenameOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 184
    :cond_0
    move-object/from16 v3, v16

    .line 185
    .local v3, imageFilePath:Ljava/lang/String;
    move-object v4, v15

    .line 186
    .local v4, imageFileNameOnly:Ljava/lang/String;
    const/4 v13, 0x0

    .line 187
    .local v13, tmpAudioFilePath:Ljava/lang/String;
    const/4 v12, 0x0

    .line 188
    .local v12, tmpAudioFileNameOnly:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/ReportForm$4;->this$0:Lcom/waze/reports/ReportForm;

    iget-object v2, v2, Lcom/waze/reports/ReportForm;->audioFilename:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/ReportForm$4;->this$0:Lcom/waze/reports/ReportForm;

    iget-object v2, v2, Lcom/waze/reports/ReportForm;->audioFilename:Ljava/lang/String;

    invoke-static {v2}, Lcom/waze/utils/FileUtils;->getOnlyPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/ReportForm$4;->this$0:Lcom/waze/reports/ReportForm;

    iget-object v2, v2, Lcom/waze/reports/ReportForm;->audioFilename:Ljava/lang/String;

    invoke-static {v2}, Lcom/waze/utils/FileUtils;->getFilenameOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 192
    :cond_1
    move-object v5, v13

    .line 193
    .local v5, audioFilePath:Ljava/lang/String;
    move-object v6, v12

    .line 194
    .local v6, audioFileNameOnly:Ljava/lang/String;
    const/4 v14, 0x0

    .line 195
    .local v14, tmpDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/ReportForm$4;->val$descriptionView:Landroid/widget/EditText;

    if-eqz v2, :cond_2

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/ReportForm$4;->val$descriptionView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    .line 198
    :cond_2
    move-object v7, v14

    .line 199
    .local v7, description:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/ReportForm$4;->this$0:Lcom/waze/reports/ReportForm;

    iget-boolean v2, v2, Lcom/waze/reports/ReportForm;->myLane:Z

    if-eqz v2, :cond_3

    const/4 v8, 0x1

    .line 200
    .local v8, direction:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/ReportForm$4;->this$0:Lcom/waze/reports/ReportForm;

    invoke-virtual {v2}, Lcom/waze/reports/ReportForm;->getReportType()I

    move-result v9

    .line 201
    .local v9, reportType:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/ReportForm$4;->this$0:Lcom/waze/reports/ReportForm;

    invoke-virtual {v2}, Lcom/waze/reports/ReportForm;->getReportSubtype()I

    move-result v10

    .line 202
    .local v10, reportSubtype:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/ReportForm$4;->this$0:Lcom/waze/reports/ReportForm;

    invoke-virtual {v2}, Lcom/waze/reports/ReportForm;->getDuration()I

    move-result v11

    .line 203
    .local v11, duration:I
    new-instance v1, Lcom/waze/reports/ReportForm$4$1;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v11}, Lcom/waze/reports/ReportForm$4$1;-><init>(Lcom/waze/reports/ReportForm$4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 209
    .local v1, doRun:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/ReportForm$4;->this$0:Lcom/waze/reports/ReportForm;

    iget-object v2, v2, Lcom/waze/reports/ReportForm;->reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v2}, Lcom/waze/reports/ReportMenu;->close()V

    .line 211
    return-void

    .line 199
    .end local v1           #doRun:Ljava/lang/Runnable;
    .end local v8           #direction:I
    .end local v9           #reportType:I
    .end local v10           #reportSubtype:I
    .end local v11           #duration:I
    :cond_3
    const/4 v8, 0x2

    goto :goto_0
.end method
