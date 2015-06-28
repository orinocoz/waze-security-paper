.class Lcom/waze/PhoneList$4;
.super Ljava/lang/Object;
.source "PhoneList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/PhoneList;->InitTab1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/PhoneList;


# direct methods
.method constructor <init>(Lcom/waze/PhoneList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/PhoneList$4;->this$0:Lcom/waze/PhoneList;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 15
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/waze/PhoneList$4;->this$0:Lcom/waze/PhoneList;

    #getter for: Lcom/waze/PhoneList;->bIsSearch:Z
    invoke-static {v2}, Lcom/waze/PhoneList;->access$0(Lcom/waze/PhoneList;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    iget-object v2, p0, Lcom/waze/PhoneList$4;->this$0:Lcom/waze/PhoneList;

    #getter for: Lcom/waze/PhoneList;->nlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/waze/PhoneList;->access$1(Lcom/waze/PhoneList;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 102
    .local v13, sName:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/waze/PhoneList$4;->this$0:Lcom/waze/PhoneList;

    invoke-virtual {v2}, Lcom/waze/PhoneList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 103
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DISPLAY_NAME = \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 103
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 105
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, contactId:Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "contact_id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 111
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 114
    .local v12, phones:Landroid/database/Cursor;
    const/4 v2, 0x4

    new-array v10, v2, [Ljava/lang/String;

    .line 115
    .local v10, number:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 116
    .local v9, i:I
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 136
    new-instance v11, Lcom/waze/PhoneList$4$1;

    invoke-direct {v11, p0}, Lcom/waze/PhoneList$4$1;-><init>(Lcom/waze/PhoneList$4;)V

    .line 153
    .local v11, onClick:Landroid/content/DialogInterface$OnClickListener;
    const/4 v2, 0x1

    if-le v9, v2, :cond_0

    .line 155
    invoke-static {}, Lcom/waze/MsgBox;->getInstance()Lcom/waze/MsgBox;

    move-result-object v2

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_CHOOSE_A_NUMBER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v10, v4

    const/4 v5, 0x1

    aget-object v5, v10, v5

    invoke-virtual {v2, v3, v4, v5, v11}, Lcom/waze/MsgBox;->OpenChooseNumberDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 161
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 163
    .end local v7           #contactId:Ljava/lang/String;
    .end local v9           #i:I
    .end local v10           #number:[Ljava/lang/String;
    .end local v11           #onClick:Landroid/content/DialogInterface$OnClickListener;
    .end local v12           #phones:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 164
    return-void

    .line 96
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v13           #sName:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/waze/PhoneList$4;->this$0:Lcom/waze/PhoneList;

    #getter for: Lcom/waze/PhoneList;->nlistString:[Ljava/lang/String;
    invoke-static {v2}, Lcom/waze/PhoneList;->access$2(Lcom/waze/PhoneList;)[Ljava/lang/String;

    move-result-object v2

    aget-object v13, v2, p3

    .restart local v13       #sName:Ljava/lang/String;
    goto/16 :goto_0

    .line 117
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v7       #contactId:Ljava/lang/String;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v9       #i:I
    .restart local v10       #number:[Ljava/lang/String;
    .restart local v12       #phones:Landroid/database/Cursor;
    :cond_3
    const-string v2, "data1"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v9

    .line 118
    const-string v2, "data2"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 119
    .local v14, type:I
    packed-switch v14, :pswitch_data_0

    .line 133
    :pswitch_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
