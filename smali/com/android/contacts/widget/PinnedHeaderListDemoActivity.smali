.class public Lcom/android/contacts/widget/PinnedHeaderListDemoActivity;
.super Landroid/app/ListActivity;
.source "PinnedHeaderListDemoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private makeCursor(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 137
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 138
    .local v0, "cursor":Landroid/database/MatrixCursor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 139
    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v10, 0x7f04006d

    invoke-virtual {p0, v10}, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity;->setContentView(I)V

    .line 104
    new-instance v0, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;

    invoke-direct {v0, p0}, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;-><init>(Landroid/content/Context;)V

    .line 106
    .local v0, "adapter":Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;
    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 107
    .local v4, "extras":Landroid/os/Bundle;
    const-string v10, "counts"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 108
    .local v1, "counts":[I
    const-string v10, "names"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, "names":[Ljava/lang/String;
    const-string v10, "showIfEmpty"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v9

    .line 110
    .local v9, "showIfEmpty":[Z
    const-string v10, "headers"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v5

    .line 111
    .local v5, "hasHeader":[Z
    const-string v10, "delays"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 113
    .local v3, "delays":[I
    if-eqz v1, :cond_0

    if-eqz v7, :cond_0

    if-eqz v9, :cond_0

    if-nez v3, :cond_1

    .line 114
    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Missing required extras"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 117
    :cond_1
    invoke-virtual {v0, v7}, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;->setHeaders([Ljava/lang/String;)V

    .line 118
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v10, v1

    if-ge v6, v10, :cond_3

    .line 119
    aget-boolean v11, v9, v6

    aget-object v10, v7, v6

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v0, v11, v10}, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;->addPartition(ZZ)V

    .line 120
    array-length v10, v7

    # setter for: Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;->mPinnedHeaderCount:I
    invoke-static {v0, v10}, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;->access$002(Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;I)I

    .line 118
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 119
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 122
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    const/4 v6, 0x0

    :goto_2
    array-length v10, v1

    if-ge v6, v10, :cond_4

    .line 124
    move v8, v6

    .line 125
    .local v8, "sectionId":I
    aget-object v10, v7, v6

    aget v11, v1, v6

    invoke-direct {p0, v10, v11}, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity;->makeCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    .line 126
    .local v2, "cursor":Landroid/database/Cursor;
    iget-object v10, p0, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$1;

    invoke-direct {v11, p0, v0, v8, v2}, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$1;-><init>(Lcom/android/contacts/widget/PinnedHeaderListDemoActivity;Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;ILandroid/database/Cursor;)V

    aget v12, v3, v6

    int-to-long v12, v12

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 134
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v8    # "sectionId":I
    :cond_4
    return-void
.end method
