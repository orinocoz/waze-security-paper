.class public Lcom/waze/ifs/ui/ActivityBase;
.super Landroid/app/Activity;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WAZE_ActivityBase"

.field public static final MOOD_SET:I = 0x4

.field public static final RESULT_CLOSE_PARENT:I = 0x3

.field private static mActivitiesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/ifs/ui/ActivityBase;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsScreenBacklightOn:Z


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private mActivityResultCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/ifs/ui/ActivityResultCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mAlive:Z

.field protected final mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

.field protected volatile mIsMainActivity:Z

.field final mMessenger:Landroid/os/Messenger;

.field private volatile mRunning:Z

.field private volatile mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/ifs/ui/ActivityBase;->mIsScreenBacklightOn:Z

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/waze/ifs/ui/ActivityBase;->mActivitiesList:Ljava/util/ArrayList;

    .line 370
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 361
    iput-boolean v0, p0, Lcom/waze/ifs/ui/ActivityBase;->mRunning:Z

    .line 362
    iput-boolean v0, p0, Lcom/waze/ifs/ui/ActivityBase;->mVisible:Z

    .line 363
    iput-boolean v0, p0, Lcom/waze/ifs/ui/ActivityBase;->mAlive:Z

    .line 364
    iput-boolean v0, p0, Lcom/waze/ifs/ui/ActivityBase;->mIsMainActivity:Z

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/ifs/ui/ActivityBase;->mActivityResultCallbacks:Ljava/util/ArrayList;

    .line 372
    new-instance v0, Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-direct {v0, p0}, Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;-><init>(Lcom/waze/ifs/ui/ActivityBase;)V

    iput-object v0, p0, Lcom/waze/ifs/ui/ActivityBase;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    .line 373
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/waze/ifs/ui/ActivityBase;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/waze/ifs/ui/ActivityBase;->mMessenger:Landroid/os/Messenger;

    .line 39
    return-void
.end method

.method public static closeAllActivities()V
    .locals 5

    .prologue
    .line 191
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/waze/ifs/ui/ActivityBase;->mActivitiesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 208
    return-void

    .line 193
    :cond_0
    sget-object v2, Lcom/waze/ifs/ui/ActivityBase;->mActivitiesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/ifs/ui/ActivityBase;

    .line 194
    .local v0, activity:Lcom/waze/ifs/ui/ActivityBase;
    if-eqz v0, :cond_2

    iget-boolean v2, v0, Lcom/waze/ifs/ui/ActivityBase;->mIsMainActivity:Z

    if-nez v2, :cond_2

    .line 196
    const-string v2, "WAZE_ActivityBase"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Finishing activity:  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {v0}, Lcom/waze/ifs/ui/ActivityBase;->finish()V

    .line 191
    .end local v0           #activity:Lcom/waze/ifs/ui/ActivityBase;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .restart local v0       #activity:Lcom/waze/ifs/ui/ActivityBase;
    :cond_2
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/waze/ifs/ui/ActivityBase;->mIsMainActivity:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 201
    check-cast v2, Lcom/waze/MainActivity;

    invoke-virtual {v2}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/LayoutManager;->getMainMenu()Lcom/waze/menus/MainMenu;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 203
    check-cast v0, Lcom/waze/MainActivity;

    .end local v0           #activity:Lcom/waze/ifs/ui/ActivityBase;
    invoke-virtual {v0}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/LayoutManager;->getMainMenu()Lcom/waze/menus/MainMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/menus/MainMenu;->dismiss()V

    goto :goto_1
.end method

.method public static finishAll()V
    .locals 5

    .prologue
    .line 177
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/waze/ifs/ui/ActivityBase;->mActivitiesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 186
    return-void

    .line 179
    :cond_0
    sget-object v2, Lcom/waze/ifs/ui/ActivityBase;->mActivitiesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/ifs/ui/ActivityBase;

    .line 180
    .local v0, activity:Lcom/waze/ifs/ui/ActivityBase;
    if-eqz v0, :cond_1

    .line 182
    const-string v2, "WAZE_ActivityBase"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Finishing activity:  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v0}, Lcom/waze/ifs/ui/ActivityBase;->finish()V

    .line 177
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getCount()I
    .locals 4

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v3, Lcom/waze/ifs/ui/ActivityBase;->mActivitiesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 171
    return v1

    .line 167
    :cond_0
    sget-object v3, Lcom/waze/ifs/ui/ActivityBase;->mActivitiesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/ifs/ui/ActivityBase;

    .line 168
    .local v0, activity:Lcom/waze/ifs/ui/ActivityBase;
    if-eqz v0, :cond_1

    .line 169
    add-int/lit8 v1, v1, 0x1

    .line 165
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getRunningCount()I
    .locals 4

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v3, Lcom/waze/ifs/ui/ActivityBase;->mActivitiesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 159
    return v1

    .line 155
    :cond_0
    sget-object v3, Lcom/waze/ifs/ui/ActivityBase;->mActivitiesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/ifs/ui/ActivityBase;

    .line 156
    .local v0, activity:Lcom/waze/ifs/ui/ActivityBase;
    invoke-virtual {v0}, Lcom/waze/ifs/ui/ActivityBase;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    add-int/lit8 v1, v1, 0x1

    .line 153
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getSingleRunningActivity()Lcom/waze/ifs/ui/ActivityBase;
    .locals 5

    .prologue
    .line 343
    const/4 v1, 0x0

    .line 344
    .local v1, count:I
    const/4 v3, 0x0

    .line 345
    .local v3, retActivity:Lcom/waze/ifs/ui/ActivityBase;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v4, Lcom/waze/ifs/ui/ActivityBase;->mActivitiesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 352
    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 355
    .end local v3           #retActivity:Lcom/waze/ifs/ui/ActivityBase;
    :goto_1
    return-object v3

    .line 346
    .restart local v3       #retActivity:Lcom/waze/ifs/ui/ActivityBase;
    :cond_0
    sget-object v4, Lcom/waze/ifs/ui/ActivityBase;->mActivitiesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/ifs/ui/ActivityBase;

    .line 347
    .local v0, activity:Lcom/waze/ifs/ui/ActivityBase;
    invoke-virtual {v0}, Lcom/waze/ifs/ui/ActivityBase;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 348
    add-int/lit8 v1, v1, 0x1

    .line 349
    move-object v3, v0

    .line 345
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    .end local v0           #activity:Lcom/waze/ifs/ui/ActivityBase;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getVisibleCount()I
    .locals 4

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 142
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v3, Lcom/waze/ifs/ui/ActivityBase;->mActivitiesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 148
    return v1

    .line 144
    :cond_0
    sget-object v3, Lcom/waze/ifs/ui/ActivityBase;->mActivitiesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/ifs/ui/ActivityBase;

    .line 145
    .local v0, activity:Lcom/waze/ifs/ui/ActivityBase;
    invoke-virtual {v0}, Lcom/waze/ifs/ui/ActivityBase;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    add-int/lit8 v1, v1, 0x1

    .line 142
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static sendMessageToActive(IIILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "category"
    .parameter "action"
    .parameter "info"

    .prologue
    .line 398
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    .line 399
    .local v0, activeActivity:Lcom/waze/ifs/ui/ActivityBase;
    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->sendMessage(IIILjava/lang/Object;)V

    .line 402
    :cond_0
    return-void
.end method

.method public static setGlobalOrientation(I)V
    .locals 3
    .parameter "new_orientation"

    .prologue
    .line 132
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/waze/ifs/ui/ActivityBase;->mActivitiesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 137
    return-void

    .line 134
    :cond_0
    sget-object v2, Lcom/waze/ifs/ui/ActivityBase;->mActivitiesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/ifs/ui/ActivityBase;

    .line 135
    .local v0, activity:Lcom/waze/ifs/ui/ActivityBase;
    invoke-virtual {v0, p0}, Lcom/waze/ifs/ui/ActivityBase;->setRequestedOrientation(I)V

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static setScreenBacklightOn(Z)V
    .locals 4
    .parameter "isOn"

    .prologue
    const/16 v3, 0x80

    .line 296
    sput-boolean p0, Lcom/waze/ifs/ui/ActivityBase;->mIsScreenBacklightOn:Z

    .line 297
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/waze/ifs/ui/ActivityBase;->mActivitiesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 308
    return-void

    .line 299
    :cond_0
    sget-object v2, Lcom/waze/ifs/ui/ActivityBase;->mActivitiesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/ifs/ui/ActivityBase;

    .line 300
    .local v0, activity:Lcom/waze/ifs/ui/ActivityBase;
    invoke-virtual {v0}, Lcom/waze/ifs/ui/ActivityBase;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    if-eqz p0, :cond_2

    .line 303
    invoke-virtual {v0}, Lcom/waze/ifs/ui/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 297
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    :cond_2
    invoke-virtual {v0}, Lcom/waze/ifs/ui/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1
.end method

.method public static setScreenState(Z)V
    .locals 0
    .parameter "screenOn"

    .prologue
    .line 117
    if-nez p0, :cond_0

    .line 123
    invoke-static {}, Lcom/waze/ifs/ui/ActivityLifetimeHandler;->screenOffHandler()V

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method public IsSeeCloseFriends(Z)V
    .locals 0
    .parameter "bIsSeeCloseFriends"

    .prologue
    .line 324
    return-void
.end method

.method public IsSeeFof(Z)V
    .locals 0
    .parameter "bIsSeeFof"

    .prologue
    .line 318
    return-void
.end method

.method public SetMyWazeData(Lcom/waze/mywaze/MyWazeData;)V
    .locals 0
    .parameter "Data"

    .prologue
    .line 313
    return-void
.end method

.method public addActivityResultCallback(Lcom/waze/ifs/ui/ActivityResultCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 328
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/waze/ifs/ui/ActivityBase;->mActivityResultCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/waze/ifs/ui/ActivityBase;->mActivityResultCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public cancel(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/waze/ifs/ui/ActivityBase;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, p1}, Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 418
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/waze/ifs/ui/ActivityBase;->mAlive:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/waze/ifs/ui/ActivityBase;->mRunning:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/waze/ifs/ui/ActivityBase;->mVisible:Z

    return v0
.end method

.method protected myHandleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 275
    const/4 v1, 0x0

    .line 280
    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/waze/ifs/ui/ActivityBase;->mActivityResultCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 286
    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    .line 288
    invoke-virtual {p0, p2}, Lcom/waze/ifs/ui/ActivityBase;->setResult(I)V

    .line 289
    invoke-virtual {p0}, Lcom/waze/ifs/ui/ActivityBase;->finish()V

    .line 291
    :cond_0
    return-void

    .line 282
    :cond_1
    iget-object v2, p0, Lcom/waze/ifs/ui/ActivityBase;->mActivityResultCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/ifs/ui/ActivityResultCallback;

    .line 283
    .local v0, cb:Lcom/waze/ifs/ui/ActivityResultCallback;
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityResultCallback;->onActivitResult(Lcom/waze/ifs/ui/ActivityBase;IILandroid/content/Intent;)V

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/ifs/ui/ActivityBase;->mAlive:Z

    .line 49
    sget-object v0, Lcom/waze/ifs/ui/ActivityBase;->mActivitiesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/waze/ifs/ui/ActivityBase;->setVolumeControlStream(I)V

    .line 54
    sget-boolean v0, Lcom/waze/ifs/ui/ActivityBase;->mIsScreenBacklightOn:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/waze/ifs/ui/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 56
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/ifs/ui/ActivityBase;->mAlive:Z

    .line 87
    sget-object v0, Lcom/waze/ifs/ui/ActivityBase;->mActivitiesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {p0}, Lcom/waze/ifs/ui/ActivityBase;->removeDialogs()V

    .line 89
    invoke-static {}, Lcom/waze/ifs/ui/ActivityLifetimeHandler;->destroyHandler()V

    .line 90
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/ifs/ui/ActivityBase;->mRunning:Z

    .line 75
    invoke-virtual {p0}, Lcom/waze/ifs/ui/ActivityBase;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waze/ifs/ui/ActivityBase;->mActivitiesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 77
    invoke-static {}, Lcom/waze/ifs/ui/ActivityLifetimeHandler;->stopHandler()V

    .line 79
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 62
    invoke-static {p0}, Lcom/waze/AppService;->setActiveActivity(Lcom/waze/ifs/ui/ActivityBase;)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/ifs/ui/ActivityBase;->mRunning:Z

    .line 67
    invoke-virtual {p0}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/Settings;->publishInstallAsync(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Request$Callback;)V

    .line 68
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 97
    iput-boolean v1, p0, Lcom/waze/ifs/ui/ActivityBase;->mVisible:Z

    .line 98
    invoke-static {}, Lcom/waze/ifs/ui/ActivityBase;->getVisibleCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 100
    invoke-static {p0}, Lcom/waze/ifs/ui/ActivityLifetimeHandler;->startHandler(Landroid/app/Activity;)V

    .line 102
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/ifs/ui/ActivityBase;->mVisible:Z

    .line 109
    invoke-static {}, Lcom/waze/ifs/ui/ActivityBase;->getVisibleCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Lcom/waze/ifs/ui/ActivityLifetimeHandler;->stopHandler()V

    .line 113
    :cond_0
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/waze/ifs/ui/ActivityBase;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, p1}, Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;->post(Ljava/lang/Runnable;)Z

    .line 414
    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "r"
    .parameter "delayMillis"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/waze/ifs/ui/ActivityBase;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 410
    return-void
.end method

.method public removeActivityResultCallback(Lcom/waze/ifs/ui/ActivityResultCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 336
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/waze/ifs/ui/ActivityBase;->mActivityResultCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/waze/ifs/ui/ActivityBase;->mActivityResultCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeDialogs()V
    .locals 4

    .prologue
    .line 224
    iget-object v1, p0, Lcom/waze/ifs/ui/ActivityBase;->dialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/waze/ifs/ui/ActivityBase;->dialog:Landroid/app/Dialog;

    const v2, 0x7f09022c

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 226
    .local v0, textView:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 227
    const-string v1, "WAZE_ActivityBase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removing dialog: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/waze/ifs/ui/ActivityBase;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Confirm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :goto_0
    iget-object v1, p0, Lcom/waze/ifs/ui/ActivityBase;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 233
    .end local v0           #textView:Landroid/widget/TextView;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/ifs/ui/ActivityBase;->dialog:Landroid/app/Dialog;

    .line 234
    return-void

    .line 229
    .restart local v0       #textView:Landroid/widget/TextView;
    :cond_1
    const-string v1, "WAZE_ActivityBase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removing dialog: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/waze/ifs/ui/ActivityBase;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nothing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMessage(IIILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "category"
    .parameter "action"
    .parameter "info"

    .prologue
    .line 390
    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 391
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/waze/ifs/ui/ActivityBase;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v1, v0}, Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 392
    return-void
.end method

.method protected sendMessageToMyself(IIILjava/lang/Object;J)V
    .locals 2
    .parameter "what"
    .parameter "category"
    .parameter "action"
    .parameter "info"
    .parameter "delay"

    .prologue
    .line 381
    iget-object v1, p0, Lcom/waze/ifs/ui/ActivityBase;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 382
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/waze/ifs/ui/ActivityBase;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 383
    iget-object v1, p0, Lcom/waze/ifs/ui/ActivityBase;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v1, v0, p5, p6}, Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 384
    return-void
.end method

.method public setDialog(Landroid/app/Dialog;)V
    .locals 0
    .parameter "dialog2"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/waze/ifs/ui/ActivityBase;->dialog:Landroid/app/Dialog;

    .line 237
    return-void
.end method

.method public startNativeOptionActivity(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/waze/navigate/AddressItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/waze/navigate/AddressItem;Ljava/lang/String;)V
    .locals 25
    .parameter "title"
    .parameter "addtionalText"
    .parameter "lat"
    .parameter "lon"
    .parameter "infoUrl"
    .parameter "specialUrl"
    .parameter "calendarAI"
    .parameter "country"
    .parameter "state"
    .parameter "city"
    .parameter "street"
    .parameter "house"
    .parameter "sharedAI"
    .parameter "venueId"

    .prologue
    .line 240
    new-instance v2, Lcom/waze/navigate/AddressItem;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v5, 0x63

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v16, 0x0

    .line 241
    const/16 v23, 0x0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v17, p14

    move-object/from16 v18, p8

    move-object/from16 v19, p9

    move-object/from16 v20, p10

    move-object/from16 v21, p11

    move-object/from16 v22, p12

    .line 240
    invoke-direct/range {v2 .. v23}, Lcom/waze/navigate/AddressItem;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/waze/reports/VenueData;)V

    .line 242
    .local v2, ai:Lcom/waze/navigate/AddressItem;
    if-eqz p7, :cond_0

    .line 243
    invoke-virtual/range {p7 .. p7}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/navigate/AddressItem;->setMeetingId(Ljava/lang/String;)V

    .line 244
    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/navigate/AddressItem;->setCategory(Ljava/lang/Integer;)V

    .line 245
    invoke-virtual/range {p7 .. p7}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/navigate/AddressItem;->setTitle(Ljava/lang/String;)V

    .line 246
    const/16 v24, 0x0

    .line 247
    .local v24, intent:Landroid/content/Intent;
    new-instance v24, Landroid/content/Intent;

    .end local v24           #intent:Landroid/content/Intent;
    const-class v3, Lcom/waze/navigate/AddressPreviewActivity;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    .restart local v24       #intent:Landroid/content/Intent;
    const-string v3, "AddressItem"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 249
    const-string v3, "CalendarAddressItem"

    move-object/from16 v0, v24

    move-object/from16 v1, p7

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 251
    const-string v3, "ActionButton"

    .line 252
    const/4 v4, 0x1

    .line 251
    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    const-string v3, "ClearAdsContext"

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 254
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Lcom/waze/ifs/ui/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 272
    :goto_0
    return-void

    .line 257
    .end local v24           #intent:Landroid/content/Intent;
    :cond_0
    if-eqz p13, :cond_1

    .line 258
    move-object/from16 v2, p13

    .line 259
    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getCategory()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1

    const/16 v3, 0x63

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/navigate/AddressItem;->setCategory(Ljava/lang/Integer;)V

    .line 262
    :cond_1
    const/16 v24, 0x0

    .line 263
    .restart local v24       #intent:Landroid/content/Intent;
    new-instance v24, Landroid/content/Intent;

    .end local v24           #intent:Landroid/content/Intent;
    const-class v3, Lcom/waze/navigate/AddressPreviewActivity;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .restart local v24       #intent:Landroid/content/Intent;
    const-string v3, "AddressItem"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 265
    iget-object v3, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 266
    const-string v3, "preview_load_venue"

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    :cond_2
    const-string v3, "ActionButton"

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    const v3, 0x800a

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Lcom/waze/ifs/ui/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
