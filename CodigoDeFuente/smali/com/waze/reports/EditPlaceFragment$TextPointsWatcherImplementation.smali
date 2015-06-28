.class final Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;
.super Ljava/lang/Object;
.source "EditPlaceFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/reports/EditPlaceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TextPointsWatcherImplementation"
.end annotation


# instance fields
.field private _orig:Ljava/lang/String;

.field private final _pts:I

.field private final _ptsView:Lcom/waze/ifs/ui/PointsView;

.field private _validator:Lcom/waze/reports/EditPlaceFragment$TextValidator;

.field final synthetic this$0:Lcom/waze/reports/EditPlaceFragment;


# direct methods
.method private constructor <init>(Lcom/waze/reports/EditPlaceFragment;Lcom/waze/ifs/ui/PointsView;ILcom/waze/reports/EditPlaceFragment$TextValidator;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "ptsView"
    .parameter "pts"
    .parameter "v"
    .parameter "originalText"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;->this$0:Lcom/waze/reports/EditPlaceFragment;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;->_validator:Lcom/waze/reports/EditPlaceFragment$TextValidator;

    .line 97
    iput-object p2, p0, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;->_ptsView:Lcom/waze/ifs/ui/PointsView;

    .line 98
    const/4 v0, 0x0

    .line 100
    .local v0, hidePoints:Z
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    const/4 v0, 0x1

    .line 104
    :cond_0
    iput p3, p0, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;->_pts:I

    .line 105
    iput-object p5, p0, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;->_orig:Ljava/lang/String;

    .line 106
    if-nez p5, :cond_1

    .line 107
    const-string v3, ""

    iput-object v3, p0, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;->_orig:Ljava/lang/String;

    .line 110
    :cond_1
    iput-object p4, p0, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;->_validator:Lcom/waze/reports/EditPlaceFragment$TextValidator;

    .line 111
    if-nez p4, :cond_3

    .line 112
    iget-object v3, p0, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;->_ptsView:Lcom/waze/ifs/ui/PointsView;

    invoke-virtual {v3, v1}, Lcom/waze/ifs/ui/PointsView;->setValid(Z)V

    .line 118
    :goto_0
    iget-object v3, p0, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;->_ptsView:Lcom/waze/ifs/ui/PointsView;

    invoke-virtual {v3, p3, v0}, Lcom/waze/ifs/ui/PointsView;->setPoints(IZ)V

    .line 119
    iget-object v3, p0, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;->_ptsView:Lcom/waze/ifs/ui/PointsView;

    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;->_orig:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v3, v2, v1, v2}, Lcom/waze/ifs/ui/PointsView;->setIsOn(ZZZ)V

    .line 120
    return-void

    .line 114
    :cond_3
    #getter for: Lcom/waze/reports/EditPlaceFragment;->mValidatedPointsViews:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/waze/reports/EditPlaceFragment;->access$3(Lcom/waze/reports/EditPlaceFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v3, p0, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;->_ptsView:Lcom/waze/ifs/ui/PointsView;

    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;->_orig:Ljava/lang/String;

    invoke-interface {p4, v4}, Lcom/waze/reports/EditPlaceFragment$TextValidator;->isTextValid(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/waze/ifs/ui/PointsView;->setValid(Z)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/waze/reports/EditPlaceFragment;Lcom/waze/ifs/ui/PointsView;ILcom/waze/reports/EditPlaceFragment$TextValidator;Ljava/lang/String;Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct/range {p0 .. p5}, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;-><init>(Lcom/waze/reports/EditPlaceFragment;Lcom/waze/ifs/ui/PointsView;ILcom/waze/reports/EditPlaceFragment$TextValidator;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .parameter "s"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 130
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;->_ptsView:Lcom/waze/ifs/ui/PointsView;

    invoke-virtual {v5}, Lcom/waze/ifs/ui/PointsView;->isOn()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 131
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I
    invoke-static {v5}, Lcom/waze/reports/EditPlaceFragment;->access$4(Lcom/waze/reports/EditPlaceFragment;)I

    move-result v6

    iget v7, p0, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;->_pts:I

    sub-int/2addr v6, v7

    #setter for: Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I
    invoke-static {v5, v6}, Lcom/waze/reports/EditPlaceFragment;->access$5(Lcom/waze/reports/EditPlaceFragment;I)V

    .line 134
    :cond_0
    const/4 v2, 0x1

    .line 135
    .local v2, isValid:Z
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;->_validator:Lcom/waze/reports/EditPlaceFragment$TextValidator;

    if-eqz v5, :cond_1

    .line 136
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;->_validator:Lcom/waze/reports/EditPlaceFragment$TextValidator;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/waze/reports/EditPlaceFragment$TextValidator;->isTextValid(Ljava/lang/String;)Z

    move-result v2

    .line 137
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;->_ptsView:Lcom/waze/ifs/ui/PointsView;

    invoke-virtual {v5, v2}, Lcom/waze/ifs/ui/PointsView;->setValid(Z)V

    .line 140
    :cond_1
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;->_orig:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v3, v1

    .line 141
    .local v3, wasEdited:Z
    :goto_0
    if-eqz v3, :cond_2

    .line 142
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #calls: Lcom/waze/reports/EditPlaceFragment;->onEdit()V
    invoke-static {v5}, Lcom/waze/reports/EditPlaceFragment;->access$6(Lcom/waze/reports/EditPlaceFragment;)V

    .line 145
    :cond_2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    if-lez v5, :cond_6

    move v0, v4

    .line 147
    .local v0, hasContent:Z
    :goto_1
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    move v1, v4

    .line 148
    .local v1, isOn:Z
    :cond_3
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;->_ptsView:Lcom/waze/ifs/ui/PointsView;

    invoke-virtual {v5, v1, v0, v4}, Lcom/waze/ifs/ui/PointsView;->setIsOn(ZZZ)V

    .line 150
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I
    invoke-static {v4}, Lcom/waze/reports/EditPlaceFragment;->access$4(Lcom/waze/reports/EditPlaceFragment;)I

    move-result v5

    iget v6, p0, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;->_pts:I

    add-int/2addr v5, v6

    #setter for: Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I
    invoke-static {v4, v5}, Lcom/waze/reports/EditPlaceFragment;->access$5(Lcom/waze/reports/EditPlaceFragment;I)V

    .line 151
    :cond_4
    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;->this$0:Lcom/waze/reports/EditPlaceFragment;

    invoke-virtual {v4}, Lcom/waze/reports/EditPlaceFragment;->updatePoints()V

    .line 152
    return-void

    .end local v0           #hasContent:Z
    .end local v1           #isOn:Z
    .end local v3           #wasEdited:Z
    :cond_5
    move v3, v4

    .line 140
    goto :goto_0

    .restart local v3       #wasEdited:Z
    :cond_6
    move v0, v1

    .line 145
    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 126
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 123
    return-void
.end method
