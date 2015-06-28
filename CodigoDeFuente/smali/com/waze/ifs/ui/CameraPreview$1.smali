.class Lcom/waze/ifs/ui/CameraPreview$1;
.super Landroid/view/OrientationEventListener;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ifs/ui/CameraPreview;->createOrientationListener()Landroid/view/OrientationEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastOrintation:I

.field final synthetic this$0:Lcom/waze/ifs/ui/CameraPreview;


# direct methods
.method constructor <init>(Lcom/waze/ifs/ui/CameraPreview;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ifs/ui/CameraPreview$1;->this$0:Lcom/waze/ifs/ui/CameraPreview;

    .line 105
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/waze/ifs/ui/CameraPreview$1;->lastOrintation:I

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 10
    .parameter "orientation"

    .prologue
    const/4 v9, 0x1

    .line 109
    :try_start_0
    iget-object v7, p0, Lcom/waze/ifs/ui/CameraPreview$1;->this$0:Lcom/waze/ifs/ui/CameraPreview;

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v7}, Lcom/waze/ifs/ui/CameraPreview;->access$11(Lcom/waze/ifs/ui/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/waze/ifs/ui/CameraPreview$1;->this$0:Lcom/waze/ifs/ui/CameraPreview;

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mInfo:Landroid/hardware/Camera$CameraInfo;
    invoke-static {v7}, Lcom/waze/ifs/ui/CameraPreview;->access$12(Lcom/waze/ifs/ui/CameraPreview;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v7

    if-nez v7, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const/4 v7, -0x1

    if-eq p1, v7, :cond_0

    .line 112
    add-int/lit8 v7, p1, 0x2d

    div-int/lit8 v7, v7, 0x5a

    mul-int/lit8 p1, v7, 0x5a

    .line 113
    iget v7, p0, Lcom/waze/ifs/ui/CameraPreview$1;->lastOrintation:I

    if-eq v7, p1, :cond_0

    .line 114
    iput p1, p0, Lcom/waze/ifs/ui/CameraPreview$1;->lastOrintation:I

    .line 116
    iget-object v7, p0, Lcom/waze/ifs/ui/CameraPreview$1;->this$0:Lcom/waze/ifs/ui/CameraPreview;

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v7}, Lcom/waze/ifs/ui/CameraPreview;->access$11(Lcom/waze/ifs/ui/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 117
    .local v2, parameters:Landroid/hardware/Camera$Parameters;
    iget-object v7, p0, Lcom/waze/ifs/ui/CameraPreview$1;->this$0:Lcom/waze/ifs/ui/CameraPreview;

    iget-object v7, v7, Lcom/waze/ifs/ui/CameraPreview;->mContext:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 118
    .local v6, wm:Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 120
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v5

    .line 121
    .local v5, rotation:I
    const/4 v1, 0x0

    .line 122
    .local v1, orient:I
    const/4 v4, 0x0

    .line 124
    .local v4, rotate:I
    if-nez v5, :cond_3

    .line 125
    const/4 v1, 0x0

    .line 126
    const/16 v4, 0x5a

    .line 137
    :cond_2
    :goto_1
    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 139
    iget-object v7, p0, Lcom/waze/ifs/ui/CameraPreview$1;->this$0:Lcom/waze/ifs/ui/CameraPreview;

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mInfo:Landroid/hardware/Camera$CameraInfo;
    invoke-static {v7}, Lcom/waze/ifs/ui/CameraPreview;->access$12(Lcom/waze/ifs/ui/CameraPreview;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v7

    iget v7, v7, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v7, v9, :cond_6

    .line 140
    iget-object v7, p0, Lcom/waze/ifs/ui/CameraPreview$1;->this$0:Lcom/waze/ifs/ui/CameraPreview;

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mInfo:Landroid/hardware/Camera$CameraInfo;
    invoke-static {v7}, Lcom/waze/ifs/ui/CameraPreview;->access$12(Lcom/waze/ifs/ui/CameraPreview;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v7

    iget v7, v7, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v7, v1

    rem-int/lit16 v3, v7, 0x168

    .line 141
    .local v3, result:I
    rsub-int v7, v3, 0x168

    rem-int/lit16 v3, v7, 0x168

    .line 145
    :goto_2
    iget-object v7, p0, Lcom/waze/ifs/ui/CameraPreview$1;->this$0:Lcom/waze/ifs/ui/CameraPreview;

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v7}, Lcom/waze/ifs/ui/CameraPreview;->access$11(Lcom/waze/ifs/ui/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 147
    iget-object v7, p0, Lcom/waze/ifs/ui/CameraPreview$1;->this$0:Lcom/waze/ifs/ui/CameraPreview;

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v7}, Lcom/waze/ifs/ui/CameraPreview;->access$11(Lcom/waze/ifs/ui/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 148
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #orient:I
    .end local v2           #parameters:Landroid/hardware/Camera$Parameters;
    .end local v3           #result:I
    .end local v4           #rotate:I
    .end local v5           #rotation:I
    .end local v6           #wm:Landroid/view/WindowManager;
    :catch_0
    move-exception v7

    goto :goto_0

    .line 127
    .restart local v0       #display:Landroid/view/Display;
    .restart local v1       #orient:I
    .restart local v2       #parameters:Landroid/hardware/Camera$Parameters;
    .restart local v4       #rotate:I
    .restart local v5       #rotation:I
    .restart local v6       #wm:Landroid/view/WindowManager;
    :cond_3
    if-ne v5, v9, :cond_4

    .line 128
    const/16 v1, 0x5a

    .line 129
    const/4 v4, 0x0

    .line 130
    goto :goto_1

    :cond_4
    const/4 v7, 0x2

    if-ne v5, v7, :cond_5

    .line 131
    const/16 v1, 0xb4

    .line 132
    const/16 v4, 0x10e

    .line 133
    goto :goto_1

    :cond_5
    const/4 v7, 0x3

    if-ne v5, v7, :cond_2

    .line 134
    const/16 v1, 0x10e

    .line 135
    const/16 v4, 0xb4

    goto :goto_1

    .line 143
    :cond_6
    iget-object v7, p0, Lcom/waze/ifs/ui/CameraPreview$1;->this$0:Lcom/waze/ifs/ui/CameraPreview;

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mInfo:Landroid/hardware/Camera$CameraInfo;
    invoke-static {v7}, Lcom/waze/ifs/ui/CameraPreview;->access$12(Lcom/waze/ifs/ui/CameraPreview;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v7

    iget v7, v7, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v7, v1

    add-int/lit16 v7, v7, 0x168

    rem-int/lit16 v3, v7, 0x168
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3       #result:I
    goto :goto_2
.end method
